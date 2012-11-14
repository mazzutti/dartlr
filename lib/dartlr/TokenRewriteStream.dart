part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Useful for dumping out the input stream after doing some
 *  augmentation or other manipulations.
 *
 *  You can insert stuff, replace, and delete chunks.  Note that the
 *  operations are done lazily--only if you convert the buffer to a
 *  String.  This is very efficient because you are not moving data around
 *  all the time.  As the buffer of tokens is converted to strings, the
 *  toString() method(s) check to see if there is an operation at the
 *  current index.  If so, the operation is done and then normal String
 *  rendering continues on the buffer.  This is like having multiple Turing
 *  machine instruction streams (programs) operating on a single input tape. :)
 *
 *  Since the operations are done lazily at toString-time, operations do not
 *  screw up the token index values.  That is, an insert operation at token
 *  index i does not change the index values for tokens i+1..n-1.
 *
 *  Because operations never actually alter the buffer, you may always get
 *  the original token stream back without undoing anything.  Since
 *  the instructions are queued up, you can easily simulate transactions and
 *  roll back any changes if there is an error just by removing instructions.
 *  For example,
 *
 *   CharStream input = new ANTLRFileStream("input");
 *   TLexer lex = new TLexer(input);
 *   TokenRewriteStream tokens = new TokenRewriteStream(lex);
 *   T parser = new T(tokens);
 *   parser.startRule();
 *
 *   Then in the rules, you can execute
 *    Token t,u;
 *      ...
 *    input.insertAfter(t, "text to put after t");}
 *    input.insertAfter(u, "text after u");}
 *    print(tokens.toString());
 *
 *  Actually, you have to cast the 'input' to a TokenRewriteStream. :(
 *
 *  You can also have multiple "instruction streams" and get multiple
 *  rewrites from a single pass over the input.  Just name the instruction
 *  streams and use that name again when printing the buffer.  This could be
 *  useful for generating a C file and also its header file--all from the
 *  same buffer:
 *
 *      tokens.insertAfter("pass1", t, "text to put after t");}
 *    tokens.insertAfter("pass2", u, "text after u");}
 *    print(tokens.toString("pass1"));
 *    print(tokens.toString("pass2"));
 *
 *  If you don't use named rewrite streams, a "default" stream is used as
 *  the first example shows.
 */
class TokenRewriteStream extends CommonTokenStream {
  
  static const String DEFAULT_PROGRAM_NAME = "default";
  static const int PROGRAM_INIT_SIZE = 100;
  static const int MIN_TOKEN_INDEX = 0;

  Map _programs = null;
  Map _lastRewriteTokenIndexes = null;
  
  TokenRewriteStream([TokenSource tokenSource, 
       int channel]) : super.withChannel(tokenSource, channel) {
    this._init();
  }

  void _init() {
    this._programs = new HashMap();
    this._programs[DEFAULT_PROGRAM_NAME] =  new List();
    this._lastRewriteTokenIndexes = new HashMap();
  }


  void rollback(int instructionIndex, [String programName = DEFAULT_PROGRAM_NAME]) {
    List instructions = this._programs[programName];
    if (instructions != null)
      this._programs[programName] = 
         instructions.getRange(MIN_TOKEN_INDEX, instructionIndex - MIN_TOKEN_INDEX);    
  }

  void deleteProgram([String programName = DEFAULT_PROGRAM_NAME]) {
    this.rollback(MIN_TOKEN_INDEX, programName);
  }

  void insertAfter( d, Object text, [String programName = DEFAULT_PROGRAM_NAME]) {
    int index = (d is Token) ? d.tokenIndex : d;
    insertBefore(index + 1, text, programName);
  }

  void insertBefore( d , Object text, [String programName = DEFAULT_PROGRAM_NAME]) {
    int  index = (d is Token) ? d.tokenIndex : d;   
    _RewriteOperation op = new _InsertBeforeOp(this._tokens, index, text);
    List rewrites = this._getProgram(programName);
    op.instructionIndex = rewrites.length;
    rewrites.add(op);   
  }

  void replace( d1, Object text, [ d2 , String programName = DEFAULT_PROGRAM_NAME]) {
    int to, from = ((d1 is Token) ? d1.tokenIndex : d1);
    if(d2 == null) 
      to = from;
    else 
      to = (d2 is Token) ? d2.tokenIndex : d2;    
    if (from > to || from < 0 || to < 0 || to >= this._tokens.length)
      throw new IllegalArgumentException("replace: "
        "range invalid: $from..$to(size=${this._tokens.length})");
    _RewriteOperation op = new _ReplaceOp(this._tokens, from, to, text);
    List rewrites = this._getProgram(programName);
    op.instructionIndex = rewrites.length;
    rewrites.add(op);
  }

  void delete( d1, [ d2, String programName = DEFAULT_PROGRAM_NAME]) {    
    int to, from = (d1 is Token) ? d1.tokenIndex : d1;
    if(d2 == null) to = from;
    else to = (d2 is Token) ? d2.tokenIndex : d2;
    this.replace(from, null, to, programName);
  }

  int get lastRewriteTokenIndex => this._getLastRewriteTokenIndex(DEFAULT_PROGRAM_NAME);
  

  int _getLastRewriteTokenIndex(String programName) => this._lastRewriteTokenIndexes[programName];

  void setLastRewriteTokenIndex(String programName, int i) {
    this._lastRewriteTokenIndexes[programName] = i;
  }

  List _getProgram(String name) {
    List si = this._programs[name];
    if (si == null)
      si = this._initializeProgram(name); 
    return si;
  }

  List _initializeProgram(String name) {
    List si = new List(PROGRAM_INIT_SIZE);
    this._programs[name] = si;
    return si;
  } 

  String toOriginalString([int start = MIN_TOKEN_INDEX , int end = -1]) {
    this.fill();
    if(end == -1) end = this.size - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i >= MIN_TOKEN_INDEX && i <= end && i < this._tokens.length; i++)
      if (this.at(i).type != Token.EOF ) 
        buf.add(this.at(i).text);
    return buf.toString();
  }  

  String toString([int start = MIN_TOKEN_INDEX , 
      int end = -1 , String programName = DEFAULT_PROGRAM_NAME]) {
    this.fill();
    if(end == -1) end = this.size - 1;       
    List rewrites = this._programs[programName];
    if (end > this._tokens.length - 1) end = this._tokens.length - 1;
    if (start < 0) start = 0;
    if (rewrites == null || rewrites.length == 0)
      return toOriginalString(start,end);
    StringBuffer buf = new StringBuffer();
    Map indexToOp = this._reduceToSingleOperationPerIndex(rewrites);   
    int i = start;
    while (i <= end && i < this._tokens.length) {
      _RewriteOperation op = indexToOp[i];
      indexToOp.remove(i);
      Token t = this._tokens[i];
      if (op == null) {
        if (t.type != Token.EOF)          
          buf.add(t.text);
        i++;
      }
      else
        i = op.execute(buf);
    }    
    if (end == this._tokens.length - 1) {
      Iterator it = indexToOp.getValues().iterator();
      while (it.hasNext()) {
        _RewriteOperation op = it.next();
        if (op.index >= this._tokens.length - 1)          
          buf.add(op.text);
      }
    }
    return buf.toString();
  }


  Map _reduceToSingleOperationPerIndex(List rewrites) {
    for (int i = 0; i < rewrites.length; i++) {
      _RewriteOperation op = rewrites[i];
      if (op == null) continue;
      if (!(op is _ReplaceOp)) continue;
      _ReplaceOp rop = rewrites[i];
      List inserts = this._getKindOfOps(rewrites, "_InsertBeforeOp", i);
      for (int j = 0; j < inserts.length; j++) {
        _InsertBeforeOp iop = inserts[j];
        if (iop.index == rop.index ) {          
          rewrites[iop.instructionIndex] = null;
          rop.text = '${iop.text.toString()}'
                     '${(rop.text != null ? rop.text.toString() : "")}';
        } else if (iop.index > rop.index && iop.index <= rop.lastIndex )
          rewrites[iop.instructionIndex] = null;       
      }
      List prevReplaces = this._getKindOfOps(rewrites, "_ReplaceOp", i);
      for (int j = 0; j < prevReplaces.length; j++) {
        _ReplaceOp prevRop = prevReplaces[j];
        if (prevRop.index >= rop.index && prevRop.lastIndex <= rop.lastIndex ) {
          rewrites[prevRop.instructionIndex] =  null;
          continue;
        }
        bool disjoint = prevRop.lastIndex < rop.index || prevRop.index > rop.lastIndex;
        bool same = prevRop.index == rop.index && prevRop.lastIndex == rop.lastIndex;
        if (prevRop.text == null && rop.text == null && !disjoint) {
          rewrites[prevRop.instructionIndex] =  null;
          rop.index = min(prevRop.index, rop.index);
          rop.lastIndex = max(prevRop.lastIndex, rop.lastIndex);
        }
        else if (!disjoint && !same)
          throw new IllegalArgumentException("replace op "
            "boundaries of $rop overlap with previous $prevRop");        
      }
    }
    for (int i = 0; i < rewrites.length; i++) {
      _RewriteOperation op = rewrites[i];
      if (op == null) continue;
      if (!(op is _InsertBeforeOp)) continue;
      _InsertBeforeOp iop = rewrites[i];
      List prevInserts = this._getKindOfOps(rewrites, "_InsertBeforeOp", i);
      for (int j = 0; j < prevInserts.length; j++) {
        _InsertBeforeOp prevIop = prevInserts[j];
        if (prevIop.index == iop.index) {
          iop.text = this._catOpText(iop.text,prevIop.text);
          rewrites[prevIop.instructionIndex] =  null;
        }
      }
      List prevReplaces = this._getKindOfOps(rewrites, "_ReplaceOp", i);
      for (int j = 0; j < prevReplaces.length; j++) {
        _ReplaceOp rop = prevReplaces[j];
        if (iop.index == rop.index) {
          rop.text = this._catOpText(iop.text, rop.text);
          rewrites[i] = null;
          continue;
        }
        if (iop.index >= rop.index && iop.index <= rop.lastIndex)
          throw new IllegalArgumentException("insert "
            "op $iop within boundaries of previous $rop");
      }
    }
    Map m = new HashMap();
    for (int i = 0; i < rewrites.length; i++) {
      _RewriteOperation op = rewrites[i];
      if (op == null) continue;
      if (m[op.index] != null)
        throw new Exception("should only be one op per index");
      m[op.index] = op;
    }
    return m;
}

  String _catOpText(Object a, Object b) {
    String x = "", y = "";
    if (a != null) x = a.toString();
    if (b != null) y = b.toString();
    return "$x$y";
  }
  
  List _getKindOfOps(List rewrites, String kind, [int before = -1]) {
    if(before == -1) before = rewrites.length;
    List ops = new List();
    for (int i = 0; i < before && i < rewrites.length; i++) {
      _RewriteOperation op = rewrites[i];
      if (op == null) continue;
      if (op.className == kind) ops.add(op);
    }   
    return ops;
  }

  String toDebugString([int start = MIN_TOKEN_INDEX , int end = -1]) {
    if(end == -1) end = this.size - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i >= MIN_TOKEN_INDEX && i <= end && i < this._tokens.length; i++) {
      buf.add(this.at(i));
    }
    return buf.toString();
  }
  
}

class _RewriteOperation {
  
  List<Token> _tokens;
  int _instructionIndex;
  int _index;
  Object _text;

  _RewriteOperation(this._tokens, this._index, [this._text]);
  
  int get instructionIndex => this._instructionIndex;
  
  int get index => this._index;
  
  void set index(int i) {
    this._index = i;
  }
  
  Object get text => this._text;
  
  String get className => "_RewriteOperation";
  
  void set text(Object o) {
    this._text = o;
  }
  
  void set instructionIndex(int iIndex) {
    this._instructionIndex = iIndex;
  }
  
  int execute(StringBuffer buf) => this._index;
  
  String toString() {
    String opName = "_RewriteOperation";
    int $index = opName.indexOf(r'$');
    opName = opName.substring($index+1, opName.length);
    return "<$opName@${this._tokens[this._index]}:'${this._text}'>";
  }
}

class _InsertBeforeOp extends _RewriteOperation {
  
  _InsertBeforeOp(List<Token> tokens, 
    int index, Object text) : super(tokens, index, text);
    
  @override String get className => "_InsertBeforeOp";
  
  int execute(StringBuffer buf) {    
    buf.add(this._text);
    if (this._tokens[this._index].type != Token.EOF)
      buf.add(this._tokens[this._index].text);
    return this._index + 1;
  }
}

class _ReplaceOp extends _RewriteOperation {
  
  int _lastIndex;
  
  _ReplaceOp(List<Token> tokens, int from, 
    this._lastIndex, Object text) : super(tokens, from, text);
  
  int get lastIndex => this._lastIndex;
  
  @override String get className => "_ReplaceOp";
  
  void set lastIndex(int li) {
    this._lastIndex = li;
  }
  
  int execute(StringBuffer buf) {
    if (this._text != null)     
      buf.add(this._text);  
    return this._lastIndex + 1;
  }
  
  String toString() {
    if (this._text == null)
      return "<_DeleteOp@${this._tokens[this._index]}.."
                        "${this._tokens[this._lastIndex]}>";
    return "<_ReplaceOp@${this._tokens[this._index]}.."
        "${this._tokens[this._lastIndex]}:'${this._text}'>";
  }
}


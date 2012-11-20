// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
    _init();
  }

  void _init() {
    _programs = new HashMap();
    _programs[DEFAULT_PROGRAM_NAME] =  new List();
    _lastRewriteTokenIndexes = new HashMap();
  }


  void rollback(int instructionIndex, [String programName = DEFAULT_PROGRAM_NAME]) {
    List instructions = _programs[programName];
    if (instructions != null)
      _programs[programName] = 
         instructions.getRange(MIN_TOKEN_INDEX, instructionIndex - MIN_TOKEN_INDEX);    
  }

  void deleteProgram([String programName = DEFAULT_PROGRAM_NAME]) {
    rollback(MIN_TOKEN_INDEX, programName);
  }

  void insertAfter( d, text, [String programName = DEFAULT_PROGRAM_NAME]) {
    int index = (d is Token) ? d.tokenIndex : d;
    insertBefore(index + 1, text, programName);
  }

  void insertBefore( d , text, [String programName = DEFAULT_PROGRAM_NAME]) {
    int  index = (d is Token) ? d.tokenIndex : d;   
    _RewriteOperation op = new _InsertBeforeOp(_tokens, index, text);
    List rewrites = _getProgram(programName);
    op.instructionIndex = rewrites.length;
    rewrites.add(op);   
  }

  void replace( d1, text, [ d2 , String programName = DEFAULT_PROGRAM_NAME]) {
    int to, from = ((d1 is Token) ? d1.tokenIndex : d1);
    if(d2 == null) 
      to = from;
    else 
      to = (d2 is Token) ? d2.tokenIndex : d2;    
    if (from > to || from < 0 || to < 0 || to >= _tokens.length)
      throw new ArgumentError("replace: "
        "range invalid: $from..$to(size=${_tokens.length})");
    _RewriteOperation op = new _ReplaceOp(_tokens, from, to, text);
    List rewrites = _getProgram(programName);
    op.instructionIndex = rewrites.length;
    rewrites.add(op);
  }

  void delete( d1, [ d2, String programName = DEFAULT_PROGRAM_NAME]) {    
    int to, from = (d1 is Token) ? d1.tokenIndex : d1;
    if(d2 == null) to = from;
    else to = (d2 is Token) ? d2.tokenIndex : d2;
    replace(from, null, to, programName);
  }

  int get lastRewriteTokenIndex => _getLastRewriteTokenIndex(DEFAULT_PROGRAM_NAME);
  

  int _getLastRewriteTokenIndex(String programName) => _lastRewriteTokenIndexes[programName];

  void setLastRewriteTokenIndex(String programName, int i) {
    _lastRewriteTokenIndexes[programName] = i;
  }

  List _getProgram(String name) {
    List si = _programs[name];
    if (si == null)
      si = _initializeProgram(name); 
    return si;
  }

  List _initializeProgram(String name) {
    List si = new List(PROGRAM_INIT_SIZE);
    _programs[name] = si;
    return si;
  } 

  String toOriginalString([int start = MIN_TOKEN_INDEX , int end = -1]) {
    fill();
    if(end == -1) end = size - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i >= MIN_TOKEN_INDEX && i <= end && i < _tokens.length; i++)
      if (at(i).type != Token.EOF ) 
        buf.add(at(i).text);
    return buf.toString();
  }  

  String toString([int start = MIN_TOKEN_INDEX , 
      int end = -1 , String programName = DEFAULT_PROGRAM_NAME]) {
    fill();
    if(end == -1) end = size - 1;       
    List rewrites = _programs[programName];
    if (end > _tokens.length - 1) end = _tokens.length - 1;
    if (start < 0) start = 0;
    if (rewrites == null || rewrites.length == 0)
      return toOriginalString(start,end);
    StringBuffer buf = new StringBuffer();
    Map indexToOp = _reduceToSingleOperationPerIndex(rewrites);   
    int i = start;
    while (i <= end && i < _tokens.length) {
      _RewriteOperation op = indexToOp[i];
      indexToOp.remove(i);
      Token t = _tokens[i];
      if (op == null) {
        if (t.type != Token.EOF)          
          buf.add(t.text);
        i++;
      }
      else
        i = op.execute(buf);
    }    
    if (end == _tokens.length - 1) {
      Iterator it = indexToOp.values.iterator();
      while (it.hasNext) {
        _RewriteOperation op = it.next();
        if (op.index >= _tokens.length - 1)          
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
      List inserts = _getKindOfOps(rewrites, "_InsertBeforeOp", i);
      for (int j = 0; j < inserts.length; j++) {
        _InsertBeforeOp iop = inserts[j];
        if (iop.index == rop.index ) {          
          rewrites[iop.instructionIndex] = null;
          rop.text = '${iop.text.toString()}'
                     '${(rop.text != null ? rop.text.toString() : "")}';
        } else if (iop.index > rop.index && iop.index <= rop.lastIndex )
          rewrites[iop.instructionIndex] = null;       
      }
      List prevReplaces = _getKindOfOps(rewrites, "_ReplaceOp", i);
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
          rop.index = math.min(prevRop.index, rop.index);
          rop.lastIndex = math.max(prevRop.lastIndex, rop.lastIndex);
        }
        else if (!disjoint && !same)
          throw new ArgumentError("replace op "
            "boundaries of $rop overlap with previous $prevRop");        
      }
    }
    for (int i = 0; i < rewrites.length; i++) {
      _RewriteOperation op = rewrites[i];
      if (op == null) continue;
      if (!(op is _InsertBeforeOp)) continue;
      _InsertBeforeOp iop = rewrites[i];
      List prevInserts = _getKindOfOps(rewrites, "_InsertBeforeOp", i);
      for (int j = 0; j < prevInserts.length; j++) {
        _InsertBeforeOp prevIop = prevInserts[j];
        if (prevIop.index == iop.index) {
          iop.text = _catOpText(iop.text,prevIop.text);
          rewrites[prevIop.instructionIndex] =  null;
        }
      }
      List prevReplaces = _getKindOfOps(rewrites, "_ReplaceOp", i);
      for (int j = 0; j < prevReplaces.length; j++) {
        _ReplaceOp rop = prevReplaces[j];
        if (iop.index == rop.index) {
          rop.text = _catOpText(iop.text, rop.text);
          rewrites[i] = null;
          continue;
        }
        if (iop.index >= rop.index && iop.index <= rop.lastIndex)
          throw new ArgumentError("insert "
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

  String _catOpText(a, b) {
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
      String className = op.runtimeType.toString().split("@")[0];
      if (className == kind) ops.add(op);
    }   
    return ops;
  }

  String toDebugString([int start = MIN_TOKEN_INDEX , int end = -1]) {
    if(end == -1) end = size - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i >= MIN_TOKEN_INDEX && i <= end && i < _tokens.length; i++) {
      buf.add(at(i));
    }
    return buf.toString();
  }
  
}

class _RewriteOperation {
  
  List<Token> _tokens;
  int instructionIndex;
  int index;
  var text;

  _RewriteOperation(this._tokens, this.index, [this.text]);
    
  int execute(StringBuffer buf) => index;
  
  String toString() {
    String opName = "_RewriteOperation";
    int $index = opName.indexOf(r'$');
    opName = opName.substring($index+1, opName.length);
    return "<$opName@${_tokens[index]}:'${text}'>";
  }
}

class _InsertBeforeOp extends _RewriteOperation {
  
  _InsertBeforeOp(List<Token> tokens, 
    int index, text) : super(tokens, index, text);
    
  int execute(StringBuffer buf) {    
    buf.add(text);
    if (_tokens[index].type != Token.EOF)
      buf.add(_tokens[index].text);
    return index + 1;
  }
}

class _ReplaceOp extends _RewriteOperation {
  
  int lastIndex;
  
  _ReplaceOp(List<Token> tokens, int from, 
    this.lastIndex, text) : super(tokens, from, text);
  
  int execute(StringBuffer buf) {
    if (text != null)     
      buf.add(text);  
    return lastIndex + 1;
  }
  
  String toString() {
    if (text == null)
      return "<_DeleteOp@${_tokens[index]}.."
                        "${_tokens[lastIndex]}>";
    return "<_ReplaceOp@${_tokens[index]}.."
        "${_tokens[lastIndex]}:'${text}'>";
  }
}


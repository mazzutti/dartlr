// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Buffer all input tokens but do on-demand fetching of new tokens from
 *  lexer. Useful when the parser or lexer has to set context/mode info before
 *  proper lexing of future tokens. The ST template parser needs this,
 *  for example, because it has to constantly flip back and forth between
 *  inside/output templates. E.g., <names:{hi, <it>}> has to parse names
 *  as part of an expression but "hi, <it>" as a nested template.
 *
 *  You can't use this stream if you pass whitespace or other off-channel
 *  tokens to the parser. The stream can't ignore off-channel tokens.
 *  ([UnbufferedTokenStream] is the same way.)
 *
 *  This is not a subclass of [UnbufferedTokenStream] because I don't want
 *  to confuse small moving window of tokens it uses for the full buffer.
 */
class BufferedTokenStream implements TokenStream {
    
  TokenSource _tokenSource;
  
  /** Record every single token pulled from the source so we can reproduce
   *  chunks of it later.  The buffer in [LookaheadStream] overlaps sometimes
   *  as its moving window moves through the input.  This list captures
   *  everything so we can access complete input text.
   */
  List<Token> _tokens;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  
  /** The index into the tokens list of the current token (next token
   *  to consume).  tokens[p] should be LT(1).  p=-1 indicates need
   *  to initialize with first token.  The ctor doesn't get a token.
   *  First call to LT(1) or whatever gets the first token and sets p=0;
   */
  int _p = -1;
  int _range = -1;  

  BufferedTokenStream([this._tokenSource]) {
      this._tokens = new List<Token>();
  }

  TokenSource get tokenSource() => this._tokenSource;

  int get index() => this._p;

  int get range() => this._range;
  
  int mark() {
    if (this._p == -1) this._setup();
    this._lastMarker = this.index;
    return this._lastMarker;
  }

  void release(int marker) {}

  void rewind([int marker]){
    if(marker == null) marker = this._lastMarker; 
    this.seek(marker);
  }

  void reset() {
    this._p = 0;
    this._lastMarker = 0;
  }

  void seek(int i) {
    this._p = i; 
  }

  int get size() => this._tokens.length;
  
  /** Move the input pointer to the next incoming token.  The stream
   *  must become active with LT(1) available.  consume() simply
   *  moves the input pointer so that LT(1) points at the next
   *  input symbol. Consume at least one token.
   *
   *  Walk past any token not on the channel the parser is listening to.
   */
  void consume() {
    if (this._p == -1 ) this._setup();
    this._p++;
    this._sync(this._p);
  }
  
  /** Make sure index i in tokens has a token. */
  void _sync(int i) {   
    int n = i - this._tokens.length + 1;
    if ( n > 0 ) this._fetch(n);
  }

  /** add n elements to buffer */
  void _fetch(int n) {
    for (int i=1; i<=n; i++) {
      Token t = this._tokenSource.nextToken();
      t.tokenIndex = this._tokens.length; 
      this._tokens.add(t);
      if (t.type == Token.EOF) break;
    }
  }

  Token at(int i) {
    if (i < 0 || i >= this._tokens.length) {
      throw new Exception("token index $i out of range 0..${this._tokens.length - 1}");
    }
    return this._tokens[i];
  }

  /** Get all tokens from start..stop inclusively */
  List getRange(int start, int stop) {
    if (start < 0 || stop < 0) return null;
    if (this._p == -1) this._setup();
    List subset = new List();
    if (stop >= this._tokens.length) stop = this._tokens.length - 1;
    for (int i = start; i <= stop; i++) {
      Token t = this._tokens[i];
      if (t.type == Token.EOF ) break;
      subset.add(t);
    }
    return subset;
  }

  int LA(int i) => LT(i).type;

  Token LB(int k) {
    if ((this._p - k) < 0) return null;
    return this._tokens[this._p - k];
  }

  Token LT(int k) {    
    if (this._p == -1) this._setup();
    if (k == 0) return null;
    if (k < 0) return this.LB(-k);
    int i = this._p + k - 1;
    print("i: $i");
    this._sync(i);
    if (i >= this._tokens.length)
      return this._tokens.last();
    if (i > this._range) 
      this._range = i;     
    return this._tokens[i];
  }

  void _setup() {
    this._sync(0); 
    this._p = 0; 
  }

  /** Reset this token stream by setting its token source. */
  void set tokenSource(TokenSource tokenSource) {
    this._tokenSource = tokenSource;
    this._tokens.clear();
    this._p = -1;
  }
  
  List get tokens() => this._tokens;

  /** Given a start and stop index, return a List of all tokens in
   *  the token type BitSet.  Return null if no tokens were found.  This
   *  method looks at both on and off channel tokens.
   */
  List getTokensFromBitSet(int start, int stop, [BitSet types]) {
    if (this._p == -1) this._setup();
    if (stop >= this._tokens.length) 
      stop = this._tokens.length - 1;
    if (start < 0) 
      start = 0;
    if (start > stop)
      return null;
    List<Token> filteredTokens = new List<Token>();
    for (int i = start; i <= stop; i++) {
      Token t = this._tokens[i];
      if (types == null || types.member(t.type))
        filteredTokens.add(t);
    }
    if (filteredTokens.length == 0)
        filteredTokens = null;
    return filteredTokens;
  }

  List getTokensFromList(int start, int stop, List types) {
      return getTokensFromBitSet(start,stop,new BitSet.fromList(types));
  }

  List getTokens(int start, int stop, int ttype) {
      return getTokensFromBitSet(start,stop,BitSet.of(ttype));
  }

  String get sourceName() => this._tokenSource.sourceName;
  
  /** Grab *all* tokens from stream and return string */
  String toString() {    
    if (this._p == -1) this._setup();
    this.fill();
    return toRangeString(0, this._tokens.length - 1);
  }

  String toRangeString(int start, int stop) {
    if (start < 0 || stop < 0) return null;
    if (this._p == -1) this._setup();
    if (stop >= this._tokens.length) stop = this._tokens.length - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i <= stop; i++) {
      Token t = this._tokens[i];
      if (t.type == Token.EOF ) break;
      buf.add(t.text);
    }
    return buf.toString();
  }

  String toTokenString(Token start, Token stop) {
    if (start != null && stop != null)
      return toRangeString(start.tokenIndex, stop.tokenIndex);
  }

  /** Get all tokens from lexer until EOF */
  void fill() {
    if (this._p == -1 ) this._setup();
    if (this._tokens[this._p].type == Token.EOF) return;
    int i = this._p + 1;
    this._sync(i);
    while (this._tokens[i].type != Token.EOF) {
        i++;
        this._sync(i);
    }
  }
  
}

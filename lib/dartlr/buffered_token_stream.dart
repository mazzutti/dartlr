// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

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
    _tokens = new List<Token>();
  }

  TokenSource get tokenSource => _tokenSource;

  int get index => _p;

  int get range => _range;
  
  int mark() {
    if (_p == -1) _setup();
    _lastMarker = index;
    return _lastMarker;
  }

  release(int marker) {}

  rewind([int marker]){
    if(marker == null) marker = _lastMarker; 
    seek(marker);
  }

  reset() {
    _p = 0;
    _lastMarker = 0;
  }

  seek(int i) {
    _p = i; 
  }

  int get size => _tokens.length;
  
  /** Move the input pointer to the next incoming token.  The stream
   *  must become active with LT(1) available.  consume() simply
   *  moves the input pointer so that LT(1) points at the next
   *  input symbol. Consume at least one token.
   *
   *  Walk past any token not on the channel the parser is listening to.
   */
  consume() {
    if (_p == -1 ) _setup();
    _p++;
    _sync(_p);
  }
  
  /** Make sure index i in tokens has a token. */
  _sync(int i) {   
    int n = i - _tokens.length + 1;
    if ( n > 0 ) _fetch(n);
  }

  /** add n elements to buffer */
  _fetch(int n) {
    for (int i=1; i<=n; i++) {
      Token t = _tokenSource.nextToken();
      t.tokenIndex = _tokens.length; 
      _tokens.add(t);
      if (t.type == Token.EOF) break;
    }
  }

  Token at(int i) {
    if (i < 0 || i >= _tokens.length) {
      throw new ArgumentError("token index $i out of range 0..${_tokens.length - 1}");
    }
    return _tokens[i];
  }

  /** Get all tokens from start..stop inclusively */
  List getRange(int start, int stop) {
    if (start < 0 || stop < 0) return null;
    if (_p == -1) _setup();
    List subset = new List();
    if (stop >= _tokens.length) stop = _tokens.length - 1;
    for (int i = start; i <= stop; i++) {
      Token t = _tokens[i];
      if (t.type == Token.EOF ) break;
      subset.add(t);
    }
    return subset;
  }

  int LA(int i) => LT(i).type;

  Token LB(int k) {
    if ((_p - k) < 0) return null;
    return _tokens[_p - k];
  }

  Token LT(int k) {    
    if (_p == -1) _setup();
    if (k == 0) return null;
    if (k < 0) return LB(-k);
    int i = _p + k - 1;
    print("i: $i");
    _sync(i);
    if (i >= _tokens.length)
      return _tokens.last;
    if (i > _range) 
      _range = i;     
    return _tokens[i];
  }

  _setup() {
    _sync(0); 
    _p = 0; 
  }

  /** Reset this token stream by setting its token source. */
  set tokenSource(TokenSource tokenSource) {
    _tokenSource = tokenSource;
    _tokens.clear();
    _p = -1;
  }
  
  List get tokens => _tokens;

  /** Given a start and stop index, return a List of all tokens in
   *  the token type BitSet.  Return null if no tokens were found.  This
   *  method looks at both on and off channel tokens.
   */
  List getTokensFromBitSet(int start, int stop, [BitSet types]) {
    if (_p == -1) _setup();
    if (stop >= _tokens.length) 
      stop = _tokens.length - 1;
    if (start < 0) 
      start = 0;
    if (start > stop)
      return null;
    List<Token> filteredTokens = new List<Token>();
    for (int i = start; i <= stop; i++) {
      Token t = _tokens[i];
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

  String get sourceName => _tokenSource.sourceName;
  
  /** Grab *all* tokens from stream and return string */
  String toString() {    
    if (_p == -1) _setup();
    fill();
    return toRangeString(0, _tokens.length - 1);
  }

  String toRangeString(int start, int stop) {
    if (start < 0 || stop < 0) return null;
    if (_p == -1) _setup();
    if (stop >= _tokens.length) stop = _tokens.length - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i <= stop; i++) {
      Token t = _tokens[i];
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
  fill() {
    if (_p == -1 ) _setup();
    if (_tokens[_p].type == Token.EOF) return;
    int i = _p + 1;
    _sync(i);
    while (_tokens[i].type != Token.EOF) {
        i++;
        _sync(i);
    }
  }  
}

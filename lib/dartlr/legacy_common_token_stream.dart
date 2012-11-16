// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** The most common stream of tokens is one where every token is buffered up
 *  and tokens are prefiltered for a certain channel (the parser will only
 *  see these tokens and cannot change the filter channel number during the
 *  parse).
 */
class LegacyCommonTokenStream implements TokenStream {
  
  TokenSource _tokenSource;
  
  /** Record every single token pulled from the source so we can reproduce
   *  chunks of it later.
   */
  List _tokens;
  
  /** Map<tokentype, channel> to override some Tokens' channel numbers */
  Map _channelOverrideMap;
  
  /** Set<tokentype>; discard any tokens with this type */
  Set _discardSet;
  
  /** Skip tokens on any channel but this one; this is how we skip whitespace... */
  int _channel = Token.DEFAULT_CHANNEL;
  
  /** By default, track all incoming tokens */
  bool _discardOffChannelTokens = false;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  int _range = -1;
  
  /** The index into the tokens list of the current token (next token
   *  to consume).  _p ==-1 indicates that the tokens list is empty
   */
  int _p = -1;

  LegacyCommonTokenStream([this._tokenSource, this._channel]) {
    _tokens = new List(500);
  }

  /** Reset this token stream by setting its token source. */
  void set tokenSource(TokenSource tokenSource) {
    _tokenSource = tokenSource;
    _tokens.clear();
    _p = -1;
    _channel = Token.DEFAULT_CHANNEL;
  }

  
  /** Load all tokens from the token source and put in tokens.
   *  This is done upon first LT request because you might want to
   *  set some token type / channel overrides before filling buffer.
   */
  void _fillBuffer() {
    int ind = 0;
    Token t = tokenSource.nextToken();
    while (t != null && t.type != CharStream.EOF) {
      bool discard = false;
      if (_channelOverrideMap != null) {
        int channelI = _channelOverrideMap[t.type];
        if (channelI != null)
          t.channel = channelI;      
      }
      if (_discardSet != null && _discardSet.contains(t.type)) 
        discard = true;
      else if (_discardOffChannelTokens && t.channel != _channel)
        discard = true;
      if (!discard) {
        t.tokenIndex = ind;
        _tokens.add(t);
        ind++;
      }
      t = _tokenSource.nextToken();
    }    
    _p = 0;
    _p = _skipOffTokenChannels(_p);
  }

  /** Move the input pointer to the next incoming token.  The stream
  *  must become active with LT(1) available.  consume() simply
  *  moves the input pointer so that LT(1) points at the next
  *  input symbol. Consume at least one token.
  *
  *  Walk past any token not on the channel the parser is listening to.
  */
  void consume() {
    if (_p < _tokens.length) {
      _p++;
      _p = _skipOffTokenChannels(_p);
    }
  }

  /** Given a starting index, return the index of the first on-channel
      *  token.
      */
  int _skipOffTokenChannels(int i) {
    int n = _tokens.length;
    while ( i<n && _tokens[i].channel != _channel)
      i++;
    return i;
  }

  int _skipOffTokenChannelsReverse(int i) {
    while (i >= 0 && _tokens[i].channel != _channel)
      i--;
    return i;
  }

  /** A simple filter mechanism whereby you can tell this token stream
   *  to force all tokens of type ttype to be on channel.  For example,
   *  when interpreting, we cannot exec actions so we need to tell
   *  the stream to force all WS and NEWLINE to be a different, ignored
   *  channel.
   */
  void setTokenTypeChannel(int ttype, int channel) {
    if (_channelOverrideMap == null)
      _channelOverrideMap = new HashMap();
    _channelOverrideMap[ttype] = _channel;
  }

  void discardTokenType(int ttype) {
    if (_discardSet == null)
      _discardSet = new HashSet();
    _discardSet.add(ttype);
  }

  void discardOffChannelTokens(bool dchannelTokens) {
    _discardOffChannelTokens = dchannelTokens;
  }

  /** Given a start and stop index, return a List of all tokens in
   *  the token type [BitSet].  Return null if no tokens were found.  This
   *  method looks at both on and off channel tokens.
   */
  List get tokens {
    if (_p == -1) 
      _fillBuffer();
    return _tokens;
  }

  List getTokensRange(int start, int stop, [types]) {   
    if (_p == -1 )
      _fillBuffer();   
    if (stop >= _tokens.length)
      stop = _tokens.length - 1;   
    if (start < 0)
      start=0;
    if (start > stop)
      return null;
    List filteredTokens = new List();
    for (int i = start; i <= stop; i++) {
      Token t = _tokens[i];
      if (types == null || types.member(t.type))
        filteredTokens.add(t);
    }
    if (filteredTokens.length == 0)
      filteredTokens = null;
    return filteredTokens;
  }

  /** Get the ith token from the current position 1..n where k=1 is the
      *  first symbol of lookahead.
      */
  Token LT(int k) {
    if (_p == -1) _fillBuffer();    
    if (k == 0) return null;
    if (k < 0) return _LB(-k);    
    if ((_p + k - 1) >= _tokens.length) return _tokens.last;    
    int i = _p;
    int n = 1;   
    while (n < k) {     
      i = _skipOffTokenChannels(i+1);
      n++;
    }
    if (i >= _tokens.length) return _tokens.last;
    if (i > _range) _range = i;
    return _tokens[i];
  }

  /** Look backwards k tokens on-channel tokens */
  Token _LB(int k) {
    if (_p == -1) _fillBuffer();
    if (k == 0) return null;
    if ((_p - k) < 0) return null;
    int i = _p;
    int n = 1;
    while (n <= k) {
      i = _skipOffTokenChannelsReverse(i-1);
      n++;
    }
    if (i < 0) return null;
    return _tokens[i];
  }

  /** Return absolute token i; ignore which channel the tokens are on;
  *  that is, count all tokens not just on-channel tokens.
  */
  Token at(int i) => _tokens[i];

 
  /** Get all tokens from start..stop inclusively */
  List getList(int start, int stop) {
    if (_p == -1 ) _fillBuffer();
    if (start < 0 || stop < 0) return null;
    return _tokens.getRange(start, stop - start);
  }

  int LA(int i) => LT(i).type;

  int mark() {
    if (_p == -1) _fillBuffer();
    _lastMarker = index;
    return _lastMarker;
  }

  void release(int marker) {}

  int get size => _tokens.length;

  int get index => _p;

  int get range => _range;

  void rewind([int marker]) {
    if(marker == null) marker = _lastMarker;
    seek(marker);
  }

  void reset() {
    _p = 0;
    _lastMarker = 0;
  }
  
  void seek(int index) {
    _p = index;
  }

  TokenSource get tokenSource => _tokenSource;

  String get sourceName => tokenSource.sourceName;

  String toString() {
    if (_p == -1 )_fillBuffer();
    return toRangeString(0, _tokens.length - 1);
  }

  String toRangeString(int start, int stop) {
    if (start < 0 || stop < 0) return null;
    if (_p == -1) _fillBuffer();
    if (stop >= _tokens.length)
      stop = _tokens.length - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i <= stop; i++) {
      Token t = _tokens[i];
      buf.add(t.text);
    }
    return buf.toString();
  }

  String toTokenString(Token start, Token stop) {
    if (start != null && stop != null ) 
      return toRangeString(start.tokenIndex, stop.tokenIndex);
    return null;
  }
}

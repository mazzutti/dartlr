part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    this._tokens = new List(500);
  }

  /** Reset this token stream by setting its token source. */
  void set tokenSource(TokenSource tokenSource) {
    this._tokenSource = tokenSource;
    this._tokens.clear();
    this._p = -1;
    this._channel = Token.DEFAULT_CHANNEL;
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
      if (this._channelOverrideMap != null) {
        int channelI = this._channelOverrideMap[t.type];
        if (channelI != null)
          t.channel = channelI;      
      }
      if (this._discardSet != null && this._discardSet.contains(t.type)) 
        discard = true;
      else if (this._discardOffChannelTokens && t.channel != this._channel)
        discard = true;
      if (!discard) {
        t.tokenIndex = ind;
        this._tokens.add(t);
        ind++;
      }
      t = this._tokenSource.nextToken();
    }    
    this._p = 0;
    this._p = this._skipOffTokenChannels(this._p);
  }

  /** Move the input pointer to the next incoming token.  The stream
  *  must become active with LT(1) available.  consume() simply
  *  moves the input pointer so that LT(1) points at the next
  *  input symbol. Consume at least one token.
  *
  *  Walk past any token not on the channel the parser is listening to.
  */
  void consume() {
    if (this._p < this._tokens.length) {
      this._p++;
      this._p = this._skipOffTokenChannels(this._p);
    }
  }

  /** Given a starting index, return the index of the first on-channel
      *  token.
      */
  int _skipOffTokenChannels(int i) {
    int n = this._tokens.length;
    while ( i<n && this._tokens[i].channel != this._channel)
      i++;
    return i;
  }

  int _skipOffTokenChannelsReverse(int i) {
    while (i >= 0 && this._tokens[i].channel != this._channel)
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
    if (this._channelOverrideMap == null)
      this._channelOverrideMap = new HashMap();
    this._channelOverrideMap[ttype] = this._channel;
  }

  void discardTokenType(int ttype) {
    if (this._discardSet == null)
      this._discardSet = new HashSet();
    this._discardSet.add(ttype);
  }

  void discardOffChannelTokens(bool dchannelTokens) {
    this._discardOffChannelTokens = dchannelTokens;
  }

  /** Given a start and stop index, return a List of all tokens in
   *  the token type [BitSet].  Return null if no tokens were found.  This
   *  method looks at both on and off channel tokens.
   */
  List getTokens() {
    if (this._p == -1) 
      this._fillBuffer();
    return this._tokens;
  }

  List getTokensRange(int start, int stop, [Dynamic types]) {   
    if (this._p == -1 )
      this._fillBuffer();   
    if (stop >= this._tokens.length)
      stop = this._tokens.length - 1;   
    if (start < 0)
      start=0;
    if (start > stop)
      return null;
    List filteredTokens = new List();
    for (int i = start; i <= stop; i++) {
      Token t = this._tokens[i];
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
    if (this._p == -1) this._fillBuffer();    
    if (k == 0) return null;
    if (k < 0) return this._LB(-k);    
    if ((this._p + k - 1) >= this._tokens.length) return this._tokens.last();    
    int i = this._p;
    int n = 1;   
    while (n < k) {     
      i = this._skipOffTokenChannels(i+1);
      n++;
    }
    if (i >= this._tokens.length) return this._tokens.last();
    if (i > this._range) this._range = i;
    return this._tokens[i];
  }

  /** Look backwards k tokens on-channel tokens */
  Token _LB(int k) {
    if (this._p == -1) this._fillBuffer();
    if (k == 0) return null;
    if ((this._p - k) < 0) return null;
    int i = this._p;
    int n = 1;
    while (n <= k) {
      i = this._skipOffTokenChannelsReverse(i-1);
      n++;
    }
    if (i < 0) return null;
    return this._tokens[i];
  }

  /** Return absolute token i; ignore which channel the tokens are on;
  *  that is, count all tokens not just on-channel tokens.
  */
  Token at(int i) => this._tokens[i];

 
  /** Get all tokens from start..stop inclusively */
  List getList(int start, int stop) {
    if (this._p == -1 ) this._fillBuffer();
    if (start < 0 || stop < 0) return null;
    return this._tokens.getRange(start, stop - start);
  }

  int LA(int i) => this.LT(i).type;

  int mark() {
    if (this._p == -1) this._fillBuffer();
    this._lastMarker = this.index;
    return this._lastMarker;
  }

  void release(int marker) {}

  int get size => this._tokens.length;

  int get index => this._p;

  int get range => this._range;

  void rewind([int marker]) {
    if(marker == null) marker = this._lastMarker;
    this.seek(marker);
  }

  void reset() {
    this._p = 0;
    this._lastMarker = 0;
  }
  
  void seek(int index) {
    this._p = index;
  }

  TokenSource get tokenSource => this._tokenSource;

  String get sourceName => this.tokenSource.sourceName;

  String toString() {
    if (this._p == -1 )this._fillBuffer();
    return toRangeString(0, this._tokens.length - 1);
  }

  String toRangeString(int start, int stop) {
    if (start < 0 || stop < 0) return null;
    if (this._p == -1) this._fillBuffer();
    if (stop >= this._tokens.length)
      stop = this._tokens.length - 1;
    StringBuffer buf = new StringBuffer();
    for (int i = start; i <= stop; i++) {
      Token t = this._tokens[i];
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

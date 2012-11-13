part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** The most common stream of tokens where every token is buffered up
 *  and tokens are filtered for a certain channel (the parser will only
 *  see these tokens).
 *
 *  Even though it buffers all of the tokens, this token stream pulls tokens
 *  from the tokens source on demand. In other words, until you ask for a
 *  token using consume(), LT(), etc. the stream does not pull from the lexer.
 *
 *  The only difference between this stream and [BufferedTokenStream] superclass
 *  is that this stream knows how to ignore off channel tokens. There may be
 *  a performance advantage to using the superclass if you don't pass
 *  whitespace and comments etc. to the parser on a hidden channel (i.e.,
 *  you set $channel instead of calling skip() in lexer rules.)
 *
 *  See [UnbufferedTokenStream]
 *  See [BufferedTokenStream]
 */
class CommonTokenStream extends BufferedTokenStream {
   
  /** Skip tokens on any channel but this one; this is how we skip whitespace... */
  int _channel = Token.DEFAULT_CHANNEL;

  CommonTokenStream([TokenSource tokenSource]) : super(tokenSource);
    
  CommonTokenStream.withChannel(TokenSource 
        tokenSource, int channel) : super(tokenSource){
    if(channel != null)
      this._channel = channel;
  }

  /** Always leave p on an on-channel token. */
  void consume() {
    if (this._p == -1) this._setup();
    this._p++;
    this._sync(this._p);
    while (this._tokens[this._p].channel != this._channel) {
      this._p++;
      this._sync(this._p);
    }
  }

  Token _LB(int k) {
    
    if (k == 0 || (this._p - k) < 0){
      return null;
    }
    int i = this._p;
    int n = 1;
    while (n <= k) {
      i = this._skipOffTokenChannelsReverse(i-1);
      n++;
    }
    if (i < 0) return null;
    return this._tokens[i];
  }

  Token LT(int k) {
    if (this._p == -1)      
      this._setup();
    if (k == 0) return null;
    if (k < 0) return this._LB(-k);
    int i = this._p;    
    int n = 1;   
    while (n < k) {
      i = this._skipOffTokenChannels(i+1);      
      n++;
    }   
    if (i > this._range ) {      
      this._range = i;
    }
    return this._tokens[i];
  }

  /** Given a starting index, return the index of the first on-channel
  *  token.
  */
  int _skipOffTokenChannels(int i) {
    this._sync(i);
    while (this._tokens[i].channel != this._channel ) {
      i++;
      this._sync(i);
    }
    return i;
  }

  int _skipOffTokenChannelsReverse(int i) {
    while (i >=0 && (this._tokens[i].channel != this._channel))
      i--;
    return i;
  }

  void reset() {
    super.reset();
    this._p = this._skipOffTokenChannels(0);
  }

  void _setup() {
    this._p = 0;
    this._sync(0);
    int i = 0;
    while (this._tokens[i].channel != this._channel) {
        i++;
        this._sync(i);
    }
    this._p = i;
  }

  /** Count EOF just once. */
  int getNumberOfOnChannelTokens() {
    int n = 0;
    this.fill();
    for(int i = 0; i < this._tokens.length; i++) {
      Token t = this._tokens[i];
      if (t.channel == this._channel) n++;
      if (t.type == Token.EOF) break;
    }
    return n;
  }

  /** Reset this token stream by setting its token source. */
  void setTokenSource(TokenSource tokenSource) {
    super.tokenSource = tokenSource;
    this._channel = Token.DEFAULT_CHANNEL;
  }
}

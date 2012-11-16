// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
      _channel = channel;
  }

  /** Always leave p on an on-channel token. */
  void consume() {
    if (_p == -1) _setup();
    _p++;
    _sync(_p);
    while (_tokens[_p].channel != _channel) {
      _p++;
      _sync(_p);
    }
  }

  Token _LB(int k) {    
    if (k == 0 || (_p - k) < 0){
      return null;
    }
    int i = _p;
    int n = 1;
    while (n <= k) {
      i = _skipOffTokenChannelsReverse(i-1);
      n++;
    }
    if (i < 0) return null;
    return _tokens[i];
  }

  Token LT(int k) {
    if (_p == -1)      
      _setup();
    if (k == 0) return null;
    if (k < 0) return _LB(-k);
    int i = _p;    
    int n = 1;   
    while (n < k) {
      i = _skipOffTokenChannels(i+1);      
      n++;
    }   
    if (i > _range ) {      
      _range = i;
    }
    return _tokens[i];
  }

  /** Given a starting index, return the index of the first on-channel
  *  token.
  */
  int _skipOffTokenChannels(int i) {
    _sync(i);
    while (_tokens[i].channel != _channel ) {
      i++;
      _sync(i);
    }
    return i;
  }

  int _skipOffTokenChannelsReverse(int i) {
    while (i >=0 && (_tokens[i].channel != _channel))
      i--;
    return i;
  }

  void reset() {
    super.reset();
    _p = _skipOffTokenChannels(0);
  }

  void _setup() {
    _p = 0;
    _sync(0);
    int i = 0;
    while (_tokens[i].channel != _channel) {
        i++;
        _sync(i);
    }
    _p = i;
  }

  /** Count EOF just once. */
  int get numberOfOnChannelTokens {
    int n = 0;
    fill();
    for(int i = 0; i < _tokens.length; i++) {
      Token t = _tokens[i];
      if (t.channel == _channel) n++;
      if (t.type == Token.EOF) break;
    }
    return n;
  }

  /** Reset this token stream by setting its token source. */
  void set tokenSource(TokenSource tokenSource) {
    super.tokenSource = tokenSource;
    _channel = Token.DEFAULT_CHANNEL;
  }
}

part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A token stream that pulls tokens from the code source on-demand and
 *  without tracking a complete buffer of the tokens. This stream buffers
 *  the minimum number of tokens possible.  
 *  You can't use this stream if you pass whitespace or other off-channel
 *  tokens to the parser. The stream can't ignore off-channel tokens.
 * 
 *  You can only look backwards 1 token: LT(-1).
 *
 *  Use this when you need to read from a socket or other infinite stream.
 *
 *  See [BufferedTokenStream]
 *  See [CommonTokenStream]
 */
class UnbufferedTokenStream extends LookaheadStream<Token> implements TokenStream {
  
  TokenSource _tokenSource;
  int _tokenIndex = 0;
  int _channel = Token.DEFAULT_CHANNEL;

  UnbufferedTokenStream(this._tokenSource);
  
  String get sourceName => this._tokenSource.sourceName;

  Token nextElement() {
    Token t = this._tokenSource.nextToken();
    t.tokenIndex = this._tokenIndex++;
    return t;
  }

  bool isEOF(Token o) => o.type == Token.EOF;    

  TokenSource get tokenSource => this._tokenSource;

  String toRangeString(int start, int stop) => "n/a";
  
  String toTokenString(Token start, Token stop) => "n/a";

  int LA(int i) => this.LT(i).type;

  Token at(int i) {
        throw new UnsupportedOperationException("Absolute"
          " token indexes are meaningless in an unbuffered stream");
  }
  
}


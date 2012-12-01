// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A node representing erroneous token range in token stream */
class CommonErrorNode extends CommonTree {
  
  IntStream input;
  Token start;
  Token stop;
  RecognitionException trappedException;

  CommonErrorNode(this.input, this.start, this.stop, this.trappedException) {
    if (stop == null || (stop.tokenIndex < 
        start.tokenIndex && stop.type != Token.EOF))
      stop = start;  
  }
  
  int get type => Token.INVALID_TOKEN_TYPE;

  bool get isNil => false; 

  String get text {
    String badText = null;
    if (start is Token) {
      int i = start.tokenIndex;
      int j = stop.tokenIndex;
      if (stop.type == Token.EOF)
        j = input.size;
      badText = (input as TokenStream).toRangeString(i, j);
    }
    else if (start is Tree)
      badText = (input as TokenStream).toTokenString(start, stop);
    else 
      badText = "<unknown>";
    return badText;
  }

  String toString() {
    if (trappedException is MissingTokenException)
      return "<missing type: ${(trappedException 
          as MissingTokenException).missingType}>";
    else if (trappedException is UnwantedTokenException)
      return "<extraneous: ${(trappedException 
          as UnwantedTokenException).unexpectedToken}, resync=${text}>";
    else if (trappedException is MismatchedTokenException)
      return "<mismatched token: ${trappedException.token}, resync=${text}>";
    else if (trappedException is NoViableAltException)
      return "<unexpected: ${trappedException.token}, resync=${text}>";
    return "<error: ${text}>";
  }
  
}


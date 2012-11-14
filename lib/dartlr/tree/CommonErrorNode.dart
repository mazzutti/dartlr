part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A node representing erroneous token range in token stream */
class CommonErrorNode extends CommonTree {
  
  IntStream input;
  Token start;
  Token stop;
  RecognitionException trappedException;

  CommonErrorNode(this.input, this.start, this.stop, this.trappedException) {
    if (this.stop == null || (this.stop.tokenIndex < 
        this.start.tokenIndex && this.stop.type != Token.EOF))
      this.stop = this.start;  
  }
  
  int get type => Token.INVALID_TOKEN_TYPE;

  bool isNil() => false; 

  String get text {
    String badText = null;
    if (this.start is Token) {
      int i = this.start.tokenIndex;
      int j = this.stop.tokenIndex;
      if (this.stop.type == Token.EOF)
        j = this.input.size;
      badText = this.input.toRangeString(i, j);
    }
    else if (this.start is Tree)
      badText = this.input.toTokenString(this.start, this.stop);
    else 
      badText = "<unknown>";
    return badText;
  }

  String toString() {
    if (this.trappedException is MissingTokenException)
      return "<missing type: ${this.trappedException.getMissingType()}>";
    else if (this.trappedException is UnwantedTokenException)
      return "<extraneous: ${this.trappedException.getUnexpectedToken()}, resync=${this.text}>";
    else if (this.trappedException is MismatchedTokenException)
      return "<mismatched token: ${this.trappedException.token}, resync=${this.text}>";
    else if (this.trappedException is NoViableAltException)
      return "<unexpected: ${this.trappedException.token}, resync=${this.text}>";
    return "<error: ${this.text}>";
  }
  
}


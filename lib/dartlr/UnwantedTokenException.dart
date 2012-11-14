part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** An extra token while parsing a TokenStream */
class UnwantedTokenException extends MismatchedTokenException {
 
  UnwantedTokenException
     ([int expecting, IntStream input]) : super(expecting, input);

  Token get unexpectedToken => this.token;

  String toString() {
    String exp = ", expected $expecting";
    if (this.expecting == Token.INVALID_TOKEN_TYPE)
      exp = "";
    if (this.token == null)
      return "UnwantedTokenException(found=${null}$exp)";
    return "UnwantedTokenException(found=${token.text}$exp)";
  }  
  
  @override String get className => "UnwantedTokenException";
  
}


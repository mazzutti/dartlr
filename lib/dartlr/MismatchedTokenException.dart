part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A mismatched char or Token or tree node */
class MismatchedTokenException extends RecognitionException {
  
  int _expecting = Token.INVALID_TOKEN_TYPE;

  MismatchedTokenException([this._expecting, IntStream input]) : super(input);
  
  int get expecting() => this._expecting;

  String toString() =>
      "MismatchedTokenException(${getUnexpectedType()} != ${this.expecting})";
      
  String get className => "MismatchedTokenException";
  
}


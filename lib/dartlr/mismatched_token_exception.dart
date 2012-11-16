// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A mismatched char or Token or tree node */
class MismatchedTokenException extends RecognitionException {
  
  int _expecting = Token.INVALID_TOKEN_TYPE;

  MismatchedTokenException([this._expecting, IntStream input]) : super(input);
  
  int get expecting => _expecting;

  String toString() => "MismatchedTokenException(${unexpectedType} != ${expecting})";
  
}


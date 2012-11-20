// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A mismatched char or Token or tree node */
class MismatchedTokenException extends RecognitionException {
  
  final int expecting; 

  MismatchedTokenException([this.expecting=Token.INVALID_TOKEN_TYPE, IntStream input]) : super(input);

  String toString() => "MismatchedTokenException(${unexpectedType} != ${expecting})";
  
}


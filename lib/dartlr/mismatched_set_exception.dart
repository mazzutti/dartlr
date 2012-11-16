// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class MismatchedSetException extends RecognitionException {
  
  final BitSet expecting;

  MismatchedSetException([this.expecting, IntStream input]) : super(input);

  String toString() => "MismatchedSetException(${unexpectedType} != ${expecting})";
  
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class MismatchedRangeException extends RecognitionException {
  
  int a,b;

  MismatchedRangeException([this.a, this.b, IntStream input]) : super(input);
  
  String toString() =>  "MismatchedNotSetException(${this.getUnexpectedType()} not in [$a,$b])";
  
  String get className() => "MismatchedRangeException";
}


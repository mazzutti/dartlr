part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class MismatchedNotSetException extends MismatchedSetException {
 
  MismatchedNotSetException([BitSet expecting, IntStream input]) : super(expecting,input);

  String toString() => "MismatchedNotSetException(${this.getUnexpectedType()} != $expecting)";
  
  String get className => "MismatchedNotSetException";
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** We were expecting a token but it's not found.  The current token
 *  is actually what we wanted next.  Used for tree node errors too.
 */
class MissingTokenException extends MismatchedTokenException {
  
  final inserted;
 
  MissingTokenException([this.inserted, 
                         int expecting, 
                         IntStream input]) : super(expecting, input);

  int get missingType => expecting;

  String toString() {
    if (inserted != null && token != null )
      return "MissingTokenException(inserted ${inserted} at ${token.text})";  
    if (token != null)
      return "MissingTokenException(at ${token.text})";   
    return "MissingTokenException";
  }
  
}


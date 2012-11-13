part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** We were expecting a token but it's not found.  The current token
 *  is actually what we wanted next.  Used for tree node errors too.
 */
class MissingTokenException extends MismatchedTokenException {
  
  Object inserted;
 
  MissingTokenException([this.inserted, int expecting, IntStream input]) : super(expecting, input);

  int getMissingType() => this.expecting;

  String toString() {
    if (this.inserted != null && this.token != null )
      return "MissingTokenException(inserted ${this.inserted} at ${this.token.text})";  
    if (this.token != null)
      return "MissingTokenException(at ${this.token.text})";   
    return "MissingTokenException";
  }
  
  String get className => "MissingTokenException";
  
}


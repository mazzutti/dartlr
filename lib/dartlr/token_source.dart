// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A source of tokens must provide a sequence of tokens via nextToken()
 *  and also must reveal it's source of characters; CommonToken's text is
 *  computed from a [CharStream]; it only store indices into the char stream.
 *
 *  Errors from the lexer are never passed to the parser.  Either you want
 *  to keep going or you do not upon token recognition error.  If you do not
 *  want to continue lexing then you do not want to continue parsing.  If you want to continue
 *  lexing then you should not throw an exception to the parser--it has already
 *  requested a token.  Keep lexing until you get a valid one.  Just report
 *  errors and keep going, looking for a valid token.
 */
abstract class TokenSource {
  
  /** Return a Token object from your input stream (usually a [CharStream]).
   *  Do not fail/return upon lexing error; keep chewing on the characters
   *  until you get a good one; errors are not passed through to the parser.
   */
  Token nextToken();
  
  /** Where are you getting tokens from? normally the implication will simply
   *  ask lexers input stream.
   */
  String get sourceName;
  
}

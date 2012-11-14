part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A semantic predicate failed during validation.  Validation of predicates
 *  occurs when normally parsing the alternative just like matching a token.
 *  Disambiguating predicate evaluation occurs when we hoist a predicate into
 *  a prediction decision.
 */
class FailedPredicateException extends RecognitionException {
  
  final String ruleName;
  final String predicateText;

  FailedPredicateException([IntStream input, this.ruleName, this.predicateText]) :super(input);

  String toString() => "FailedPredicateException(${this.ruleName},{${this.predicateText}}?)";
  
  String get className => "FailedPredicateException";
}


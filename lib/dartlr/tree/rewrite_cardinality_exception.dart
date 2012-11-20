// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** Base class for all exceptions thrown during AST rewrite construction.
 *  This signifies a case where the cardinality of two or more elements
 *  in a subrule are different: (ID INT)+ where |ID|!=|INT|
 */
class RewriteCardinalityException implements Exception {  
  final String message;
  RewriteCardinalityException([this.message=""]);    
  String toString() => message;
}


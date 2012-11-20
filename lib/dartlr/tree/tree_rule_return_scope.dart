// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** This is identical to the [ParserRuleReturnScope] except that
 *  the start property is a tree nodes not [Token] object
 *  when you are parsing trees.  To be generic the tree node types
 *  have to be [Object].
 */
class TreeRuleReturnScope extends RuleReturnScope {
  
  /** First node or root node of tree matched for this rule. */
  var start;
}
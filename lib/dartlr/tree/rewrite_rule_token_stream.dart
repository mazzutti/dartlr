// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

class RewriteRuleTokenStream extends RewriteRuleElementStream {

  /** Create a stream with one or more elements */
  RewriteRuleTokenStream(TreeAdaptor adaptor, 
    String elementDescription, [elements]) : super(adaptor, elementDescription, elements);
  
  /** Get next token from stream and make a node for it */
  nextNode() {
    var t = _next();
    return _adaptor.createTreeNode(t);
  }

  Token nextToken() => _next();
  
  /** Don't convert to a tree unless they explicitly call nextTree.
   *  This way we can do hetero tree nodes in rewrite.
   */
  _toTree(el) => el;

  _dup(el) {
    throw new UnsupportedError("dup can't be called for a token stream.");
  }
}


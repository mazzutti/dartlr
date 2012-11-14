part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class RewriteRuleTokenStream extends RewriteRuleElementStream {

  /** Create a stream with one or more elements */
  RewriteRuleTokenStream(TreeAdaptor adaptor, 
    String elementDescription, [Object elements]) : super(adaptor, elementDescription, elements);
  
  /** Get next token from stream and make a node for it */
  Object nextNode() {
    Token t = this._next();
    return this._adaptor.createTreeNode(t);
  }

  Token nextToken() => this._next();
  
  /** Don't convert to a tree unless they explicitly call nextTree.
   *  This way we can do hetero tree nodes in rewrite.
   */
  Object _toTree(Object el) => el;

  Object _dup(Object el) {
    throw new UnsupportedOperationException("dup can't be called for a token stream.");
  }
}


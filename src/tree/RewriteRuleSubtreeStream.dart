// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class RewriteRuleSubtreeStream extends RewriteRuleElementStream { 
  
  /** Create a stream with one more elements */
  RewriteRuleSubtreeStream(TreeAdaptor adaptor, 
    String elementDescription, [Object e]) : super(adaptor, elementDescription, e);
 
  /** Treat next element as a single node even if it's a subtree.
   *  This is used instead of next() when the result has to be a
   *  tree root node.  Also prevents us from duplicating recently-added
   *  children; e.g., ^(type ID)+ adds ID to type and then 2nd iteration
   *  must dup the type node, but ID has been added.
   *
   *  Referencing a rule result twice is ok; dup entire tree as
   *  we can't be adding trees as root; e.g., expr expr.
   *
   *  Hideous code duplication here with super.next().  Can't think of
   *  a proper way to refactor.  This needs to always call dup node
   *  and super.next() doesn't know which to call: dup node or dup tree.
   */
  Object nextNode() {
    int n = this.size();
    if (this._dirty || (this._cursor >= n && n == 1)) {
      Object el = this._next();
      return this._adaptor.dupNode(el);
    }
    Object tree = this._next();
    while (this._adaptor.isNil(tree) && this._adaptor.getChildCount(tree) == 1)
      tree = this._adaptor.getChild(tree, 0);   
    Object el = this._adaptor.dupNode(tree); 
    return el;
  }

  Object _dup(Object el) => this._adaptor.dupTree(el);
}

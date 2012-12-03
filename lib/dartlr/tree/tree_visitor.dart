// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** Do a depth first walk of a tree, applying pre() and post() actions
 *  as we discover and finish nodes.
 */
class TreeVisitor {
    
  TreeAdaptor _adaptor;
    
  TreeVisitor([this._adaptor]) {
    if(_adaptor == null)
      _adaptor = new CommonTreeAdaptor();
  }
  
  /** Visit every node in tree t and trigger an action for each node
   *  before/after having visited all of its children.
   *  Execute both actions even if t has no children.
   *  If a child visit yields a new child, it can update its
   *  parent's child list or just return the new child.  The
   *  child update code works even if the child visit alters its parent
   *  and returns the new tree.
   *
   *  Return result of applying post action to this node.
   */
  visit(t, TreeVisitorAction action) {
    bool isNil = _adaptor.isNil(t);
    if (action != null && !isNil)
      t = action.pre(t);
    for (int i = 0; i < _adaptor.getChildCount(t); i++) {
      var child = _adaptor.getChild(t, i);
      var visitResult = visit(child, action);
      var childAfterVisit = _adaptor.getChild(t, i);
      if (visitResult !=  childAfterVisit)
        _adaptor.setChild(t, i, visitResult);
    }
    if (action != null && !isNil ) 
      t = action.post(t);
    return t;
  }
}


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** What does a tree look like?  ANTLR has a number of support classes
 *  such as [CommonTreeNodeStream] that work on these kinds of trees.  You
 *  don't have to make your trees implement this interface, but if you do,
 *  you'll be able to use more support code.
 *
 *  NOTE: When constructing trees, ANTLR can build any kind of tree; it can
 *  even use Token objects as trees if you add a child list to your tokens.
 *
 *  This is a tree node without any payload; just navigation and factory stuff.
 */
class Tree {
  
  static Tree _INVALID_NODE;   
  static Tree get INVALID_NODE() {
    if(_INVALID_NODE == null)
      _INVALID_NODE = new CommonTree.fromToken(Token.INVALID_TOKEN);
    return _INVALID_NODE;
  }
  
  /** Return a token type; needed for tree parsing */
  abstract int get type();
  
  /** In case we don't have a token payload, what is the line for errors? */
  abstract int get line();
  
  abstract int get charPositionInLine();
  
  abstract Tree get parent();

  abstract void set parent(Tree t);
  
  /** This node is what child index? 0..n-1 */
  abstract int get childIndex();
  
  abstract void set childIndex(int index);
  
  /** Indicates the node is a nil node but may still have children, meaning
   *  the tree is a flat list.
   */
  abstract bool isNil(); 
  
  abstract toStringTree();
  
  abstract Tree getChild(int i);

  abstract int getChildCount();

  /** Is there is a node above with token type ttype? */
  abstract bool hasAncestor(int ttype);

  /** Walk upwards and get first ancestor with this token type. */
  abstract Tree getAncestor(int ttype);

  /** Return a list of all ancestors of this node.  The first node of
   *  list is the root and the last is the parent of this node.
   */
  abstract List getAncestors();

  /** Set the parent and child index values for all children */
  abstract void freshenParentAndChildIndexes();

  /** Add t as a child to this node.  If t is null, do nothing.  If t
   *  is nil, add all children of t to this' children.
   */
  abstract void addChild(Tree t);

  /** Set ith child (0..n-1) to t; t must be non-null and non-nil node */
  abstract void setChild(int i, Tree t);

  abstract Object deleteChild(int i);

  /** Delete children from start to stop and replace with t even if t is
   *  a list (nil-root tree).  num of children can increase or decrease.
   *  For huge child lists, inserting children can force walking rest of
   *  children to set their childindex; could be slow.
   */
  abstract void replaceChildren(int startChildIndex, int stopChildIndex, Object t); 

  /**  What is the smallest token index (indexing from 0) for this node
   *   and its children?
   */
  abstract int get tokenStartIndex();

  abstract void set tokenStartIndex(int index);

  /**  What is the largest token index (indexing from 0) for this node
   *   and its children?
   */
  abstract int get tokenStopIndex();

  abstract void set tokenStopIndex(int index);

  abstract Tree dupNode();

  abstract String get text();

  abstract String toString();
  
}

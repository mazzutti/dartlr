// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
abstract class Tree {
  
  static final Tree INVALID_NODE = new CommonTree.fromToken(Token.INVALID_TOKEN);   
  
  /** Return a token type; needed for tree parsing */
   int get type;
  
  /** In case we don't have a token payload, what is the line for errors? */
   int get line;
  
   int get charPositionInLine;
  
   Tree parent;
  
  /** This node is what child index? 0..n-1 */
   int get childIndex;
  
   set childIndex(int index);
  
  /** Indicates the node is a nil node but may still have children, meaning
   *  the tree is a flat list.
   */
   bool isNil(); 
  
   toStringTree();
  
   Tree getChild(int i);
   Tree operator[](int i) => getChild(i);

   int get childCount;

  /** Is there is a node above with token type ttype? */
   bool hasAncestor(int ttype);

  /** Walk upwards and get first ancestor with this token type. */
   Tree getAncestor(int ttype);

  /** Return a list of all ancestors of this node.  The first node of
   *  list is the root and the last is the parent of this node.
   */
   List get ancestors;

  /** Set the parent and child index values for all children */
   freshenParentAndChildIndexes();

  /** Add t as a child to this node.  If t is null, do nothing.  If t
   *  is nil, add all children of t to this' children.
   */
   addChild(Tree t);

  /** Set ith child (0..n-1) to t; t must be non-null and non-nil node */
   setChild(int i, Tree t);
   operator[]=(int i, Tree t) => setChild(i,t);

   deleteChild(int i);

  /** Delete children from start to stop and replace with t even if t is
   *  a list (nil-root tree).  num of children can increase or decrease.
   *  For huge child lists, inserting children can force walking rest of
   *  children to set their childindex; could be slow.
   */
   replaceChildren(int startChildIndex, int stopChildIndex, t); 

  /**  What is the smallest token index (indexing from 0) for this node
   *   and its children?
   */
   int tokenStartIndex;

  /**  What is the largest token index (indexing from 0) for this node
   *   and its children?
   */
   int tokenStopIndex;

   Tree dupNode();

   String get text;

   String toString();  
}

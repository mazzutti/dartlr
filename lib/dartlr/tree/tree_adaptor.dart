// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** How to create and navigate trees. */
abstract class TreeAdaptor {
  
  /** Create a tree node from Token object; for [CommonTree] type trees,
   *  then the token just becomes the payload.  This is the most
   *  common create call.
   *
   *  Override if you want another kind of node to be built.
   */
  createTreeNode(Token payload);

  /** Duplicate a single tree node.
   *  Override if you want another kind of node to be built.
   */
  dupNode(treeNode);

  /** Duplicate tree recursively, using dupNode() for each node */
  dupTree(tree);

  /** Return a nil node (an empty but non-null node) that can hold
   *  a list of element as the children.  If you want a flat tree (a list)
   *  use "t=adaptor.nil(); t.addChild(x); t.addChild(y);"
   */
  nil();
  
  /** Return a tree node representing an error.  This node records the
   *  tokens consumed during error recovery.  The start token indicates the
   *  input symbol at which the error was detected.  The stop token indicates
   *  the last symbol consumed during recovery.
   *
   *  You must specify the input stream so that the erroneous text can
   *  be packaged up in the error node.  The exception could be useful
   *  to some applications; default implementation stores ptr to it in
   *  the CommonErrorNode.
   *
   *  This only makes sense during token parsing, not tree parsing.
   *  Tree parsing should happen only when parsing and tree construction
   *  succeed.
   */
  errorNode(TokenStream input, Token start, Token stop, RecognitionException e);

  /** Is tree considered a nil node used to make lists of child nodes? */
  bool isNil(tree);

  /** Add a child to the tree t.  If child is a flat tree (a list), make all
   *  in list children of t.  Warning: if t has no children, but child does
   *  and child isNil then you can decide it is ok to move children to t via
   *  t.children = child.children; i.e., without copying the array.  Just
   *  make sure that this is consistent with have the user will build
   *  ASTs.  Do nothing if t or child is null.
   */
  addChild(t, child);

  /** If oldRoot is a nil root, just copy or move the children to newRoot.
   *  If not a nil root, make oldRoot a child of newRoot.
   *
   *    old=^(nil a b c), new=r yields ^(r a b c)
   *    old=^(a b c), new=r yields ^(r ^(a b c))
   *
   *  If newRoot is a nil-rooted single child tree, use the single
   *  child as the new root node.
   *
   *    old=^(nil a b c), new=^(nil r) yields ^(r a b c)
   *    old=^(a b c), new=^(nil r) yields ^(r ^(a b c))
   *
   *  If oldRoot was null, it's ok, just return newRoot (even if isNil).
   *
   *    old=null, new=r yields r
   *    old=null, new=^(nil r) yields ^(nil r)
   *
   *  Return newRoot.  Throw an exception if newRoot is not a
   *  simple node or nil root with a single child node--it must be a root
   *  node.  If newRoot is ^(nil x) return x as newRoot.
   *
   *  Be advised that it's ok for newRoot to point at oldRoot's
   *  children; i.e., you don't have to copy the list.  We are
   *  constructing these nodes so we should have this control for
   *  efficiency.
   */
  becomeRoot(newRoot, oldRoot);

  /** Given the root of the subtree created for this rule, post process
   *  it to do any simplifications or whatever you want.  A required
   *  behavior is to convert ^(nil singleSubtree) to singleSubtree
   *  as the setting of start/stop indexes relies on a single non-nil root
   *  for non-flat trees.
   *
   *  Flat trees such as for lists like "idlist : ID+ ;" are left alone
   *  unless there is only one ID.  For a list, the start/stop indexes
   *  are set in the nil node.
   *
   *  This method is executed after all rule tree construction and right
   *  before setTokenBoundaries().
   */
  rulePostProcessing(root);

  /** For identifying trees.
  *
  *  How to identify nodes so we can say "add node to a prior node"?
  *  Even becomeRoot is an issue.  <node>.hashCode() 
  *  usually.
  */
  int getUniqueID(node);

  becomeRootFormToken(Token newRoot, oldRoot); 

  /** Create a new node derived from a token, with a new token type.
   *  This is invoked from an imaginary node ref on right side of a
   *  rewrite rule as IMAG[$tokenLabel, "IMAG"].
   *
   *  This should invoke createToken(Token).
   */
  create(int tokenType, Token fromToken, [String text]);

  /** Create a new node derived from a token, with a new token type.
   *  This is invoked from an imaginary node ref on right side of a
   *  rewrite rule as IMAG["IMAG"].
   *
   *  This should invoke createToken(int,String).
   */
  createFromTokenType(int tokenType, String text);

  /** For tree parsing, I need to know the token type of a node */
  int getType(t);

  /** Node constructors can set the type of a node */
  setType(t, int type);

  String getText(t);

  /** Node constructors can set the text of a node */
  setText(t, String text);

  /** Return the token from which this node was created.
   *  Currently used only for printing an error message.
   *  The error display routine in [BaseRecognizer] needs to
   *  display where the input the error occurred. If your
   *  tree of limitation does not store information that can
   *  lead you to the token, you can create a token filled with
   *  the appropriate information and pass that back.  See
   *  BaseRecognizer.getErrorMessage().
   */
  Token getToken(t);

  /** Where are the bounds in the input token stream for this node and
   *  all children?  Each rule that creates AST nodes will call this
   *  method right before returning.  Flat trees (i.e., lists) will
   *  still usually have a nil root node just to hold the children list.
   *  That node would contain the start/stop indexes then.
   */
  setTokenBoundaries(t, Token startToken, Token stopToken);

  /** Get the token start index for this subtree; return -1 if no such index */
  int getTokenStartIndex(t);

  /** Get the token stop index for this subtree; return -1 if no such index */
  int getTokenStopIndex(t);

  /** Get a child 0..n-1 node */
  getChild(t, int i);

  /** Set ith child (0..n-1) to t; t must be non-null and non-nil node */
  setChild(t, int i, child);

  /** Remove ith child and shift children down from right. */
  deleteChild(t, int i);

  /** How many children?  If 0, then this is a leaf node */
  int getChildCount(t);

  /** Who is the parent node of this node; if null, implies node is root.
   *  If your node type doesn't handle this, it's ok but the tree rewrites
   *  in tree parsers need this functionality.
   */
  getParent(t);
  
  setParent(t, parent);

  /** What index is this node in the child list? Range: 0..n-1
   *  If your node type doesn't handle this, it's ok but the tree rewrites
   *  in tree parsers need this functionality.
   */
  int getChildIndex(t);
  
  setChildIndex(t, int index);

  /** Replace from start to stop child index of parent with t, which might
   *  be a list.  Number of children may be different
   *  after this call.
   *
   *  If parent is null, don't do anything; must be at root of overall tree.
   *  Can't replace whatever points to the parent externally.  Do nothing.
   */
  replaceChildren(parent, int startChildIndex, int stopChildIndex, t);
  
}


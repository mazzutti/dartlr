part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A stream of tree nodes, accessing nodes from a tree of some kind */
class TreeNodeStream extends IntStream { 

  /** Where is this stream pulling nodes from?  This is not the name, but
   *  the object that provides node objects.
   */
  Object get treeSource;

  /** If the tree associated with this stream was created from a TokenStream,
   *  you can specify it here.  Used to do rule $text attribute in tree
   *  parser.  Optional unless you use tree parser rule text attribute
   *  or  rewrite=true option.
   */
  TokenStream get tokenStream;
  
  void set tokenStream(TokenStream t);

  /** What adaptor can tell me how to interpret/navigate nodes and
   *  trees.  E.g., get text of a node.
   */
  TreeAdaptor get treeAdaptor;

  /** As we flatten the tree, we use UP, DOWN nodes to represent
   *  the tree structure.  When debugging we need unique nodes
   *  so we have to instantiate new ones.  When doing normal tree
   *  parsing, it's slow and a waste of memory to create unique
   *  navigation nodes.  Default should be false;
   */
  void set uniqueNavigationNodes(bool uniqueNavigationNodes);
  
  /** Get a tree node at an absolute index i; 0..n-1.
   *  If you don't want to buffer up nodes, then this method makes no
   *  sense for you.
   */
  Object at(int i);  
  
  /** Get tree node at current input pointer + i ahead where i=1 is next node.
   *  i < 0 indicates nodes in the past.  So LT(-1) is previous node, but
   *  implementations are not required to provide results for k < -1.
   *  LT(0) is undefined.  For i >= n, return null.
   *  Return null for LT(0) and any index that results in an absolute address
   *  that is negative.
   *
   *  This is analogus to the LT() method of the TokenStream, but this
   *  returns a tree node instead of a token.  Makes code gen identical
   *  for both parser and tree grammars. :)
   */
  Object LT(int k);

  /** Reset the tree node stream in such a way that it acts like
   *  a freshly constructed stream.
   */
  void reset();

  String toString([Object start, Object stop]);
  
  /** Replace from start to stop child index of parent with t, which might
   *  be a list.  Number of children may be different
   *  after this call.  The stream is notified because it is walking the
   *  tree and might need to know you are monkeying with the underlying
   *  tree.  Also, it might be able to modify the node stream to avoid
   *  restreaming for future phases.
   *
   *  If parent is null, don't do anything; must be at root of overall tree.
   *  Can't replace whatever points to the parent externally.  Do nothing.
   */
  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t);
}


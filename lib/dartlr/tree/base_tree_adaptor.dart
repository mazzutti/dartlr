// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** A TreeAdaptor that works with any Tree implementation. */
abstract class BaseTreeAdaptor implements TreeAdaptor {
  
  Map _treeToUniqueIDMap;
  int _uniqueNodeID = 1;

  nil() => createTreeNode(null);

  /** create tree node that holds the start and stop tokens associated
   *  with an error.
   *
   *  If you specify your own kind of tree nodes, you will likely have to
   *  override this method. CommonTree returns Token.INVALID_TOKEN_TYPE
   *  if no token payload but you might have to set token type for diff
   *  node type.
   *
   *  You don't have to subclass [CommonErrorNode]; you will likely need to
   *  subclass your own tree node class to avoid class cast exception.
   */
  errorNode(TokenStream input, 
                   Token start, 
                   Token stop, 
                   RecognitionException e) {
    CommonErrorNode t = new CommonErrorNode(input, start, stop, e);    
    return t;
  }

  bool isNil(tree) => (tree as Tree).isNil;

  /** This is generic in the sense that it will work with any kind of
   *  tree (not just [Tree] interface).  It invokes the adaptor routines
   *  not the tree node routines to do the construction.  
   */
  dupTree(t, [parent = null]) {
    if (t == null) return null; 
    var newTree = dupNode(t);
    setChildIndex(newTree, getChildIndex(t));
    setParent(newTree, parent);
    int n = getChildCount(t);
    for (int i = 0; i < n; i++) {
      var child = getChild(t, i);
      var newSubTree = dupTree(child, t);
      addChild(newTree, newSubTree);
    }
    return newTree;
  }

  /** Add a child to the tree t.  If child is a flat tree (a list), make all
  *  in list children of t.  Warning: if t has no children, but child does
  *  and child isNil then you can decide it is ok to move children to t via
  *  t.children = child.children; i.e., without copying the array.  Just
  *  make sure that this is consistent with have the user will build
  *  ASTs.
  */
  addChild(t, child) {
    if (t!= null && child != null) t.addChild(child);
  }

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
   becomeRoot(newRoot,  oldRoot) {
    Tree newRootTree = newRoot;
    Tree oldRootTree = oldRoot;
    if (oldRoot == null)
      return newRoot;
    if (newRootTree.isNil) {
        int nc = newRootTree.childCount;
        if (nc == 1) newRootTree = newRootTree.getChild(0);
        else if (nc > 1) {
        throw new StateError("more than one node as root");
      }
    }
    newRootTree.addChild(oldRootTree);
    return newRootTree;
  }

  /** Transform ^(nil x) to x and nil to null */
  rulePostProcessing(root) {
    Tree r = root;
    if (r != null && r.isNil) {
      if (r.childCount == 0)
        r = null;
      else if (r.childCount == 1) {
        r = r.getChild(0);
        r.parent = null;
        r.childIndex = -1;
      }
    }
    return r;
  }

  becomeRootFormToken(Token newRoot, oldRoot) {
    return becomeRoot(createTreeNode(newRoot), oldRoot);
  }
  
  create(int tokenType,  from, [String text]) {
    if(from is String){
      Token fromToken = createToken(tokenType, from);
      return createTreeNode(fromToken);
    } else {
      if(text == null) {
        from = createTokenFromToken(from);
        from.type = tokenType;
        return createTreeNode(from);
      } else {
        if (from == null) 
          return createFromTokenType(tokenType, text);
        from = createTokenFromToken(from);
        from.type = tokenType;
        from.text = text;      
        return createTreeNode(from);
      }
    }
  }

  createFromTokenType(int tokenType, String text) {
    Token fromToken = createToken(tokenType, text);
    Tree t = createTreeNode(fromToken);
    return t;
  }

  int getType(t) => t.type;
  setType(t, int type) =>throw new UnimplementedError("don't know enough about Tree node");

  String getText(t) => t.text;
  setText(t, String text) =>throw new UnimplementedError("don't know enough about Tree node");

  getChild(t, int i) => t.getChild(i);

  setChild(t, int i, child) => t.setChild(i,child);

  deleteChild(t, int i) => t.deleteChild(i);

  int getChildCount(t) => t.childCount;

  int getUniqueID(node) {
    if (_treeToUniqueIDMap == null )
       _treeToUniqueIDMap = new HashMap();
    int prevID = _treeToUniqueIDMap[node];
    if (prevID != null)
      return prevID;
    int ID = _uniqueNodeID;
    _treeToUniqueIDMap[node] = ID;
    _uniqueNodeID++;
    return ID;
  }
  
  /** Tell me how to create a token for use with imaginary token nodes.
   *  For example, there is probably no input symbol associated with imaginary
   *  token DECL, but you need to create it as a payload or whatever for
   *  the DECL node as in ^(DECL type ID).
   *
   *  This is a variant of createToken where the new token is derived from
   *  an actual real input token.  Typically this is for converting '{'
   *  tokens to BLOCK etc...  You'll see
   *
   *    r : lc='{' ID+ '}' -> ^(BLOCK[$lc] ID+) ;
   *
   *  If you care what the token payload objects' type is, you should
   *  override this method and any other createToken variant.
   */
  Token createTokenFromToken(Token fromToken);
  
  /** Tell me how to create a token for use with imaginary token nodes.
   *  For example, there is probably no input symbol associated with imaginary
   *  token DECL, but you need to create it as a payload or whatever for
   *  the DECL node as in ^(DECL type ID).
   *
   *  If you care what the token payload objects' type is, you should
   *  override this method and any other createToken variant.
   */
  Token createToken(int tokenType, String text);
  
}


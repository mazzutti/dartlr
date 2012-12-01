// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A generic tree implementation with no payload.  You must subclass to
 *  actually have any user data.  ANTLR v3 uses a list of children approach
 *  instead of the child-sibling approach in v2.  A flat tree (a list) is
 *  an empty node whose children represent the list.  An empty, but
 *  non-null node is called "nil".
 */
abstract class BaseTree extends Tree {
  
  List _children;
 
  /** Create a new node from an existing node does nothing for BaseTree
   *  as there are no fields other than the children list, which cannot
   *  be copied as the children are not considered part of this node.
   */
  BaseTree({Tree node:null, int charPos:-1}) {
    charPositionInLine = charPos;
  }
  
  /** Get the children internal List; note that if you directly mess with
   *  the list, do so at your own risk.
   */
  List get children => _children;

    
  /** Override in a subclass to change the impl of children list */
  List _createChildrenList() => new List();

  bool get isNil => false;
  
  Tree getChild(int i) {
    if (_children == null || i >= _children.length) return null;
    return _children[i];
  }  

  Tree getFirstChildWithType(int type) {
    for (int i = 0; _children != null && i < _children.length; i++) {
      Tree t = _children[i];
      if (t.type == type )
        return t;     
    }    
  }

  int get childCount  {
    if (_children == null)  return 0;
    return _children.length;
  }

  /** 
  *  Add t as child of this node.
  *  Warning: if t has no children, but child does
  *  and child isNil then this routine moves children to t via
  *  t.children = child.children; i.e., without copying the array.
  */
  addChild(Tree t) {
    if (t == null) return;
    BaseTree childTree = t;
    if ( childTree.isNil ) {
      if (_children != null && _children == childTree.children)
        throw new ArgumentError("attempt to add child list to itself");     
      if (childTree.children != null) {
        if (children != null) {
          int n = childTree.children.length;
          for (int i = 0; i < n; i++) {
            Tree c = childTree.children[i];
            _children.add(c);           
            c.parent = this;
            c.childIndex = _children.length - 1;
          }
        }
        else {         
          _children = childTree.children;
          freshenParentAndChildIndexes();
        }
      }
    }
    else {
      if (_children == null )
        _children = _createChildrenList();
      _children.add(t);
      childTree.parent = this;
      childTree.childIndex = _children.length - 1;
    }    
  }

  /** Add all elements of kids list as children of this node */
  addChildren(List kids) {
    for (int i = 0; i < kids.length; i++) {
      Tree t = kids[i];
      addChild(t);
    }
  }

  setChild(int i, Tree t) {
    if (t == null) return; 
    if (t.isNil)
      throw new ArgumentError("Can't set single child to a list");
    if (_children == null )
      _children = _createChildrenList();    
    _children[i] = t;
    t.parent = this;
    t.childIndex = i;
  }

  /** Insert child t at child position i (0..n-1) by shifting children
    i+1..n-1 to the right one position. Set parent / indexes properly
    but does NOT collapse nil-rooted t's that come in here like addChild.
 */
  insertChild(int i, t) {
    if (_children == null ) return;
    _children.insertRange(i, 1, t);    
    freshenParentAndChildIndexes(i);
  }

  deleteChild(int i) {
    if (_children == null) return null;
    Tree killed = _children[i];
    _children.removeRange(i, 1);    
    freshenParentAndChildIndexes(i);
    return killed;
  }

  /** Delete children from start to stop and replace with t even if t is
   *  a list (nil-root tree).  num of children can increase or decrease.
   *  For huge child lists, inserting children can force walking rest of
   *  children to set their childindex; could be slow.
   */
  replaceChildren(int startChildIndex, int stopChildIndex, t) {
    if (_children == null )
      throw new ArgumentError("indexes invalid; no children in list");
    int replacingHowMany = stopChildIndex - startChildIndex + 1;
    int replacingWithHowMany;
    BaseTree newTree = t;
    List newChildren = null;
    if (newTree.isNil)
      newChildren = newTree.children;
    else {
      newChildren = new List();
      newChildren.add(newTree);
    }
    replacingWithHowMany = newChildren.length;
    int numNewChildren = newChildren.length;
    int delta = replacingHowMany - replacingWithHowMany;    
    if (delta == 0) {
      int j = 0;
      for (int i = startChildIndex; i <= stopChildIndex; i++) {
        BaseTree child = newChildren[j];
        _children[i] =  child;
        child.parent = this;
        child.childIndex = i;
        j++;
      }
    }
    else if ( delta > 0 ) {
      for (int j=0; j<numNewChildren; j++)
        _children[startChildIndex + j] = newChildren[j];     
      int indexToDelete = startChildIndex+numNewChildren;
      for (int c = indexToDelete; c <= stopChildIndex; c++)
        _children.removeRange(indexToDelete, 1);
      freshenParentAndChildIndexes(startChildIndex);
    }
    else {
      for (int j=0; j<replacingHowMany; j++)
        _children[startChildIndex + j] = newChildren[j];
      int numToInsert = replacingWithHowMany-replacingHowMany;
      for (int j=replacingHowMany; j<replacingWithHowMany; j++)
        _children.insertRange(startChildIndex + j, 1, newChildren[j]);
      freshenParentAndChildIndexes(startChildIndex);
    }  
  } 

  /** Set the parent and child index values for all child of t */
  freshenParentAndChildIndexes([int offset = 0]) {
    for (int c = offset; c < childCount; c++) {
      this[c]
        ..childIndex = c
        ..parent = this;
    }
  }
  
  freshenParentAndChildIndexesDeeply([int offset = 0]) {    
    for (int c = offset; c < childCount; c++) {
      (this[c] as BaseTree)
        ..childIndex = c
        ..parent = this
        ..freshenParentAndChildIndexesDeeply();
    }
  }

  sanityCheckParentAndChildIndexes([Tree parent = null, int i = -1]) {
    if (parent != this.parent)
      throw new ArgumentError("parents don't match; expected $parent found ${parent}");
    if (i != childIndex)
      throw new ArgumentError("child indexes don't match; expected $i found ${childIndex}");
    for (int c = 0; c < childCount; c++) {
      CommonTree child = getChild(c);
      child.sanityCheckParentAndChildIndexes(this, c);
    }
  }
  
  /** Walk upwards looking for ancestor with this token type. */
  bool hasAncestor(int ttype) => getAncestor(ttype) != null;

  /** Walk upwards and get first ancestor with this token type. */
  Tree getAncestor(int ttype) {
    Tree t = parent;
    while (t != null) {
      if (t.type == ttype) return t;
      t = t.parent;
    }
  }

  /** Return a list of all ancestors of this node.  The first node of
  *  list is the root and the last is the parent of this node.
  */
  List get ancestors {
    if (parent == null ) return null;
    List ancestors = [];
    Tree t = parent;
    while (t != null) {
      ancestors.insertRange(0, 1, t);
      t = t.parent;
    }
    return ancestors;
  }

  /** Print out a whole tree not just a node */
  String toStringTree() {
    if (children == null || children.length == 0)
      return toString();
    StringBuffer buf = new StringBuffer();
    if (!isNil) {
      buf.add("(");
      buf.add(toString());
      buf.add(' ');
    }
    for (int i = 0; children!=null && i < children.length; i++) {
      Tree t = _children[i];
      if (i > 0)
        buf.add(' ');
      buf.add(t.toStringTree());
    }
    if (!isNil)
      buf.add(")");
    return buf.toString();
  } 
  
  /** Override to say how a node (not a tree) should look as text */
  String toString();  
}


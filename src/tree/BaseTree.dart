// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
  BaseTree([Tree node]);
  
  /** Get the children internal List; note that if you directly mess with
   *  the list, do so at your own risk.
   */
  List get children() => this._children;

  /** BaseTree doesn't track child indexes. */
  int get childIndex() => 0;
  
  void set childIndex(int index){}

  /** BaseTree doesn't track parent pointers. */
  Tree get parent() => null; 
  
  void set parent(Tree t) {}
  
  int get line() => 0;

  int get charPositionInLine() => 0;
  
  /** Override in a subclass to change the impl of children list */
  List _createChildrenList() => new List();

  bool isNil() => false;
  
  Tree getChild(int i) {
    if (this._children == null || i >= this._children.length) return null;
    return this._children[i];
  }  

  Tree getFirstChildWithType(int type) {
    for (int i = 0; this._children != null && i < this._children.length; i++) {
      Tree t = this._children[i];
      if (t.type == type )
        return t;     
    }    
  }

  int getChildCount() {
    if (this._children == null)  return 0;
    return this._children.length;
  }

  /** 
  *  Add t as child of this node.
  *  Warning: if t has no children, but child does
  *  and child isNil then this routine moves children to t via
  *  t.children = child.children; i.e., without copying the array.
  */
  void addChild(Tree t) {
    if (t == null) return;
    BaseTree childTree = t;
    if ( childTree.isNil() ) {
      if (this._children != null && this._children == childTree.children)
        throw new Exception("attempt to add child list to itself");     
      if (childTree.children != null) {
        if (this.children != null) {
          int n = childTree.children.length;
          for (int i = 0; i < n; i++) {
            Tree c = childTree.children[i];
            this._children.add(c);           
            c.parent = this;
            c.childIndex = this._children.length - 1;
          }
        }
        else {         
          this._children = childTree.children;
          this.freshenParentAndChildIndexes();
        }
      }
    }
    else {
      if (this._children == null )
        this._children = this._createChildrenList();
      this._children.add(t);
      childTree.parent = this;
      childTree.childIndex = this._children.length - 1;
    }    
  }

  /** Add all elements of kids list as children of this node */
  void addChildren(List kids) {
    for (int i = 0; i < kids.length; i++) {
      Tree t = kids[i];
      this.addChild(t);
    }
  }

  void setChild(int i, Tree t) {
    if (t == null) return; 
    if (t.isNil())
      throw new IllegalArgumentException("Can't set single child to a list");
    if (this._children == null )
      this._children = this._createChildrenList();    
    this._children[i] = t;
    t.parent = this;
    t.childIndex = i;
  }

  /** Insert child t at child position i (0..n-1) by shifting children
    i+1..n-1 to the right one position. Set parent / indexes properly
    but does NOT collapse nil-rooted t's that come in here like addChild.
 */
  void insertChild(int i, Object t) {
    if (this._children == null ) return;
    this._children.insertRange(i, 1, t);    
    this.freshenParentAndChildIndexes(i);
  }

  Object deleteChild(int i) {
    if (this._children == null) return null;
    Tree killed = this._children[i];
    this._children.removeRange(i, 1);    
    this.freshenParentAndChildIndexes(i);
    return killed;
  }

  /** Delete children from start to stop and replace with t even if t is
   *  a list (nil-root tree).  num of children can increase or decrease.
   *  For huge child lists, inserting children can force walking rest of
   *  children to set their childindex; could be slow.
   */
  void replaceChildren(int startChildIndex, int stopChildIndex, Object t) {
    if (this._children == null )
      throw new IllegalArgumentException("indexes invalid; no children in list");
    int replacingHowMany = stopChildIndex - startChildIndex + 1;
    int replacingWithHowMany;
    BaseTree newTree = t;
    List newChildren = null;
    if (newTree.isNil())
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
        this._children[i] =  child;
        child.parent = this;
        child.childIndex = i;
        j++;
      }
    }
    else if ( delta > 0 ) {
      for (int j=0; j<numNewChildren; j++)
        this._children[startChildIndex + j] = newChildren[j];     
      int indexToDelete = startChildIndex+numNewChildren;
      for (int c = indexToDelete; c <= stopChildIndex; c++)
        this._children.removeRange(indexToDelete, 1);
      freshenParentAndChildIndexes(startChildIndex);
    }
    else {
      for (int j=0; j<replacingHowMany; j++)
        this._children[startChildIndex + j] = newChildren[j];
      int numToInsert = replacingWithHowMany-replacingHowMany;
      for (int j=replacingHowMany; j<replacingWithHowMany; j++)
        this._children.insertRange(startChildIndex + j, 1, newChildren[j]);
      freshenParentAndChildIndexes(startChildIndex);
    }  
  } 

  /** Set the parent and child index values for all child of t */
  void freshenParentAndChildIndexes([int offset = 0]) {
    int n = getChildCount();
    for (int c = offset; c < n; c++) {
      Tree child = getChild(c);
      child.childIndex = c;
      child.parent = this;
    }
  }
  
  void freshenParentAndChildIndexesDeeply([int offset = 0]) {
    int n = getChildCount();
    for (int c = offset; c < n; c++) {
      BaseTree child = getChild(c);
      child.childIndex = c;
      child.parent = this;
      child.freshenParentAndChildIndexesDeeply();
    }
  }

  void sanityCheckParentAndChildIndexes([Tree parent = null, int i = -1]) {
    if (parent != this.parent)
      throw new Exception("parents don't match; expected $parent found ${this.parent}");
    if (i != this.childIndex)
      throw new Exception("child indexes don't match; expected $i found ${this.childIndex}");
    int n = this.getChildCount();
    for (int c = 0; c < n; c++) {
      CommonTree child = this.getChild(c);
      child.sanityCheckParentAndChildIndexes(this, c);
    }
  }
  
  /** Walk upwards looking for ancestor with this token type. */
  bool hasAncestor(int ttype) => this.getAncestor(ttype) != null;

  /** Walk upwards and get first ancestor with this token type. */
  Tree getAncestor(int ttype) {
    Tree t = this;
    t = t.parent;
    while (t != null) {
      if (t.type == ttype) return t;
      t = t.parent;
    }
  }

  /** Return a list of all ancestors of this node.  The first node of
  *  list is the root and the last is the parent of this node.
  */
  List getAncestors() {
    if (this.parent == null ) return null;
    List ancestors = new List();
    Tree t = this;
    t = t.parent;
    while (t != null) {
      ancestors.insertRange(0, 1, t);
      t = t.parent;
    }
    return ancestors;
  }

  /** Print out a whole tree not just a node */
  String toStringTree() {
    if (this.children == null || this.children.length == 0)
      return this.toString();
    StringBuffer buf = new StringBuffer();
    if (!this.isNil()) {
      buf.add("(");
      buf.add(this.toString());
      buf.add(' ');
    }
    for (int i = 0; children!=null && i < this.children.length; i++) {
      Tree t = this._children[i];
      if (i > 0)
        buf.add(' ');
      buf.add(t.toStringTree());
    }
    if (!this.isNil())
      buf.add(")");
    return buf.toString();
  } 
  
  /** Override to say how a node (not a tree) should look as text */
  abstract String toString();
  
}


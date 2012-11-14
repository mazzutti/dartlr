part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Return a node stream from a doubly-linked tree whose nodes
 *  know what child index they are.  No remove() is supported.
 *
 *  Emit navigation nodes (DOWN, UP, and EOF) to let show tree structure.
 */
class TreeIterator implements Iterator {
  
  TreeAdaptor _adaptor;
  Object _root;
  Object _tree;
  bool _firstTime = true;
  
  /** If we emit UP/DOWN nodes, we need to spit out multiple nodes per
   *  next() call.
   */
  FastQueue _nodes;

  Object up;
  Object down;
  Object eof;
 
  TreeIterator(this._tree, [this._adaptor]) {
    if(this._adaptor == null)  
      this._adaptor = new CommonTreeAdaptor();     
    this._root = this._tree;
    this._nodes = new FastQueue();
    this.down = this._adaptor.createFromTokenType(Token.DOWN, "DOWN");
    this.up = this._adaptor.createFromTokenType(Token.UP, "UP");
    this.eof = this._adaptor.createFromTokenType(Token.EOF, "EOF");
  }

  void reset() {
    this._firstTime = true;
    this._tree = this._root;
    this._nodes.clear();
  }

  bool hasNext() {
    if (this._firstTime) return this._root != null;
    if (this._nodes != null && this._nodes.size() > 0) return true;
    if (this._tree == null) return false;
    if (this._adaptor.getChildCount(this._tree) > 0) return true;
    return this._adaptor.getParent(this._tree) != null;
  }

  Object next() {
      if (this._firstTime) {
        this._firstTime = false;
        if (this._adaptor.getChildCount(this._tree) == 0) { 
          this._nodes.add(this.eof);
          return this._tree;
        }
        return this._tree;
      }
      if (this._nodes != null && this._nodes.size() > 0) return this._nodes.remove();
      if (this._tree == null) return this.eof;
      if (this._adaptor.getChildCount(this._tree) > 0) {
        this._tree = this._adaptor.getChild(this._tree, 0);
        this._nodes.add(this._tree); 
        return this.down;
      }
      Object parent = this._adaptor.getParent(this._tree);
      while (parent != null && this._adaptor.getChildIndex
            (this._tree) + 1 >= this._adaptor.getChildCount(parent)){
        this._nodes.add(this.up);
        this._tree = parent;
        parent = this._adaptor.getParent(this._tree);
      }
      if (parent == null) {
        this._tree = null;
        this._nodes.add(this.eof);
        return this._nodes.remove();
      }
      int nextSiblingIndex = this._adaptor.getChildIndex(this._tree) + 1;
      this._tree = this._adaptor.getChild(parent, nextSiblingIndex);
      this._nodes.add(this._tree);
      return this._nodes.remove();
  }
}


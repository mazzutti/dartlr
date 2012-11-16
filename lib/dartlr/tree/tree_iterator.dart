// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
    if(_adaptor == null)  
      _adaptor = new CommonTreeAdaptor();     
    _root = _tree;
    _nodes = new FastQueue();
    down = _adaptor.createFromTokenType(Token.DOWN, "DOWN");
    up = _adaptor.createFromTokenType(Token.UP, "UP");
    eof = _adaptor.createFromTokenType(Token.EOF, "EOF");
  }

  void reset() {
    _firstTime = true;
    _tree = _root;
    _nodes.clear();
  }

  bool get hasNext {
    if (_firstTime) return _root != null;
    if (_nodes != null && _nodes.size > 0) return true;
    if (_tree == null) return false;
    if (_adaptor.getChildCount(_tree) > 0) return true;
    return _adaptor.getParent(_tree) != null;
  }

  Object next() {
    if (_firstTime) {
      _firstTime = false;
      if (_adaptor.getChildCount(_tree) == 0) { 
        _nodes.add(eof);
        return _tree;
      }
      return _tree;
    }
    if (_nodes != null && _nodes.size > 0) return _nodes.remove();
    if (_tree == null) return eof;
    if (_adaptor.getChildCount(_tree) > 0) {
      _tree = _adaptor.getChild(_tree, 0);
      _nodes.add(_tree); 
      return down;
    }
    Object parent = _adaptor.getParent(_tree);
    while (parent != null && _adaptor.getChildIndex
          (_tree) + 1 >= _adaptor.getChildCount(parent)){
      _nodes.add(up);
      _tree = parent;
      parent = _adaptor.getParent(_tree);
    }
    if (parent == null) {
      _tree = null;
      _nodes.add(eof);
      return _nodes.remove();
    }
    int nextSiblingIndex = _adaptor.getChildIndex(_tree) + 1;
    _tree = _adaptor.getChild(parent, nextSiblingIndex);
    _nodes.add(_tree);
    return _nodes.remove();
  }
}


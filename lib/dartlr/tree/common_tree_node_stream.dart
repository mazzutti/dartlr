// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class CommonTreeNodeStream extends LookaheadStream<Object> implements TreeNodeStream {
  
  static final int DEFAULT_INITIAL_BUFFER_SIZE = 100;
  static final int INITIAL_CALL_STACK_SIZE = 10;

  /** Pull nodes from which tree? */
  var _root;
  
  /** If this tree (root) was created from a token stream, track it. */
  TokenStream tokenStream;
  
  /** What tree adaptor was used to build these trees */
  TreeAdaptor treeAdaptor;
  
  bool uniqueNavigationNodes;
    
  /** The tree iterator we using */
  TreeIterator _it;
  
  /** Stack of indexes used for push/pop calls */
  IntArray _calls;
  
  /** Tree (nil A B C) trees like flat A B C streams */
  bool _hasNilRoot = false;
  
  /** Tracks tree depth.  Level=0 means we're at root node level. */
  int _level = 0;

  CommonTreeNodeStream(this._root, [this.treeAdaptor]) {
    if(treeAdaptor == null) 
      treeAdaptor = new CommonTreeAdaptor();
    _it = new TreeIterator(_root, treeAdaptor);
  }

  void reset() {
      super.reset();
      _it.reset();
      _hasNilRoot = false;
      _level = 0;
      if (_calls != null) _calls.clear();
  }

  /** Pull elements from tree iterator.  Track tree level 0..max_level.
  *  If nil rooted tree, don't give initial nil and DOWN nor final UP.
  */
  nextElement() {
    var t = _it.next();   
    if (t == _it.up) {
      _level--;
      if (_level == 0 && _hasNilRoot) 
        return _it.next(); 
    }
    else if (t == _it.down) 
      _level++;
    if (_level == 0 && treeAdaptor.isNil(t)) { 
      _hasNilRoot = true;
      t = _it.next();
      _level++;
      t = _it.next();
    }
    return t;
  }

  bool isEOF(o) => treeAdaptor.getType(o) == Token.EOF;

  get treeSource => _root;
  
  String get sourceName => tokenStream.sourceName;
    

  at(int i) {
    throw new UnsupportedError(
      "Absolute node indexes are meaningless in an unbuffered stream");
  }

  int LA(int i) => treeAdaptor.getType(LT(i));
  
  
  /** Make stream jump to a new location, saving old location.
   *  Switch back with pop().
   */
  void push(int i) {
    if (_calls == null)
      _calls = new IntArray();
    _calls.push(_p);
    seek(i);
  }

  /** Seek back to previous index saved during last push() call.
  *  Return top of stack (return index).
  */
  int pop() {
    int ret = _calls.pop();
    seek(ret);
    return ret;
  }

  void replaceChildren(parent, int startChildIndex, int stopChildIndex, t) {
    if (parent != null)
      treeAdaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  String toString([start, stop]) => "n/a";

  /** For debugging; destructive: moves tree iterator to end. */
  String toTokenTypeString() {
    reset();
    StringBuffer buf = new StringBuffer();
    var o = LT(1);
    int type = treeAdaptor.getType(o);
    while (type != Token.EOF) {
        buf.add(" ");
        buf.add(type);
        consume();
        o = LT(1);
        type = treeAdaptor.getType(o);
    }
    return buf.toString();
  }
}


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class CommonTreeNodeStream extends LookaheadStream<Object> implements TreeNodeStream {
  
  static final int DEFAULT_INITIAL_BUFFER_SIZE = 100;
  static final int INITIAL_CALL_STACK_SIZE = 10;

  /** Pull nodes from which tree? */
  Object _root;
  
  /** If this tree (root) was created from a token stream, track it. */
  TokenStream _tokens;
  
  /** What tree adaptor was used to build these trees */
  TreeAdaptor adaptor;
  
  /** The tree iterator we using */
  TreeIterator _it;
  
  /** Stack of indexes used for push/pop calls */
  IntArray _calls;
  
  /** Tree (nil A B C) trees like flat A B C streams */
  bool _hasNilRoot = false;
  
  /** Tracks tree depth.  Level=0 means we're at root node level. */
  int _level = 0;

  CommonTreeNodeStream(this._root, [this.adaptor]) {
    if(this.adaptor == null) 
      this.adaptor = new CommonTreeAdaptor();
    this._it = new TreeIterator(this._root, this.adaptor);
  }

  void reset() {
      super.reset();
      this._it.reset();
      this._hasNilRoot = false;
      this._level = 0;
      if (this._calls != null) this._calls.clear();
  }

  /** Pull elements from tree iterator.  Track tree level 0..max_level.
  *  If nil rooted tree, don't give initial nil and DOWN nor final UP.
  */
  Object nextElement() {
    Object t = this._it.next();   
    if (t == this._it.up) {
      this._level--;
      if (this._level == 0 && this._hasNilRoot) 
        return this._it.next(); 
    }
    else if (t == this._it.down) 
      this._level++;
    if (this._level == 0 && this.adaptor.isNil(t)) { 
      this._hasNilRoot = true;
      t = this._it.next();
      this._level++;
      t = this._it.next();
    }
    return t;
  }

  bool isEOF(Object o) => this.adaptor.getType(o) == Token.EOF;

  void set uniqueNavigationNodes(bool uniqueNavigationNodes){}

  Object get treeSource() => this._root;
  
  String get sourceName() => this.tokenStream.sourceName;
  
  TokenStream get tokenStream() => this._tokens;
  
  void set tokenStream(TokenStream tokens) { 
    this._tokens = tokens; 
  }
  
  TreeAdaptor get treeAdaptor() => this.adaptor;
  
  void set treeAdaptor(TreeAdaptor a) { 
    this.adaptor = a; 
  }

  Object at(int i) {
    throw new UnsupportedOperationException(
      "Absolute node indexes are meaningless in an unbuffered stream");
  }

  int LA(int i) => this.adaptor.getType(LT(i));
  
  
  /** Make stream jump to a new location, saving old location.
   *  Switch back with pop().
   */
  void push(int i) {
    if (this._calls == null)
      this._calls = new IntArray();
    this._calls.push(this._p);
    this.seek(i);
  }

  /** Seek back to previous index saved during last push() call.
  *  Return top of stack (return index).
  */
  int pop() {
    int ret = this._calls.pop();
    this.seek(ret);
    return ret;
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    if (parent != null)
      this.adaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  String toString([Object start, Object stop]) => "n/a";

  /** For debugging; destructive: moves tree iterator to end. */
  String toTokenTypeString() {
    this.reset();
    StringBuffer buf = new StringBuffer();
    Object o = this.LT(1);
    int type = this.adaptor.getType(o);
    while (type != Token.EOF) {
        buf.add(" ");
        buf.add(type);
        this.consume();
        o = this.LT(1);
        type = this.adaptor.getType(o);
    }
    return buf.toString();
  }
}


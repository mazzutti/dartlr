part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A buffered stream of tree nodes.  Nodes can be from a tree of ANY kind.
 *
 *  This node stream sucks all nodes out of the tree specified in
 *  the constructor during construction and makes pointers into
 *  the tree using an array of Object pointers. The stream necessarily
 *  includes pointers to DOWN and UP and EOF nodes.
 *
 *  This stream knows how to mark/release for backtracking.
 *
 *  This stream is most suitable for tree interpreters that need to
 *  jump around a lot or for tree parsers requiring speed (at cost of memory).
 *
 */
class BufferedTreeNodeStream implements TreeNodeStream {
  
  static const int DEFAULT_INITIAL_BUFFER_SIZE = 100;
  static const int INITIAL_CALL_STACK_SIZE = 10;
  
  Object _down;
  Object _up;
  Object _eof;
  
  /** The complete mapping from stream index to tree node.
   *  This buffer includes pointers to DOWN, UP, and EOF nodes.
   *  It is built upon ctor invocation.  The elements are type
   *  Object as we don't what the trees look like.
   *
   *  Load upon first need of the buffer so we can set token types
   *  of interest for reverseIndexing.  Slows us down a wee bit to
   *  do all of the if p == -1 testing everywhere though.
   */
  List _nodes;
  
  /** Pull nodes from which tree? */
  Object _root;
  
  /** IF this tree (root) was created from a token stream, track it. */
  TokenStream _tokens;
  
  /** What tree adaptor was used to build these trees */
  TreeAdaptor _adaptor;
  
  /** Reuse same DOWN, UP navigation nodes unless this is true */
  bool _uniqueNavigationNodes = false;
  
  /** The index into the nodes list of the current node (next node
   *  to consume).  If -1, nodes array not filled yet.
   */
  int _p = -1;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  
  /** Stack of indexes used for push/pop calls */
  IntArray _calls;

  BufferedTreeNodeStream(this._root, [this._adaptor, 
        int initialBufferSize = DEFAULT_INITIAL_BUFFER_SIZE]) {    
    if(this._adaptor == null) this._adaptor = new CommonTreeAdaptor();
    this._nodes = new List(initialBufferSize);
    this._down = this._adaptor.createFromTokenType(Token.DOWN, "DOWN");
    this._up = this._adaptor.createFromTokenType(Token.UP, "UP");
    this._eof = this._adaptor.createFromTokenType(Token.EOF, "EOF");
  }

  /** Walk tree with depth-first-search and fill nodes buffer.
   *  Don't do DOWN, UP nodes if its a list (t is isNil).
   */
  void _fillBuffer() {
    this.fillBuffer(this._root);
    this._p = 0;
  }

  void fillBuffer([Object t]) {
    bool nil = this._adaptor.isNil(t);
    if (!nil)
      this._nodes.add(t);
    int n = this._adaptor.getChildCount(t);
    if (!nil && n > 0 )
      this._addNavigationNode(Token.DOWN);
    for (int c = 0; c < n; c++) {
      Object child = this._adaptor.getChild(t,c);
      this.fillBuffer(child);
    }
    if (!nil && n > 0)
      this._addNavigationNode(Token.UP);
  }

  /** What is the stream index for node? 0..n-1
      *  Return -1 if node not found.
      */
  int _getNodeIndex(Object node) {
    if (this._p == -1)
      this._fillBuffer();
    for (int i = 0; i < this._nodes.length; i++) {
      Object t = this._nodes[i];
      if (t == node)
        return i;
    }
    return -1;
  }

  /** As we flatten the tree, we use UP, DOWN nodes to represent
  *  the tree structure.  When debugging we need unique nodes
  *  so instantiate new ones when _uniqueNavigationNodes is true.
  */
  void _addNavigationNode(final int ttype) {
    Object navNode = null;
    if (ttype == Token.DOWN )
      if (this.hasUniqueNavigationNodes())
        navNode = this._adaptor.createFromTokenType(Token.DOWN, "DOWN");
      else
        navNode = this._down;
    else
      if (this.hasUniqueNavigationNodes())
        navNode = this._adaptor.createFromTokenType(Token.UP, "UP");
      else
        navNode = this._up;    
    this._nodes.add(navNode);
  }

  Object at(int i) {
    if (this._p == -1)
      this._fillBuffer();
    return this._nodes[i];
  }

  Object LT(int k) {
    if (this._p == -1) this._fillBuffer();
    if (k == 0) return null; 
    if (k < 0) return this._LB(-k);
    if ((this._p + k - 1) >= this._nodes.length) return this._eof;
    return this._nodes[this._p + k - 1];
  }

  Object getCurrentSymbol() => this.LT(1);

  /** Look backwards k nodes */
  Object _LB(int k) {
    if (k == 0) return null;
    if ((this._p -k) < 0) return null;
    return this._nodes[this._p - k];
  }

  Object get treeSource => this._root;

  String get sourceName => this.tokenStream.sourceName;

  TokenStream get tokenStream => this._tokens;

  void set tokenStream(TokenStream tokens) {
    this._tokens = tokens;
  }

  TreeAdaptor get treeAdaptor => this._adaptor;

  void set treeAdaptor(TreeAdaptor adaptor) {
    this._adaptor = adaptor;
  }

  bool hasUniqueNavigationNodes() => this._uniqueNavigationNodes;

  void set uniqueNavigationNodes(bool uniqueNavigationNodes) {
    this.uniqueNavigationNodes = uniqueNavigationNodes;
  }

  void consume() {
    if (this._p == -1)
      this._fillBuffer();
    this._p++;
  }

  int LA(int i) => this._adaptor.getType(LT(i));

  int mark() {
    if (this._p == -1)
      this._fillBuffer();
    this._lastMarker = this.index;
    return this._lastMarker;
  }

  void release(int marker) {}

  int get index => this._p;

  void rewind([int marker]) {
    if(marker == null) marker = this._lastMarker;
    this.seek(marker);
  }

  void seek(int index) {
    if (this._p == -1)
      this._fillBuffer();
    this._p = index;
  }

  /** Make stream jump to a new location, saving old location.
  *  Switch back with pop().
  */
  void push(int index) {
    if (this._calls == null) 
      this._calls = new IntArray();
    this._calls.push(this._p);
    this.seek(index);
  }

  /** Seek back to previous index saved during last push() call.
  *  Return top of stack (return index).
  */
  int pop() {
    int ret = this._calls.pop();
    this.seek(ret);
    return ret;
  }

  void reset() {
    this._p = 0;
    this._lastMarker = 0;
    if (this._calls != null)
      this._calls.clear();
  }

  int get size {
    if (this._p == -1)
      this.fillBuffer();
    return this._nodes.length;
  }

  Iterator iterator() {
    if (this._p == -1)
      this.fillBuffer();
    return new _StreamIterator(this._nodes, this._eof);
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    if (parent != null)
      this._adaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  /** Used for testing, just return the token type stream */
  String toTokenTypeString() {
    if (this._p == -1)
      fillBuffer();
    StringBuffer buf = new StringBuffer();
    for (int i = 0; i < this._nodes.length; i++) {
      Object t = this._nodes[i];
      buf.add(" ");
      buf.add(this._adaptor.getType(t));
    }
    return buf.toString();
  }

  String toRangeString(int start, int stop) {
    if (this._p == -1)
      this.fillBuffer();
    StringBuffer buf = new StringBuffer();
    for (int i = start; i < this._nodes.length && i <= stop; i++) {
      Object t = this._nodes[i];
      buf.add(" ");
      buf.add(this._adaptor.getToken(t));
    }
    return buf.toString();
  }

  String toString([Object start, Object stop]) {
    print("toString");
    if (start == null || stop == null) return null;
    if (this._p == -1) this.fillBuffer();
    if (start is CommonTree )
      print("toString: ${start.token}, ");
    else print("$start");
    if (stop is CommonTree) print("${stop.token}");
    else print("$stop");    
    if (this._tokens != null) {
      int beginTokenIndex = this._adaptor.getTokenStartIndex(start);
      int endTokenIndex = this._adaptor.getTokenStopIndex(stop);      
      if (this._adaptor.getType(stop) == Token.UP)
        endTokenIndex = this._adaptor.getTokenStopIndex(start);
      else if (this._adaptor.getType(stop) == Token.EOF)
        endTokenIndex = this.size - 2;
      return this._tokens.toRangeString(beginTokenIndex, endTokenIndex);
    }    
    Object t = null;
    int i = 0;
    for (; i < this._nodes.length; i++) {
      t = this._nodes[i];
      if (t == start) break;
    }
    StringBuffer buf = new StringBuffer();
    t = this._nodes[i];
    while (t != stop) {
      String text = this._adaptor.getText(t);
      if (text == null) 
        text = " ${new String.fromCharCodes([this._adaptor.getType(t)])}";
      buf.add(text);
      i++;
      t = this._nodes[i];
    }
    String text = this._adaptor.getText(stop);
    if (text == null)
      text = " ${new String.fromCharCodes([this._adaptor.getType(stop)])}";
    buf.add(text);
    return buf.toString();
  }
}

class _StreamIterator implements Iterator {
  
  int i = 0;
  List _nodes;
  Object _eof;
  
  _StreamIterator(this._nodes, this._eof);
  
  bool hasNext() => i < this._nodes.length;

  Object next() {
    int current = i;
    i++;
    if (current < this._nodes.length)
      return this._nodes[current];
    return this._eof;
  }

  void remove() {
    throw new Exception("cannot remove nodes from stream");
  }
}


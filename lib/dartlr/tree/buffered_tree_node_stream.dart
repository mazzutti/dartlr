// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

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
  
  var _down;
  var _up;
  var _eof;
  
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
  var _root;
  
  /** IF this tree (root) was created from a token stream, track it. */
  TokenStream tokenStream;
  
  /** What tree adaptor was used to build these trees */
  TreeAdaptor treeAdaptor;
  
  /** Reuse same DOWN, UP navigation nodes unless this is true */
  bool uniqueNavigationNodes = false;
  
  /** The index into the nodes list of the current node (next node
   *  to consume).  If -1, nodes array not filled yet.
   */
  int _p = -1;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  
  /** Stack of indexes used for push/pop calls */
  IntArray _calls;

  BufferedTreeNodeStream(this._root, [this.treeAdaptor, 
        int initialBufferSize = DEFAULT_INITIAL_BUFFER_SIZE]) {    
    if(treeAdaptor == null) treeAdaptor = new CommonTreeAdaptor();
    _nodes = new List(initialBufferSize);
    _down = treeAdaptor.createFromTokenType(Token.DOWN, "DOWN");
    _up = treeAdaptor.createFromTokenType(Token.UP, "UP");
    _eof = treeAdaptor.createFromTokenType(Token.EOF, "EOF");
  }

  /** Walk tree with depth-first-search and fill nodes buffer.
   *  Don't do DOWN, UP nodes if its a list (t is isNil).
   */
  _fillBuffer() {
    fillBuffer(_root);
    _p = 0;
  }

  fillBuffer([t]) {
    bool nil = treeAdaptor.isNil(t);
    if (!nil)
      _nodes.add(t);
    int n = treeAdaptor.getChildCount(t);
    if (!nil && n > 0 )
      _addNavigationNode(Token.DOWN);
    for (int c = 0; c < n; c++) {
      var child = treeAdaptor.getChild(t,c);
      fillBuffer(child);
    }
    if (!nil && n > 0)
      _addNavigationNode(Token.UP);
  }

  /** What is the stream index for node? 0..n-1
      *  Return -1 if node not found.
      */
  int _getNodeIndex(node) {
    if (_p == -1)
    _fillBuffer();
    return _nodes.indexOf(node);
  }

  /** As we flatten the tree, we use UP, DOWN nodes to represent
  *  the tree structure.  When debugging we need unique nodes
  *  so instantiate new ones when _uniqueNavigationNodes is true.
  */
  _addNavigationNode(final int ttype) {
    var navNode = null;
    if (ttype == Token.DOWN )
      if (uniqueNavigationNodes)
        navNode = treeAdaptor.createFromTokenType(Token.DOWN, "DOWN");
      else
        navNode = _down;
    else
      if (uniqueNavigationNodes)
        navNode = treeAdaptor.createFromTokenType(Token.UP, "UP");
      else
        navNode = _up;    
    _nodes.add(navNode);
  }

  at(int i) {
    if (_p == -1)
      _fillBuffer();
    return _nodes[i];
  }

  LT(int k) {
    if (_p == -1) _fillBuffer();
    if (k == 0) return null; 
    if (k < 0) return _LB(-k);
    if ((_p + k - 1) >= _nodes.length) return _eof;
    return _nodes[_p + k - 1];
  }

  getCurrentSymbol() => LT(1);

  /** Look backwards k nodes */
  _LB(int k) {
    if (k == 0) return null;
    if ((_p -k) < 0) return null;
    return _nodes[_p - k];
  }

  get treeSource => _root;

  String get sourceName => tokenStream.sourceName;

  consume() {
    if (_p == -1)
      _fillBuffer();
    _p++;
  }

  int LA(int i) => treeAdaptor.getType(LT(i));

  int mark() {
    if (_p == -1)
      _fillBuffer();
    _lastMarker = index;
    return _lastMarker;
  }

  release(int marker) {}

  int get index => _p;

  rewind([int marker]) {
    if(marker == null) marker = _lastMarker;
    seek(marker);
  }

  seek(int index) {
    if (_p == -1)
      _fillBuffer();
    _p = index;
  }

  /** Make stream jump to a new location, saving old location.
  *  Switch back with pop().
  */
  push(int index) {
    if (_calls == null) 
      _calls = new IntArray();
    _calls.push(_p);
    seek(index);
  }

  /** Seek back to previous index saved during last push() call.
  *  Return top of stack (return index).
  */
  int pop() {
    int ret = _calls.pop();
    seek(ret);
    return ret;
  }

  reset() {
    _p = 0;
    _lastMarker = 0;
    if (_calls != null)
      _calls.clear();
  }

  int get size {
    if (_p == -1)
      fillBuffer();
    return _nodes.length;
  }

  Iterator iterator() {
    if (_p == -1)
      fillBuffer();
    return new _StreamIterator(_nodes, _eof);
  }

  replaceChildren(parent, int startChildIndex, int stopChildIndex, t) {
    if (parent != null)
      treeAdaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  /** Used for testing, just return the token type stream */
  String toTokenTypeString() {
    if (_p == -1)
      fillBuffer();
    StringBuffer buf = new StringBuffer();
    for (int i = 0; i < _nodes.length; i++) {
      var t = _nodes[i];
      buf.add(" ");
      buf.add(treeAdaptor.getType(t));
    }
    return buf.toString();
  }

  String toRangeString(int start, int stop) {
    if (_p == -1)
      fillBuffer();
    StringBuffer buf = new StringBuffer();
    for (int i = start; i < _nodes.length && i <= stop; i++) {
      var t = _nodes[i];
      buf.add(" ");
      buf.add(treeAdaptor.getToken(t));
    }
    return buf.toString();
  }

  String toString([start, stop]) {
    print("toString");
    if (start == null || stop == null) return null;
    if (_p == -1) fillBuffer();
    if (start is CommonTree )
      print("toString: ${start.token}, ");
    else print("$start");
    if (stop is CommonTree) print("${stop.token}");
    else print("$stop");    
    if (tokenStream != null) {
      int beginTokenIndex = treeAdaptor.getTokenStartIndex(start);
      int endTokenIndex = treeAdaptor.getTokenStopIndex(stop);      
      if (treeAdaptor.getType(stop) == Token.UP)
        endTokenIndex = treeAdaptor.getTokenStopIndex(start);
      else if (treeAdaptor.getType(stop) == Token.EOF)
        endTokenIndex = size - 2;
      return tokenStream.toRangeString(beginTokenIndex, endTokenIndex);
    }    
    var t = null;
    int i = 0;
    for (; i < _nodes.length; i++) {
      t = _nodes[i];
      if (t == start) break;
    }
    StringBuffer buf = new StringBuffer();
    t = _nodes[i];
    while (t != stop) {
      String text = treeAdaptor.getText(t);
      if (text == null) 
        text = " ${new String.fromCharCodes([treeAdaptor.getType(t)])}";
      buf.add(text);
      i++;
      t = _nodes[i];
    }
    String text = treeAdaptor.getText(stop);
    if (text == null)
      text = " ${new String.fromCharCodes([treeAdaptor.getType(stop)])}";
    buf.add(text);
    return buf.toString();
  }
}

class _StreamIterator implements Iterator {
  
  int i = 0;
  List _nodes;
  var _eof;
  
  _StreamIterator(this._nodes, this._eof);
  
  bool get hasNext => i < _nodes.length;

  next() {
    int current = i;
    i++;
    if (current < _nodes.length)
      return _nodes[current];
    return _eof;
  }

  remove() => throw new UnimplementedError("cannot remove nodes from stream");
}


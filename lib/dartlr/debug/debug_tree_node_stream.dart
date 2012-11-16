// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** Debug any tree node stream.  The constructor accepts the stream
 *  and a debug listener.  As node stream calls come in, debug events
 *  are triggered.
 */
class DebugTreeNodeStream implements TreeNodeStream {
  
  DebugEventListener _dbg;
  TreeAdaptor _adaptor;
  TreeNodeStream _input;
  bool _initialStreamState = true;

  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;

  DebugTreeNodeStream(this._input, this._dbg){
    _adaptor = _input.treeAdaptor;
    _input.uniqueNavigationNodes = true;
  }

  void set debugListener(DebugEventListener dbg) {
    _dbg = dbg;
  }

  TreeAdaptor get treeAdaptor => _adaptor;

  void consume() {
    Object node = _input.LT(1);
    _input.consume();
    _dbg.consumeNode(node);
  }

  Object at(int i) => _input.at(i);

  Object LT(int i) {
    Object node = _input.LT(i);
    int ID = _adaptor.getUniqueID(node);
    String text = _adaptor.getText(node);
    int type = _adaptor.getType(node);
    _dbg.LT(i, node);
    return node;
  }

  int LA(int i) {
    Object node = _input.LT(i);
    int ID = _adaptor.getUniqueID(node);
    String text = _adaptor.getText(node);
    int type = _adaptor.getType(node);
    _dbg.LT(i, node);
    return type;
  }

  int mark() {
    _lastMarker = _input.mark();
    _dbg.mark(_lastMarker);
    return _lastMarker;
  }

  int get index => _input.index;

  void rewind([int marker]) {
    if(marker == null)
      marker = _lastMarker; 
    _dbg.rewind(marker);
    _input.rewind(marker);
  }

  void release(int marker) {}

  void seek(int i) {
    _input.seek(i);
  }

  int get size => _input.size;

  void reset() {}

  Object get treeSource => _input;

  String get sourceName => tokenStream.sourceName;
  
  TokenStream get tokenStream =>  _input.tokenStream;
  
  void set tokenStream(TokenStream t) {
    _input.tokenStream = t;
  }
 
  void set uniqueNavigationNodes(bool uniqueNavigationNodes) {
    _input.uniqueNavigationNodes = uniqueNavigationNodes;
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    _input.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  String toString([Object start, Object stop]) {
    return _input.toString(start,stop);
  }
}


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    this._adaptor = this._input.treeAdaptor;
    this._input.uniqueNavigationNodes = true;
  }

  void set debugListener(DebugEventListener dbg) {
    this._dbg = dbg;
  }

  TreeAdaptor get treeAdaptor() => this._adaptor;

  void consume() {
    Object node = this._input.LT(1);
    this._input.consume();
    this._dbg.consumeNode(node);
  }

  Object at(int i) => this._input.at(i);

  Object LT(int i) {
    Object node = this._input.LT(i);
    int ID = this._adaptor.getUniqueID(node);
    String text = this._adaptor.getText(node);
    int type = this._adaptor.getType(node);
    this._dbg.LT(i, node);
    return node;
  }

  int LA(int i) {
    Object node = this._input.LT(i);
    int ID = this._adaptor.getUniqueID(node);
    String text = this._adaptor.getText(node);
    int type = this._adaptor.getType(node);
    this._dbg.LT(i, node);
    return type;
  }

  int mark() {
    this._lastMarker = this._input.mark();
    this._dbg.mark(this._lastMarker);
    return this._lastMarker;
  }

  int get index() => this._input.index;

  void rewind([int marker]) {
    if(marker == null)
      marker = this._lastMarker; 
    this._dbg.rewind(marker);
    this._input.rewind(marker);
  }

  void release(int marker) {}

  void seek(int i) {
    this._input.seek(i);
  }

  int get size() => this._input.size;

  void reset() {}

  Object get treeSource() => this._input;

  String get sourceName() => this.tokenStream.sourceName;

  TokenStream get tokenStream() => this._input.tokenStream;

 
  void set uniqueNavigationNodes(bool uniqueNavigationNodes) {
    this._input.uniqueNavigationNodes = uniqueNavigationNodes;
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    this._input.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  String toString([Object start, Object stop]) {
    return this._input.toString(start,stop);
  }
}


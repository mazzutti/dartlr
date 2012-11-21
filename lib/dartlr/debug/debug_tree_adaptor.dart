// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A [TreeAdaptor] proxy that fires debugging events to a [DebugEventListener]
 *  delegate and uses the [TreeAdaptor] delegate to do the actual work.  All
 *  AST events are triggered by this adaptor; no code gen changes are needed
 *  in generated rules.  Debugging events are triggered *after* invoking
 *  tree adaptor routines.
 *
 *  Trees created with actions in rewrite actions like "-> ^(ADD {foo} {bar})"
 *  cannot be tracked as they might not use the adaptor to create foo, bar.
 *  The debug listener has to deal with tree node IDs for which it did
 *  not see a createNode event.  A single <unknown> node is sufficient even
 *  if it represents a whole tree.
 */
class DebugTreeAdaptor implements TreeAdaptor {
  
  DebugEventListener _dbg;
  TreeAdaptor _adaptor;

  DebugTreeAdaptor(this._dbg, this._adaptor);

  createTreeNode(Token payload) {
    if (payload.tokenIndex < 0)      
      return create(payload.type, payload.text);
    var node = _adaptor.createTreeNode(payload);
    _dbg.createNode(node, payload);
    return node;
  }

  errorNode(TokenStream input, 
       Token start, Token stop, RecognitionException e) {
    var node = _adaptor.errorNode(input, start, stop, e);
    if (node != null)
      _dbg.errorNode(node);   
    return node;
  }

  dupTree(tree) {
    var t = _adaptor.dupTree(tree);
    _simulateTreeConstruction(t);
    return t;
  }

  _simulateTreeConstruction(t) {
    _dbg.createNode(t);
    int n = _adaptor.getChildCount(t);
    for (int i=0; i < n; i++) {
      var child = _adaptor.getChild(t, i);
      _simulateTreeConstruction(child);
      _dbg.addChild(t, child);
    }
  }

  dupNode(treeNode) {
    var d = _adaptor.dupNode(treeNode);
    _dbg.createNode(d);
    return d;
  }

  nil() {
    var node = _adaptor.nil();
    _dbg.nilNode(node);
    return node;
  }

  bool isNil(tree) {
    return _adaptor.isNil(tree);
  }

  addChild(t, child) {
    if (t == null || child == null) return;
    t = (t is Token) ? createTreeNode(child) : t;
    _adaptor.addChild(t,child);
    _dbg.addChild(t, child);
  }

  becomeRoot(newRoot, oldRoot) {    
    var n = _adaptor.becomeRoot(newRoot, oldRoot);
    _dbg.becomeRoot(newRoot, oldRoot);    
    return n;
  }
  
  becomeRootFormToken(Token newRoot, oldRoot) {
    var n = createTreeNode(newRoot);
    _adaptor.becomeRoot(n, oldRoot);
    _dbg.becomeRoot(newRoot, oldRoot);
    return n;
  }

  rulePostProcessing(root) {
    return _adaptor.rulePostProcessing(root);
  }

  create(int tokenType, fromToken, [String text]) {
    var node = _adaptor.create(tokenType, fromToken, text);
    _dbg.createNode(node);
    return node;
  }
  
  createFromTokenType(int tokenType, String text) {
    var node = _adaptor.createFromTokenType(tokenType, text);
    _dbg.createNode(node);
    return node;
  }

  int getType(t) {
    return _adaptor.getType(t);
  }

  setType(t, int type) {
    _adaptor.setType(t, type);
  }

  String getText(t) {
    return _adaptor.getText(t);
  }

  setText(t, String text) {
    _adaptor.setText(t, text);
  }

  Token getToken(t) {
    return _adaptor.getToken(t);
  }

  setTokenBoundaries(t, Token startToken, Token stopToken) {
    _adaptor.setTokenBoundaries(t, startToken, stopToken);
    if ( t!=null && startToken != null && stopToken != null ) {
      _dbg.setTokenBoundaries(
        t, startToken.tokenIndex,stopToken.tokenIndex);
    }
  }

  int getTokenStartIndex(t) {
    return _adaptor.getTokenStartIndex(t);
  }

  int getTokenStopIndex(t) {
    return _adaptor.getTokenStopIndex(t);
  }

  getChild(t, int i) {
    return _adaptor.getChild(t, i);
  }

  setChild(t, int i, child) {
    _adaptor.setChild(t, i, child);
  }

  deleteChild(t, int i) {
    return deleteChild(t, i);
  }

  int getChildCount(t) {
    return _adaptor.getChildCount(t);
  }

  int getUniqueID(node) {
    return _adaptor.getUniqueID(node);
  }

  getParent(t) {
    return _adaptor.getParent(t);
  }

  int getChildIndex(t) {
    return _adaptor.getChildIndex(t);
  }

  setParent(t, parent) {
    _adaptor.setParent(t, parent);
  }

  setChildIndex(t, int index) {
    _adaptor.setChildIndex(t, index);
  }

  replaceChildren(parent, int startChildIndex, int stopChildIndex, t) {
    _adaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  DebugEventListener get debugListener => _dbg;

  set debugListener(DebugEventListener dbg) {
    _dbg = dbg;
  }

  TreeAdaptor get treeAdaptor => _adaptor;
}


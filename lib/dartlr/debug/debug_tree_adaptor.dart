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

  Object createTreeNode(Token payload) {
    if (payload.tokenIndex < 0)      
      return create(payload.type, payload.text);
    Object node = _adaptor.createTreeNode(payload);
    _dbg.createNode(node, payload);
    return node;
  }

  Object errorNode(TokenStream input, 
       Token start, Token stop, RecognitionException e) {
    Object node = _adaptor.errorNode(input, start, stop, e);
    if (node != null)
      _dbg.errorNode(node);   
    return node;
  }

  Object dupTree(Object tree) {
    Object t = _adaptor.dupTree(tree);
    _simulateTreeConstruction(t);
    return t;
  }

  void _simulateTreeConstruction(Object t) {
    _dbg.createNode(t);
    int n = _adaptor.getChildCount(t);
    for (int i=0; i < n; i++) {
      Object child = _adaptor.getChild(t, i);
      _simulateTreeConstruction(child);
      _dbg.addChild(t, child);
    }
  }

  Object dupNode(Object treeNode) {
    Object d = _adaptor.dupNode(treeNode);
    _dbg.createNode(d);
    return d;
  }

  Object nil() {
    Object node = _adaptor.nil();
    _dbg.nilNode(node);
    return node;
  }

  bool isNil(Object tree) {
    return _adaptor.isNil(tree);
  }

  void addChild(Object t, Object child) {
    if (t == null || child == null) return;
    t = (t is Token) ? createTreeNode(child) : t;
    _adaptor.addChild(t,child);
    _dbg.addChild(t, child);
  }

  Object becomeRoot(Object newRoot, Object oldRoot) {    
    Object n = _adaptor.becomeRoot(newRoot, oldRoot);
    _dbg.becomeRoot(newRoot, oldRoot);    
    return n;
  }
  
  Object becomeRootFormToken(Token newRoot, Object oldRoot) {
    Object n = createTreeNode(newRoot);
    _adaptor.becomeRoot(n, oldRoot);
    _dbg.becomeRoot(newRoot, oldRoot);
    return n;
  }

  Object rulePostProcessing(Object root) {
    return _adaptor.rulePostProcessing(root);
  }

  Object create(int tokenType, fromToken, [String text]) {
    Object node = _adaptor.create(tokenType, fromToken, text);
    _dbg.createNode(node);
    return node;
  }
  
  Object createFromTokenType(int tokenType, String text) {
    Object node = _adaptor.createFromTokenType(tokenType, text);
    _dbg.createNode(node);
    return node;
  }

  int getType(Object t) {
    return _adaptor.getType(t);
  }

  void setType(Object t, int type) {
    _adaptor.setType(t, type);
  }

  String getText(Object t) {
    return _adaptor.getText(t);
  }

  void setText(Object t, String text) {
    _adaptor.setText(t, text);
  }

  Token getToken(Object t) {
    return _adaptor.getToken(t);
  }

  void setTokenBoundaries(Object t, Token startToken, Token stopToken) {
    _adaptor.setTokenBoundaries(t, startToken, stopToken);
    if ( t!=null && startToken != null && stopToken != null ) {
      _dbg.setTokenBoundaries(
        t, startToken.tokenIndex,stopToken.tokenIndex);
    }
  }

  int getTokenStartIndex(Object t) {
    return _adaptor.getTokenStartIndex(t);
  }

  int getTokenStopIndex(Object t) {
    return _adaptor.getTokenStopIndex(t);
  }

  Object getChild(Object t, int i) {
    return _adaptor.getChild(t, i);
  }

  void setChild(Object t, int i, Object child) {
    _adaptor.setChild(t, i, child);
  }

  Object deleteChild(Object t, int i) {
    return deleteChild(t, i);
  }

  int getChildCount(Object t) {
    return _adaptor.getChildCount(t);
  }

  int getUniqueID(Object node) {
    return _adaptor.getUniqueID(node);
  }

  Object getParent(Object t) {
    return _adaptor.getParent(t);
  }

  int getChildIndex(Object t) {
    return _adaptor.getChildIndex(t);
  }

  void setParent(Object t, Object parent) {
    _adaptor.setParent(t, parent);
  }

  void setChildIndex(Object t, int index) {
    _adaptor.setChildIndex(t, index);
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    _adaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  DebugEventListener get debugListener => _dbg;

  void set debugListener(DebugEventListener dbg) {
    _dbg = dbg;
  }

  TreeAdaptor get treeAdaptor => _adaptor;
}


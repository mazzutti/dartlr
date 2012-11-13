part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
      return this.create(payload.type, payload.text);
    Object node = this._adaptor.createTreeNode(payload);
    this._dbg.createNode(node, payload);
    return node;
  }

  Object errorNode(TokenStream input, 
       Token start, Token stop, RecognitionException e) {
    Object node = this._adaptor.errorNode(input, start, stop, e);
    if (node != null)
      this._dbg.errorNode(node);   
    return node;
  }

  Object dupTree(Object tree) {
    Object t = this._adaptor.dupTree(tree);
    this._simulateTreeConstruction(t);
    return t;
  }

  void _simulateTreeConstruction(Object t) {
    this._dbg.createNode(t);
    int n = this._adaptor.getChildCount(t);
    for (int i=0; i < n; i++) {
      Object child = this._adaptor.getChild(t, i);
      this._simulateTreeConstruction(child);
      this._dbg.addChild(t, child);
    }
  }

  Object dupNode(Object treeNode) {
    Object d = this._adaptor.dupNode(treeNode);
    this._dbg.createNode(d);
    return d;
  }

  Object nil() {
    Object node = this._adaptor.nil();
    this._dbg.nilNode(node);
    return node;
  }

  bool isNil(Object tree) {
    return this._adaptor.isNil(tree);
  }

  void addChild(Object t, Object child) {
    if (t == null || child == null) return;
    t = (t is Token) ? this.createTreeNode(child) : t;
    this._adaptor.addChild(t,child);
    this._dbg.addChild(t, child);
  }

  Object becomeRoot(Object newRoot, Object oldRoot) {    
    Object n = this._adaptor.becomeRoot(newRoot, oldRoot);
    this._dbg.becomeRoot(newRoot, oldRoot);    
    return n;
  }
  
  Object becomeRootFormToken(Token newRoot, Object oldRoot) {
    Object n = this.createTreeNode(newRoot);
    this._adaptor.becomeRoot(n, oldRoot);
    this._dbg.becomeRoot(newRoot, oldRoot);
    return n;
  }

  Object rulePostProcessing(Object root) {
    return this._adaptor.rulePostProcessing(root);
  }

  Object create(int tokenType, Dynamic fromToken, [String text]) {
    Object node = this._adaptor.create(tokenType, fromToken, text);
    this._dbg.createNode(node);
    return node;
  }
  
  Object createFromTokenType(int tokenType, String text) {
    Object node = this._adaptor.createFromTokenType(tokenType, text);
    this._dbg.createNode(node);
    return node;
  }

  int getType(Object t) {
    return this._adaptor.getType(t);
  }

  void setType(Object t, int type) {
    this._adaptor.setType(t, type);
  }

  String getText(Object t) {
    return this._adaptor.getText(t);
  }

  void setText(Object t, String text) {
    this._adaptor.setText(t, text);
  }

  Token getToken(Object t) {
    return this._adaptor.getToken(t);
  }

  void setTokenBoundaries(Object t, Token startToken, Token stopToken) {
    this._adaptor.setTokenBoundaries(t, startToken, stopToken);
    if ( t!=null && startToken != null && stopToken != null ) {
      this._dbg.setTokenBoundaries(
        t, startToken.tokenIndex,stopToken.tokenIndex);
    }
  }

  int getTokenStartIndex(Object t) {
    return this._adaptor.getTokenStartIndex(t);
  }

  int getTokenStopIndex(Object t) {
    return this._adaptor.getTokenStopIndex(t);
  }

  Object getChild(Object t, int i) {
    return this._adaptor.getChild(t, i);
  }

  void setChild(Object t, int i, Object child) {
    this._adaptor.setChild(t, i, child);
  }

  Object deleteChild(Object t, int i) {
    return deleteChild(t, i);
  }

  int getChildCount(Object t) {
    return this._adaptor.getChildCount(t);
  }

  int getUniqueID(Object node) {
    return this._adaptor.getUniqueID(node);
  }

  Object getParent(Object t) {
    return this._adaptor.getParent(t);
  }

  int getChildIndex(Object t) {
    return this._adaptor.getChildIndex(t);
  }

  void setParent(Object t, Object parent) {
    this._adaptor.setParent(t, parent);
  }

  void setChildIndex(Object t, int index) {
    this._adaptor.setChildIndex(t, index);
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    this._adaptor.replaceChildren(parent, startChildIndex, stopChildIndex, t);
  }

  DebugEventListener get debugListener => this._dbg;

  void set debugListener(DebugEventListener dbg) {
    this._dbg = dbg;
  }

  TreeAdaptor get treeAdaptor => this._adaptor;
}


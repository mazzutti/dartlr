part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Broadcast debug events to multiple listeners.  Lets you debug and still
 *  use the event mechanism to build parse trees etc...
 * 
 *  See also [DebugEventRepeater]
 */
class DebugEventHub implements DebugEventListener {
  
  List _listeners;  

  DebugEventHub(List<DebugEventListener> listeners) {
    this._listeners = new List.from(listeners);
  }

  List get listeners() => this._listeners; 

  /** Add another listener to broadcast events too.*/
  void addListener(DebugEventListener listener) {
    this._listeners.add(listener);
  }
  
  
  void enterRule(String ruleName, [String grammarFileName]) {
    this._listeners.forEach((listener) 
      => listener.enterRule(ruleName, grammarFileName));    
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    this._listeners.forEach((listener) 
      => listener.exitRule(ruleName, grammarFileName));
  }

  void enterAlt(int alt) {
    this._listeners.forEach((listener) 
      => listener.enterAlt(alt));
  }

  void enterSubRule(int decisionNumber) {
    this._listeners.forEach((listener) 
      => listener.enterSubRule(decisionNumber));
  }

  void exitSubRule(int decisionNumber) {
    this._listeners.forEach((listener) 
      => listener.exitSubRule(decisionNumber));
  }

  void enterDecision(int decisionNumber, bool couldBacktrack) {
    this._listeners.forEach((listener) 
      => listener.enterDecision(decisionNumber, couldBacktrack));
  }

  void exitDecision(int decisionNumber) {
    this._listeners.forEach((listener) 
      => listener.exitDecision(decisionNumber));
  }

  void location(int line, int pos) {
    this._listeners.forEach((listener) 
      => listener.location(line, pos));
  }

  void consumeToken(Token token) {
    this._listeners.forEach((listener) 
      => listener.consumeToken(token));
  }

  void consumeHiddenToken(Token token) {
    this._listeners.forEach((listener) 
      => listener.consumeHiddenToken(token));
  }

  void LT(int index, Object t) {
    this._listeners.forEach((listener) 
      => listener.LT(index, t));
  }

  void mark(int index) {
    this._listeners.forEach((listener) 
      => listener.mark(index));
  }

  void rewind([int marker]) {
    this._listeners.forEach((listener) 
      => listener.rewind(marker));
  }

  void beginBacktrack(int level) {
    this._listeners.forEach((listener) 
      => listener.beginBacktrack(level));
  }

  void endBacktrack(int level, bool successful) {
    this._listeners.forEach((listener) 
      => listener.endBacktrack(level, successful));
  }

  void recognitionException(RecognitionException e) {
    this._listeners.forEach((listener) 
      => listener.recognitionException(e));
  }

  void beginResync() {
    this._listeners.forEach((listener) 
      => listener.beginResync());
  }

  void endResync() {
    this._listeners.forEach((listener) 
      => listener.endResync());
  }

  void semanticPredicate(bool result, String predicate) {
    this._listeners.forEach((listener) 
      => listener.semanticPredicate(result, predicate));
  }

  void commence() {
    this._listeners.forEach((listener) 
      => listener.commence());
  }

  void terminate() {
    this._listeners.forEach((listener) 
      => listener.terminate());
  }

  void consumeNode(Object t) {
    this._listeners.forEach((listener) 
      => listener.consumeNode(t));
  }

  

  void nilNode(Object t) {
    this._listeners.forEach((listener) 
      => listener.nilNode(t));    
  }

  void errorNode(Object t) {
    this._listeners.forEach((listener) 
      => listener.errorNode(t));    
  }

  void createNode(Object node, [Token token]) {
    this._listeners.forEach((listener) 
      => listener.createNode(node, token));    
  }

  void becomeRoot(Object newRoot, Object oldRoot) {
    this._listeners.forEach((listener) 
      => listener.becomeRoot(newRoot, oldRoot));    
  }

  void addChild(Object root, Object child) {
    this._listeners.forEach((listener) 
      => listener.addChild(root, child));
  }

  void setTokenBoundaries(Object t, int tokenStartIndex, int tokenStopIndex) {
    this._listeners.forEach((listener) 
      => listener.setTokenBoundaries(t, tokenStartIndex, tokenStopIndex));
  }
}


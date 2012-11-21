// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** Broadcast debug events to multiple listeners.  Lets you debug and still
 *  use the event mechanism to build parse trees etc...
 * 
 *  See also [DebugEventRepeater]
 */
class DebugEventHub implements DebugEventListener {
  
  List _listeners;  

  DebugEventHub(List<DebugEventListener> listeners) {
    _listeners = new List.from(listeners);
  }

  List get listeners => _listeners; 

  /** Add another listener to broadcast events too.*/
  addListener(DebugEventListener listener) {
    _listeners.add(listener);
  }
  
  
  enterRule(String ruleName, [String grammarFileName]) {
    _listeners.forEach((listener) 
      => listener.enterRule(ruleName, grammarFileName));    
  }

  exitRule(String ruleName, [String grammarFileName]) {
    _listeners.forEach((listener) 
      => listener.exitRule(ruleName, grammarFileName));
  }

  enterAlt(int alt) {
    _listeners.forEach((listener) 
      => listener.enterAlt(alt));
  }

  enterSubRule(int decisionNumber) {
    _listeners.forEach((listener) 
      => listener.enterSubRule(decisionNumber));
  }

  exitSubRule(int decisionNumber) {
    _listeners.forEach((listener) 
      => listener.exitSubRule(decisionNumber));
  }

  enterDecision(int decisionNumber, bool couldBacktrack) {
    _listeners.forEach((listener) 
      => listener.enterDecision(decisionNumber, couldBacktrack));
  }

  exitDecision(int decisionNumber) {
    _listeners.forEach((listener) 
      => listener.exitDecision(decisionNumber));
  }

  location(int line, int pos) {
    _listeners.forEach((listener) 
      => listener.location(line, pos));
  }

  consumeToken(Token token) {
    _listeners.forEach((listener) 
      => listener.consumeToken(token));
  }

  consumeHiddenToken(Token token) {
    _listeners.forEach((listener) 
      => listener.consumeHiddenToken(token));
  }

  LT(int index, t) {
    _listeners.forEach((listener) 
      => listener.LT(index, t));
  }

  mark(int index) {
    _listeners.forEach((listener) 
      => listener.mark(index));
  }

  rewind([int marker]) {
    _listeners.forEach((listener) 
      => listener.rewind(marker));
  }

  beginBacktrack(int level) {
    _listeners.forEach((listener) 
      => listener.beginBacktrack(level));
  }

  endBacktrack(int level, bool successful) {
    _listeners.forEach((listener) 
      => listener.endBacktrack(level, successful));
  }

  recognitionException(RecognitionException e) {
    _listeners.forEach((listener) 
      => listener.recognitionException(e));
  }

  beginResync() {
    _listeners.forEach((listener) 
      => listener.beginResync());
  }

  endResync() {
    _listeners.forEach((listener) 
      => listener.endResync());
  }

  semanticPredicate(bool result, String predicate) {
    _listeners.forEach((listener) 
      => listener.semanticPredicate(result, predicate));
  }

  commence() {
    _listeners.forEach((listener) 
      => listener.commence());
  }

  terminate() {
    _listeners.forEach((listener) 
      => listener.terminate());
  }

  consumeNode(t) {
    _listeners.forEach((listener) 
      => listener.consumeNode(t));
  }

  

  nilNode(t) {
    _listeners.forEach((listener) 
      => listener.nilNode(t));    
  }

  errorNode(t) {
    _listeners.forEach((listener) 
      => listener.errorNode(t));    
  }

  createNode(node, [Token token]) {
    _listeners.forEach((listener) 
      => listener.createNode(node, token));    
  }

  becomeRoot(newRoot, oldRoot) {
    _listeners.forEach((listener) 
      => listener.becomeRoot(newRoot, oldRoot));    
  }

  addChild(root, child) {
    _listeners.forEach((listener) 
      => listener.addChild(root, child));
  }

  setTokenBoundaries(t, int tokenStartIndex, int tokenStopIndex) {
    _listeners.forEach((listener) 
      => listener.setTokenBoundaries(t, tokenStartIndex, tokenStopIndex));
  }
}


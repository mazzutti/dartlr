part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A simple event repeater (proxy) that delegates all functionality to the
 *  listener sent into the ctor.  Useful if you want to listen in on a few
 *  debug events w/o interrupting the debugger.  Just subclass the repeater
 *  and override the methods you want to listen in on.  Remember to call
 *  the method in this class so the event will continue on to the original
 *  recipient.
 *
 *  See [DebugEventHub]
 */
class DebugEventRepeater implements DebugEventListener {
  
  DebugEventListener _listener;

  DebugEventRepeater(this._listener);
  
  void enterRule(String ruleName, [String grammarFileName]) { 
    this._listener.enterRule(ruleName, grammarFileName); 
  }
  
  void exitRule(String ruleName, [String grammarFileName]) { 
    this._listener.exitRule(ruleName, grammarFileName); 
  }
  
  void enterAlt(int alt) { 
    this._listener.enterAlt(alt); 
  }
  
  void enterSubRule(int decisionNumber) { 
    this._listener.enterSubRule(decisionNumber); 
  }
  
  void exitSubRule(int decisionNumber) { 
    this._listener.exitSubRule(decisionNumber); 
  }
  
  void enterDecision(int decisionNumber, bool couldBacktrack) { 
    this._listener.enterDecision(decisionNumber, couldBacktrack); 
  }
  
  void exitDecision(int decisionNumber) { 
    this._listener.exitDecision(decisionNumber); 
  }
  
  void location(int line, int pos) { 
    this._listener.location(line, pos); 
  }
  
  void consumeToken(Token token) { 
    this._listener.consumeToken(token); 
  }
  
  void consumeHiddenToken(Token token) { 
    this._listener.consumeHiddenToken(token); 
  }
  
  void LT(int i, Token t) { 
    this._listener.LT(i, t); 
  }
  
  void mark(int i) { 
    this._listener.mark(i); 
  }
  
  void rewind([int marker]) { 
    this._listener.rewind(marker); 
  }
  
  void beginBacktrack(int level) { 
    this._listener.beginBacktrack(level); 
  }
  
  void endBacktrack(int level, bool successful) { 
    this._listener.endBacktrack(level, successful); 
  }
  
  void recognitionException(RecognitionException e) { 
    this._listener.recognitionException(e); 
  }
  
  void beginResync() { 
    this._listener.beginResync(); 
  }
  
  void endResync() { 
    this._listener.endResync(); 
  }
  
  void semanticPredicate(bool result, String predicate) { 
    this._listener.semanticPredicate(result, predicate); 
  }
  
  void commence() { 
    this._listener.commence(); 
  }
  
  void terminate() { 
    this._listener.terminate(); 
  }

  void consumeNode(Object t) { 
    this._listener.consumeNode(t); 
  }
  
  void nilNode(Object t) { 
    this._listener.nilNode(t); 
  }
  
  void errorNode(Object t) { 
    this._listener.errorNode(t); 
  }
  
  void createNode(Object node, [Token token]) { 
    this._listener.createNode(node, token); 
  }
  
  void becomeRoot(Object newRoot, Object oldRoot) { 
    this._listener.becomeRoot(newRoot, oldRoot); 
  }
  
  void addChild(Object root, Object child) { 
    this._listener.addChild(root, child); 
  }
  
  void setTokenBoundaries(Object t, int tokenStartIndex, int tokenStopIndex) {
    this._listener.setTokenBoundaries(t, tokenStartIndex, tokenStopIndex);
  }
}

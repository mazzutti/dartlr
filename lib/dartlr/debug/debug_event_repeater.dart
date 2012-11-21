// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
    _listener.enterRule(ruleName, grammarFileName); 
  }
  
  void exitRule(String ruleName, [String grammarFileName]) { 
    _listener.exitRule(ruleName, grammarFileName); 
  }
  
  void enterAlt(int alt) { 
    _listener.enterAlt(alt); 
  }
  
  void enterSubRule(int decisionNumber) { 
    _listener.enterSubRule(decisionNumber); 
  }
  
  void exitSubRule(int decisionNumber) { 
    _listener.exitSubRule(decisionNumber); 
  }
  
  void enterDecision(int decisionNumber, bool couldBacktrack) { 
    _listener.enterDecision(decisionNumber, couldBacktrack); 
  }
  
  void exitDecision(int decisionNumber) { 
    _listener.exitDecision(decisionNumber); 
  }
  
  void location(int line, int pos) { 
    _listener.location(line, pos); 
  }
  
  void consumeToken(Token token) { 
    _listener.consumeToken(token); 
  }
  
  void consumeHiddenToken(Token token) { 
    _listener.consumeHiddenToken(token); 
  }
  
  void LT(int i, Token t) { 
    _listener.LT(i, t); 
  }
  
  void mark(int i) { 
    _listener.mark(i); 
  }
  
  void rewind([int marker]) { 
    _listener.rewind(marker); 
  }
  
  void beginBacktrack(int level) { 
    _listener.beginBacktrack(level); 
  }
  
  void endBacktrack(int level, bool successful) { 
    _listener.endBacktrack(level, successful); 
  }
  
  void recognitionException(RecognitionException e) { 
    _listener.recognitionException(e); 
  }
  
  void beginResync() { 
    _listener.beginResync(); 
  }
  
  void endResync() { 
    _listener.endResync(); 
  }
  
  void semanticPredicate(bool result, String predicate) { 
    _listener.semanticPredicate(result, predicate); 
  }
  
  void commence() { 
    _listener.commence(); 
  }
  
  void terminate() { 
    _listener.terminate(); 
  }

  void consumeNode(t) { 
    _listener.consumeNode(t); 
  }
  
  void nilNode(t) { 
    _listener.nilNode(t); 
  }
  
  void errorNode(t) { 
    _listener.errorNode(t); 
  }
  
  void createNode(node, [Token token]) { 
    _listener.createNode(node, token); 
  }
  
  void becomeRoot(newRoot, oldRoot) { 
    _listener.becomeRoot(newRoot, oldRoot); 
  }
  
  void addChild(root, child) { 
    _listener.addChild(root, child); 
  }
  
  void setTokenBoundaries(t, int tokenStartIndex, int tokenStopIndex) {
    _listener.setTokenBoundaries(t, tokenStartIndex, tokenStopIndex);
  }
}

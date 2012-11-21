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
  
  enterRule(String ruleName, [String grammarFileName]) { 
    _listener.enterRule(ruleName, grammarFileName); 
  }
  
  exitRule(String ruleName, [String grammarFileName]) { 
    _listener.exitRule(ruleName, grammarFileName); 
  }
  
  enterAlt(int alt) { 
    _listener.enterAlt(alt); 
  }
  
  enterSubRule(int decisionNumber) { 
    _listener.enterSubRule(decisionNumber); 
  }
  
  exitSubRule(int decisionNumber) { 
    _listener.exitSubRule(decisionNumber); 
  }
  
  enterDecision(int decisionNumber, bool couldBacktrack) { 
    _listener.enterDecision(decisionNumber, couldBacktrack); 
  }
  
  exitDecision(int decisionNumber) { 
    _listener.exitDecision(decisionNumber); 
  }
  
  location(int line, int pos) { 
    _listener.location(line, pos); 
  }
  
  consumeToken(Token token) { 
    _listener.consumeToken(token); 
  }
  
  consumeHiddenToken(Token token) { 
    _listener.consumeHiddenToken(token); 
  }
  
  LT(int i, Token t) { 
    _listener.LT(i, t); 
  }
  
  mark(int i) { 
    _listener.mark(i); 
  }
  
  rewind([int marker]) { 
    _listener.rewind(marker); 
  }
  
  beginBacktrack(int level) { 
    _listener.beginBacktrack(level); 
  }
  
  endBacktrack(int level, bool successful) { 
    _listener.endBacktrack(level, successful); 
  }
  
  recognitionException(RecognitionException e) { 
    _listener.recognitionException(e); 
  }
  
  beginResync() { 
    _listener.beginResync(); 
  }
  
  endResync() { 
    _listener.endResync(); 
  }
  
  semanticPredicate(bool result, String predicate) { 
    _listener.semanticPredicate(result, predicate); 
  }
  
  commence() { 
    _listener.commence(); 
  }
  
  terminate() { 
    _listener.terminate(); 
  }

  consumeNode(t) { 
    _listener.consumeNode(t); 
  }
  
  nilNode(t) { 
    _listener.nilNode(t); 
  }
  
  errorNode(t) { 
    _listener.errorNode(t); 
  }
  
  createNode(node, [Token token]) { 
    _listener.createNode(node, token); 
  }
  
  becomeRoot(newRoot, oldRoot) { 
    _listener.becomeRoot(newRoot, oldRoot); 
  }
  
  addChild(root, child) { 
    _listener.addChild(root, child); 
  }
  
  setTokenBoundaries(t, int tokenStartIndex, int tokenStopIndex) {
    _listener.setTokenBoundaries(t, tokenStartIndex, tokenStopIndex);
  }
}

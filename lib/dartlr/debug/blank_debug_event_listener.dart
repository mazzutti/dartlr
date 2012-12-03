// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** A blank listener that does nothing; useful for real classes so
 *  they don't have to have lots of blank methods and are less
 *  sensitive to updates to debug interface.
 */

class BlankDebugEventListener implements DebugEventListener {
  
  enterRule(String ruleName, [String grammarFileName]) {}
  
  exitRule(String ruleName, [String grammarFileName]) {}
  
  enterAlt(int alt) {}
  
  enterSubRule(int decisionNumber) {}
  
  exitSubRule(int decisionNumber) {}
  
  enterDecision(int decisionNumber, bool couldBacktrack) {}
  
  exitDecision(int decisionNumber) {}
  
  location(int line, int pos) {}
  
  consumeToken(Token token) {}
  
  consumeHiddenToken(Token token) {}
  
  mark(int i) {}
  
  rewind([int marker]) {}
  
  beginBacktrack(int level) {}
  
  endBacktrack(int level, bool successful) {}
  
  recognitionException(RecognitionException e) {}
  
  beginResync() {}
  
  endResync() {}
  
  semanticPredicate(bool result, String predicate) {}
  
  commence() {}
  
  terminate() {}
  
  consumeNode(t) {}
  
  LT(int i, t) {}

  nilNode(t) {}
  
  errorNode(t) {}
  
  createNode(t, [Token token]) {}
  
  becomeRoot(newRoot, oldRoot) {}
  
  addChild(root, child) {}
  
  setTokenBoundaries(t, int tokenStartIndex, int tokenStopIndex) {}
}




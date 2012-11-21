// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A blank listener that does nothing; useful for real classes so
 *  they don't have to have lots of blank methods and are less
 *  sensitive to updates to debug interface.
 */

class BlankDebugEventListener implements DebugEventListener {
  
  void enterRule(String ruleName, [String grammarFileName]) {}
  
  void exitRule(String ruleName, [String grammarFileName]) {}
  
  void enterAlt(int alt) {}
  
  void enterSubRule(int decisionNumber) {}
  
  void exitSubRule(int decisionNumber) {}
  
  void enterDecision(int decisionNumber, bool couldBacktrack) {}
  
  void exitDecision(int decisionNumber) {}
  
  void location(int line, int pos) {}
  
  void consumeToken(Token token) {}
  
  void consumeHiddenToken(Token token) {}
  
  void mark(int i) {}
  
  void rewind([int marker]) {}
  
  void beginBacktrack(int level) {}
  
  void endBacktrack(int level, bool successful) {}
  
  void recognitionException(RecognitionException e) {}
  
  void beginResync() {}
  
  void endResync() {}
  
  void semanticPredicate(bool result, String predicate) {}
  
  void commence() {}
  
  void terminate() {}
  
  void consumeNode(t) {}
  
  void LT(int i, t) {}

  void nilNode(t) {}
  
  void errorNode(t) {}
  
  void createNode(t, [Token token]) {}
  
  void becomeRoot(newRoot, oldRoot) {}
  
  void addChild(root, child) {}
  
  void setTokenBoundaries(t, int tokenStartIndex, int tokenStopIndex) {}
}




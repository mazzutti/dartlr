// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** This parser listener tracks rule entry/exit and token matches
 *  to build a simple parse tree using [ParseTree] nodes.
 */
class ParseTreeBuilder extends BlankDebugEventListener {
  
  static final String EPSILON_PAYLOAD = "<epsilon>";
  
  List callStack;
  List hiddenTokens;
  int backtracking = 0;

  ParseTreeBuilder(String grammarName) {
    callStack = new List();
    hiddenTokens = new List(); 
    ParseTree root = create("<grammar $grammarName>");
    callStack.add(root);
  }

  ParseTree get tree => callStack[0];

  /**  What kind of node to create.  You might want to override
   *   so I factored out creation here.
   */
  ParseTree create(payload) => new ParseTree(payload);

  ParseTree get epsilonNode => create(EPSILON_PAYLOAD);

  /** Backtracking or cyclic DFA, don't want to add nodes to tree */
  void enterDecision(int d, bool couldBacktrack) {backtracking++;}
  void exitDecision(int i) {backtracking--;}

  void enterRule(String ruleName, [String grammarFileName]) {
    if (backtracking > 0) return;
    ParseTree parentRuleNode = callStack.last;
    ParseTree ruleNode = create(ruleName);
    parentRuleNode.addChild(ruleNode);
    callStack.add(ruleNode);
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    if (backtracking > 0) return;
    ParseTree ruleNode = callStack.last;
    if (ruleNode.childCount == 0)
      ruleNode.addChild(epsilonNode);
    callStack.removeLast();    
  }

  void consumeToken(Token token) {
    if (backtracking > 0) return;
    ParseTree ruleNode = callStack.last;
    ParseTree elementNode = create(token);
    elementNode.hiddenTokens = hiddenTokens;
    hiddenTokens = new List();
    ruleNode.addChild(elementNode);
  }

  void consumeHiddenToken(Token token) {
    if (backtracking > 0) return;
    hiddenTokens.add(token);
  }

  void recognitionException(RecognitionException e) {
    if (backtracking > 0) return;
    ParseTree ruleNode = callStack.last;
    ParseTree en = create(e);
    ruleNode.addChild(en);
  }
}


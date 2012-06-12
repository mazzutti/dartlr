// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** This parser listener tracks rule entry/exit and token matches
 *  to build a simple parse tree using [ParseTree] nodes.
 */
class ParseTreeBuilder extends BlankDebugEventListener {
  
  static final String EPSILON_PAYLOAD = "<epsilon>";
  
  List callStack;
  List hiddenTokens;
  int backtracking = 0;

  ParseTreeBuilder(String grammarName) {
    this.callStack = new List();
    this.hiddenTokens = new List(); 
    ParseTree root = create("<grammar $grammarName>");
    this.callStack.add(root);
  }

  ParseTree getTree() => callStack[0];

  /**  What kind of node to create.  You might want to override
   *   so I factored out creation here.
   */
  ParseTree create(Object payload) => new ParseTree(payload);

  ParseTree epsilonNode() => this.create(EPSILON_PAYLOAD);

  /** Backtracking or cyclic DFA, don't want to add nodes to tree */
  void enterDecision(int d, bool couldBacktrack) {this.backtracking++;}
  void exitDecision(int i) {this.backtracking--;}

  void enterRule(String ruleName, [String grammarFileName]) {
    if (this.backtracking > 0) return;
    ParseTree parentRuleNode = this.callStack.last();
    ParseTree ruleNode = this.create(ruleName);
    parentRuleNode.addChild(ruleNode);
    this.callStack.add(ruleNode);
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    if (this.backtracking > 0) return;
    ParseTree ruleNode = this.callStack.last();
    if (ruleNode.getChildCount() == 0)
      ruleNode.addChild(epsilonNode());
    this.callStack.removeLast();    
  }

  void consumeToken(Token token) {
    if (this.backtracking > 0) return;
    ParseTree ruleNode = this.callStack.last();
    ParseTree elementNode = this.create(token);
    elementNode.hiddenTokens = this.hiddenTokens;
    this.hiddenTokens = new List();
    ruleNode.addChild(elementNode);
  }

  void consumeHiddenToken(Token token) {
    if (this.backtracking > 0) return;
    this.hiddenTokens.add(token);
  }

  void recognitionException(RecognitionException e) {
    if (this.backtracking > 0) return;
    ParseTree ruleNode = this.callStack.last();
    ParseTree en = this.create(e);
    ruleNode.addChild(en);
  }
}


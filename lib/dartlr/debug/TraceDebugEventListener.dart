part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Print out (most of) the events... Useful for debugging, testing... */
class TraceDebugEventListener extends BlankDebugEventListener {
  
  TreeAdaptor adaptor;

  TraceDebugEventListener([this.adaptor]) {
    if(this.adaptor == null) {
      this.adaptor = new CommonTreeAdaptor();
    }
  }

  void enterRule(String ruleName, [String grammarFileName]) {
    if(grammarFileName != null)
      this.record("enterRule, $grammarFileName, $ruleName");
    else 
      this.record("enterRule, $ruleName");
  }
  
  void exitRule(String ruleName, [String grammarFileName]) {
    if(grammarFileName != null)
      this.record("exitRule, $grammarFileName, $ruleName");
    else 
      this.record("exitRule, $ruleName");
  }
  
  void mark(int i) {
    this.record("mark, $i");
  }

  void rewind([int marker]) {
    this.record("rewind, $marker");
  }
  
  void enterSubRule(int decisionNumber) {
    this.record("enterSubRule, $decisionNumber"); 
  }
  
  void exitSubRule(int decisionNumber) {
    this.record("exitSubRule, $decisionNumber"); 
  }
  
  void location(int line, int pos) {
    this.record("location, $line, $pos");
  }
  
  void enterDecision(int decisionNumber, bool couldBacktrack) {
    this.record("enterDecision, $decisionNumber, $couldBacktrack");
  }

  void exitDecision(int decisionNumber) {
    this.record("exitDecision, $decisionNumber");
  }

  void consumeNode(Object t) {
    int ID = adaptor.getUniqueID(t);
    String text = this.adaptor.getText(t);
    int type = this.adaptor.getType(t);
    Token token = this.adaptor.getToken(t);
    int line = -1;
    int pos = -1;
    if (token != null) {
      line = token.line;
      pos = token.charPositionInLine;
    }
    int tokenIndex = this.adaptor.getTokenStartIndex(t);
    this.record("consumeNode, $ID, $type, $line, $pos, $tokenIndex, $text");   
  }
  
  void LT(int i, Object t) {
    if(t is Token) {
      this.record("LT, $i, "
      "${t.type}, ${t.channel}, ${t.line}, "
          "${t.charPositionInLine}, ${t.text}");
    } else {
      int ID = adaptor.getUniqueID(t);
      String text = this.adaptor.getText(t);
      int type = this.adaptor.getType(t);
      Token token = this.adaptor.getToken(t);
      int line = -1;
      int pos = -1;
      if (token != null) {
        line = token.line;
        pos = token.charPositionInLine;
      }
      int tokenIndex = this.adaptor.getTokenStartIndex(t);
      this.record("LN, $i, $ID, $type, $line, $pos, $tokenIndex, $text");
    }
  }
 
  void nilNode(Object t) {
    this.record("nilNode, ${adaptor.getUniqueID(t)}");
  }

  void createNode(Object node, [Token token]) {
    if(token != null) {
      int ID = adaptor.getUniqueID(node);
      String text = adaptor.getText(node);
      int tokenIndex = token.tokenIndex;
      this.record("create, $ID, $tokenIndex");
    } else {
      int ID = adaptor.getUniqueID(node);
      String text = adaptor.getText(node);
      int type = adaptor.getType(node);
      this.record("createNodeFromTokenElements, $ID, $type, $text");
    }
  }
  
  void errorNode(Object t) {
    int ID = this.adaptor.getUniqueID(t);
    String text = t.toString();
    this.record("errorNode, $ID, ${Token.INVALID_TOKEN_TYPE}, $text");
  }

  void becomeRoot(Object newRoot, Object oldRoot) {
    this.record("becomeRoot, ${adaptor.getUniqueID(newRoot)}, "
                        "${adaptor.getUniqueID(oldRoot)}");
  }

  void addChild(Object root, Object child) {
    this.record("addChild, ${adaptor.getUniqueID(root)}, "
                         "${adaptor.getUniqueID(child)}");
  }

  void setTokenBoundaries(Object t, 
                int tokenStartIndex, int tokenStopIndex) {
    this.record("setTokenBoundaries, ${adaptor.getUniqueID(t)}, "
                          "$tokenStartIndex, $tokenStopIndex");
  }
  
  void recognitionException(RecognitionException e) {    
    this.record("exception, ${e.className}, "
       "${e.index}, ${e.line}, ${e.charPositionInLine}");
  }
  
  void terminate() {
    this.record("terminate");
  }
  
  void beginResync() {
    this.record("beginResync");
  }
  
  void endResync() {
    this.record("endResync");
  }
  
  void enterAlt(int alt) {
    this.record("enterAlt, $alt");
  }
  
  void consumeToken(Token token) {
    this.record("consumeToken, ${token.tokenIndex}, "
       "${token.type}, ${token.channel}, ${token.line}, "
           "${token.charPositionInLine}, ${token.text}");
  }
  
  void consumeHiddenToken(Token token) {
    this.record("consumeHiddenToken, ${token.tokenIndex}, "
    "${token.type}, ${token.channel}, ${token.line}, "
        "${token.charPositionInLine}, ${token.text}");
  }
  
  void semanticPredicate(bool result, String predicate) {
    this.record("semanticPredicate, $result, $predicate");
  }
  
  void beginBacktrack(int level) {
    this.record("beginBacktrack, $level");
  }

  void endBacktrack(int level, bool successful) {
    this.record("endBacktrack, $level, "
      "${(successful ? DebugEventListener.TRUE : DebugEventListener.FALSE)}");
  }
  
  void record(String event) {
    print(event);
  }
}



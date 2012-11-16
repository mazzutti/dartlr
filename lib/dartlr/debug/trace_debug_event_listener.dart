// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** Print out (most of) the events... Useful for debugging, testing... */
class TraceDebugEventListener extends BlankDebugEventListener {
  
  TreeAdaptor adaptor;

  TraceDebugEventListener([this.adaptor]) {
    if(adaptor == null) {
      adaptor = new CommonTreeAdaptor();
    }
  }

  void enterRule(String ruleName, [String grammarFileName]) {
    if(grammarFileName != null)
      record("enterRule, $grammarFileName, $ruleName");
    else 
      record("enterRule, $ruleName");
  }
  
  void exitRule(String ruleName, [String grammarFileName]) {
    if(grammarFileName != null)
      record("exitRule, $grammarFileName, $ruleName");
    else 
      record("exitRule, $ruleName");
  }
  
  void mark(int i) {
    record("mark, $i");
  }

  void rewind([int marker]) {
    record("rewind, $marker");
  }
  
  void enterSubRule(int decisionNumber) {
    record("enterSubRule, $decisionNumber"); 
  }
  
  void exitSubRule(int decisionNumber) {
    record("exitSubRule, $decisionNumber"); 
  }
  
  void location(int line, int pos) {
    record("location, $line, $pos");
  }
  
  void enterDecision(int decisionNumber, bool couldBacktrack) {
    record("enterDecision, $decisionNumber, $couldBacktrack");
  }

  void exitDecision(int decisionNumber) {
    record("exitDecision, $decisionNumber");
  }

  void consumeNode(Object t) {
    int ID = adaptor.getUniqueID(t);
    String text = adaptor.getText(t);
    int type = adaptor.getType(t);
    Token token = adaptor.getToken(t);
    int line = -1;
    int pos = -1;
    if (token != null) {
      line = token.line;
      pos = token.charPositionInLine;
    }
    int tokenIndex = adaptor.getTokenStartIndex(t);
    record("consumeNode, $ID, $type, $line, $pos, $tokenIndex, $text");   
  }
  
  void LT(int i, Object t) {
    if(t is Token) {
      record("LT, $i, "
      "${t.type}, ${t.channel}, ${t.line}, "
          "${t.charPositionInLine}, ${t.text}");
    } else {
      int ID = adaptor.getUniqueID(t);
      String text = adaptor.getText(t);
      int type = adaptor.getType(t);
      Token token = adaptor.getToken(t);
      int line = -1;
      int pos = -1;
      if (token != null) {
        line = token.line;
        pos = token.charPositionInLine;
      }
      int tokenIndex = adaptor.getTokenStartIndex(t);
      record("LN, $i, $ID, $type, $line, $pos, $tokenIndex, $text");
    }
  }
 
  void nilNode(Object t) {
    record("nilNode, ${adaptor.getUniqueID(t)}");
  }

  void createNode(Object node, [Token token]) {
    if(token != null) {
      int ID = adaptor.getUniqueID(node);
      String text = adaptor.getText(node);
      int tokenIndex = token.tokenIndex;
      record("create, $ID, $tokenIndex");
    } else {
      int ID = adaptor.getUniqueID(node);
      String text = adaptor.getText(node);
      int type = adaptor.getType(node);
      record("createNodeFromTokenElements, $ID, $type, $text");
    }
  }
  
  void errorNode(Object t) {
    int ID = adaptor.getUniqueID(t);
    String text = t.toString();
    record("errorNode, $ID, ${Token.INVALID_TOKEN_TYPE}, $text");
  }

  void becomeRoot(Object newRoot, Object oldRoot) {
    record("becomeRoot, ${adaptor.getUniqueID(newRoot)}, "
                        "${adaptor.getUniqueID(oldRoot)}");
  }

  void addChild(Object root, Object child) {
    record("addChild, ${adaptor.getUniqueID(root)}, "
                         "${adaptor.getUniqueID(child)}");
  }

  void setTokenBoundaries(Object t, 
                int tokenStartIndex, int tokenStopIndex) {
    record("setTokenBoundaries, ${adaptor.getUniqueID(t)}, "
                          "$tokenStartIndex, $tokenStopIndex");
  }
  
  void recognitionException(RecognitionException e) {    
    record("exception, ${e.runtimeType.toString()}, "
       "${e.index}, ${e.line}, ${e.charPositionInLine}");
  }
  
  void terminate() {
    record("terminate");
  }
  
  void beginResync() {
    record("beginResync");
  }
  
  void endResync() {
    record("endResync");
  }
  
  void enterAlt(int alt) {
    record("enterAlt, $alt");
  }
  
  void consumeToken(Token token) {
    record("consumeToken, ${token.tokenIndex}, "
       "${token.type}, ${token.channel}, ${token.line}, "
           "${token.charPositionInLine}, ${token.text}");
  }
  
  void consumeHiddenToken(Token token) {
    record("consumeHiddenToken, ${token.tokenIndex}, "
    "${token.type}, ${token.channel}, ${token.line}, "
        "${token.charPositionInLine}, ${token.text}");
  }
  
  void semanticPredicate(bool result, String predicate) {
    record("semanticPredicate, $result, $predicate");
  }
  
  void beginBacktrack(int level) {
    record("beginBacktrack, $level");
  }

  void endBacktrack(int level, bool successful) {
    record("endBacktrack, $level, "
      "${(successful ? DebugEventListener.TRUE : DebugEventListener.FALSE)}");
  }
  
  void record(String event) {
    print(event);
  }
}



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

  enterRule(String ruleName, [String grammarFileName]) {
    if(grammarFileName != null)
      record("enterRule, $grammarFileName, $ruleName");
    else 
      record("enterRule, $ruleName");
  }
  
  exitRule(String ruleName, [String grammarFileName]) {
    if(grammarFileName != null)
      record("exitRule, $grammarFileName, $ruleName");
    else 
      record("exitRule, $ruleName");
  }
  
  mark(int i) {
    record("mark, $i");
  }

  rewind([int marker]) {
    record("rewind, $marker");
  }
  
  enterSubRule(int decisionNumber) {
    record("enterSubRule, $decisionNumber"); 
  }
  
  exitSubRule(int decisionNumber) {
    record("exitSubRule, $decisionNumber"); 
  }
  
  location(int line, int pos) {
    record("location, $line, $pos");
  }
  
  enterDecision(int decisionNumber, bool couldBacktrack) {
    record("enterDecision, $decisionNumber, $couldBacktrack");
  }

  exitDecision(int decisionNumber) {
    record("exitDecision, $decisionNumber");
  }

  consumeNode(t) {
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
  
  LT(int i, t) {
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
 
  nilNode(t) {
    record("nilNode, ${adaptor.getUniqueID(t)}");
  }

  createNode(node, [Token token]) {
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
  
  errorNode(t) {
    int ID = adaptor.getUniqueID(t);
    String text = t.toString();
    record("errorNode, $ID, ${Token.INVALID_TOKEN_TYPE}, $text");
  }

  becomeRoot(newRoot, oldRoot) {
    record("becomeRoot, ${adaptor.getUniqueID(newRoot)}, "
                        "${adaptor.getUniqueID(oldRoot)}");
  }

  addChild(root, child) {
    record("addChild, ${adaptor.getUniqueID(root)}, "
                         "${adaptor.getUniqueID(child)}");
  }

  setTokenBoundaries(t, 
                int tokenStartIndex, int tokenStopIndex) {
    record("setTokenBoundaries, ${adaptor.getUniqueID(t)}, "
                          "$tokenStartIndex, $tokenStopIndex");
  }
  
  recognitionException(RecognitionException e) {    
    record("exception, ${e.runtimeType.toString()}, "
       "${e.index}, ${e.line}, ${e.charPositionInLine}");
  }
  
  terminate() {
    record("terminate");
  }
  
  beginResync() {
    record("beginResync");
  }
  
  endResync() {
    record("endResync");
  }
  
  enterAlt(int alt) {
    record("enterAlt, $alt");
  }
  
  consumeToken(Token token) {
    record("consumeToken, ${token.tokenIndex}, "
       "${token.type}, ${token.channel}, ${token.line}, "
           "${token.charPositionInLine}, ${token.text}");
  }
  
  consumeHiddenToken(Token token) {
    record("consumeHiddenToken, ${token.tokenIndex}, "
    "${token.type}, ${token.channel}, ${token.line}, "
        "${token.charPositionInLine}, ${token.text}");
  }
  
  semanticPredicate(bool result, String predicate) {
    record("semanticPredicate, $result, $predicate");
  }
  
  beginBacktrack(int level) {
    record("beginBacktrack, $level");
  }

  endBacktrack(int level, bool successful) {
    record("endBacktrack, $level, "
      "${(successful ? DebugEventListener.TRUE : DebugEventListener.FALSE)}");
  }
  
  record(String event) {
    print(event);
  }
}



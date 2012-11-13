part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** The root of the ANTLR exception hierarchy.
 *
 *  To avoid English-only error messages and to generally make things
 *  as flexible as possible, these exceptions are not created with strings,
 *  but rather the information necessary to generate an error.  Then
 *  the various reporting methods in Parser and Lexer can be overridden
 *  to generate a localized error message.  For example, MismatchedToken
 *  exceptions are built with the expected token type.
 *  So, don't expect getMessage() to return anything.
 *
 *  ANTLR generates code that throws exceptions upon recognition error and
 *  also generates code to catch these exceptions in each rule.  If you
 *  want to quit upon first error, you can turn off the automatic error
 *  handling mechanism using rulecatch action, but you still need to
 *  override methods mismatch and recoverFromMismatchSet.
 *
 *  In general, the recognition exceptions can track where in a grammar a
 *  problem occurred and/or what was the expected input.  While the parser
 *  knows its state (such as current input symbol and line info) that
 *  state can change before the exception is reported so current token index
 *  is computed and stored at exception time.  From this info, you can
 *  perhaps print an entire line of input not just a single token, for example.
 *  Better to just say the recognizer had a problem and then let the parser
 *  figure out a fancy report.
 */
class RecognitionException implements Exception {
  
  /** What input stream did the error occur in? */
  IntStream input;
  
  /** What is index of token/char were we looking at when the error occurred? */
  int index;
  
  /** The current Token when an error occurred.  Since not all streams
   *  can retrieve the ith Token, we have to track the Token object.
   *  For parsers.  Even when it's a tree parser, token might be set.
   */
  Token token;
  
  /** If this is a tree parser exception, node is set to the node with
   *  the problem.
   */
  Object node;
  
  /** The current char when an error occurred. For lexers. */
  int c;
  
  /** Track the line at which the error occurred in case this is
   *  generated from a lexer.  We need to track this since the
   *  unexpected char doesn't carry the line info.
   */
  int line;
  
  int charPositionInLine;
  
  /** If you are parsing a tree node stream, you will encounter som
   *  imaginary nodes w/o line/col info.  We now search backwards looking
   *  for most recent token with line/col info, but notify getErrorHeader()
   *  that info is approximate.
   */
  bool approximateLineInfo;

  RecognitionException([this.input]) {
    if(this.input != null) {
      this.index = this.input.index;
      if (input is TokenStream) {
        this.token = this.input.dynamic.LT(1);
        this.line = token.line;
        this.charPositionInLine = token.charPositionInLine;
      }
      if (input is TreeNodeStream)
        this._extractInformationFromTreeNodeStream(input);
      else if (input is CharStream) {
        this.c = this.input.LA(1);
        this.line = this.input.dynamic.line;
        this.charPositionInLine = this.input.dynamic.charPositionInLine;
      }
      else {
        this.c = this.input.LA(1);
      }
    }
  }

  void _extractInformationFromTreeNodeStream(IntStream inp) {
    TreeNodeStream nodes = input;
    this.node = nodes.LT(1);
    TreeAdaptor adaptor = nodes.treeAdaptor;
    Token payload = adaptor.getToken(node);
    if (payload != null ) {
      this.token = payload;
      if (payload.line <= 0 ) {
        int i = -1;
        Object priorNode = nodes.LT(i);
        while ( priorNode!=null ) {
          Token priorPayload = adaptor.getToken(priorNode);
          if ( priorPayload!=null && priorPayload.line  > 0 ) {           
            this.line = priorPayload.line;
            this.charPositionInLine = priorPayload.charPositionInLine;
            this.approximateLineInfo = true;
            break;
          }
          --i;
          priorNode = nodes.LT(i);
        }
      }
      else { 
        this.line = payload.line;
        this.charPositionInLine = payload.charPositionInLine;
      }
    }
    else if (this.node is Tree) {
      this.line = this.node.dynamic.line;
      this.charPositionInLine = this.node.dynamic.charPositionInLine;
      if (this.node is CommonTree)
        this.token = this.node.dynamic.token;     
    }
    else {
      int type = adaptor.getType(this.node);
      String text = adaptor.getText(this.node);
      this.token = new CommonToken(type, text);
    }
  }

  /** Return the token type or char of the unexpected input element */
  int getUnexpectedType() {
    if (input is TokenStream )
      return token.type;   
    else if (input is TreeNodeStream) {
      TreeNodeStream nodes = input;
      TreeAdaptor adaptor = nodes.treeAdaptor;
      return adaptor.getType(node);
    }
    else 
      return c;
  }
  
  String get className => "RecognitionException";
}

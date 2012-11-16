// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A parser for a stream of tree nodes.  "tree grammars" result in a subclass
 *  of this.  All the error reporting and recovery is shared with Parser via
 *  the [BaseRecognizer] superclass.
*/
class TreeParser extends BaseRecognizer {
  
  static const int DOWN = Token.DOWN;
  static const int UP = Token.UP;
  static const String dotdot = ".*[^.]\\.\\.[^.].*";
  static const String doubleEtc = ".*\\.\\.\\.\\s+\\.\\.\\..*";
  static RegExp dotdotPattern = new RegExp(dotdot);
  static RegExp doubleEtcPattern = new RegExp(doubleEtc);
  
  TreeNodeStream _input;

  TreeParser(this._input);
  
  TreeParser.fromRecognizerSharedState
        (this._input, RecognizerSharedState state) : super(state);

  void reset() {
    super.reset(); 
    if (_input != null)
      _input.seek(0); 
  }

  void set input(TreeNodeStream input) {
    _input = input;
  }

  TreeNodeStream get input => _input;
  
  String get sourceName => _input.sourceName;

  Object _getCurrentInputSymbol(IntStream input) => _input.LT(1);

  Object _getMissingSymbol(IntStream input, 
      RecognitionException e, int expectedTokenType, BitSet follow) {
    String tokenText = "<missing ${tokenNames[expectedTokenType]}>";
    TreeAdaptor adaptor = (e.input as TreeNodeStream).treeAdaptor;
    return adaptor.createTreeNode(new CommonToken(expectedTokenType, tokenText));
  }

  /** Match '.' in tree parser has special meaning.  Skip node or
   *  entire tree if node has children.  If children, scan until
   *  corresponding UP node.
   */
  void matchAny([IntStream input]) {
    state.errorRecovery = false;
    state.failed = false;
    Object look = _input.LT(1);
    if (_input.treeAdaptor.getChildCount(look) == 0) {
      _input.consume();
      return;
    }
    int level=0;
    int tokenType = _input.treeAdaptor.getType(look);
    while ( tokenType!=Token.EOF && !(tokenType==UP && level==0) ) {
      _input.consume();
      look = _input.LT(1);
      tokenType =_input.treeAdaptor.getType(look);
      if (tokenType == DOWN)
        level++;
      else if (tokenType == UP)
        level--;
    }
    _input.consume();
  }

  /** We have DOWN/UP nodes in the stream that have no line info; override.
  *  plus we want to alter the exception type.  Don't try to recover
  *  from tree parser errors inline...
    */
  Object _recoverFromMismatchedToken(IntStream input, int ttype, BitSet follow) {
    throw new MismatchedTreeNodeException(ttype, input);
  }
  
  /** Prefix error message with the grammar name because message is
   *  always intended for the programmer because the parser built
   *  the input tree not the user.
   */
  String getErrorHeader(RecognitionException e) {
    return "${grammarFileName}: node from "
      "${(e.approximateLineInfo?"after ":"")}line ${e.line}:${e.charPositionInLine}";
  }
  
  /** Tree parsers parse nodes they usually have a token object as
   *  payload. Set the exception token and do the default behavior.
   */
  String getErrorMessage(RecognitionException e, List<String> tokenNames) {
    if (this is TreeParser ) {
      TreeAdaptor adaptor = (e.input as TreeNodeStream).treeAdaptor;
      e.token = adaptor.getToken(e.node);
      if (e.token == null)
        e.token = new CommonToken(adaptor.getType(e.node), adaptor.getText(e.node));
    }
    return super.getErrorMessage(e, tokenNames);
  }

  /** Check if current node in input has a context.  Context means sequence
   *  of nodes towards root of tree.  For example, you might say context
   *  is "MULT" which means my parent must be MULT.  "CLASS VARDEF" says
   *  current node must be child of a VARDEF and whose parent is a CLASS node.
   *  You can use "..." to mean zero-or-more nodes.  "METHOD ... VARDEF"
   *  means my parent is VARDEF and somewhere above that is a METHOD node.
   *  The first node in the context is not necessarily the root.  The context
   *  matcher stops matching and returns true when it runs out of context.
   *  There is no way to force the first node to be the root.
   */
  bool inContext(String context) {
    return getInContext(_input.treeAdaptor, 
      tokenNames, _input.LT(1), context);
  }

  static bool getInContext(TreeAdaptor adaptor, 
      List<String> tokenNames, Object t, String context) {
    if (dotdotPattern.hasMatch(context))
      throw new ArgumentError("invalid syntax: ..");
    if (doubleEtcPattern.hasMatch(context))
      throw new ArgumentError("invalid syntax: ... ...");
    context = context.replaceAll("\\.\\.\\.", " ... ");
    context = context.trim();
    List<String> nodes = context.split("\\s+");
    int ni = nodes.length - 1;
    t = adaptor.getParent(t);
    while (ni >= 0 && t != null) {
      if (nodes[ni] == "...") {
        if (ni == 0) return true;
        String goal = nodes[ni-1];
        Object ancestor = _getAncestor(adaptor, tokenNames, t, goal);
        if ( ancestor==null ) return false;
        t = ancestor;
        ni--;
      }
      String name = tokenNames[adaptor.getType(t)];
      if (!(name == nodes[ni]))
        return false;
      ni--;
      t = adaptor.getParent(t);
    }

    if (t == null && ni >= 0) return false;
    return true;
  }

  /** Helper for static getInContext */
  static Object _getAncestor(TreeAdaptor adaptor, List<String> tokenNames, Object t, String goal) {
    while (t != null ) {
      String name = tokenNames[adaptor.getType(t)];
      if (name == goal) return t;
      t = adaptor.getParent(t);
    }
    return null;
  }

  void traceIn(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null) inputSymbol = _input.LT(1);
    super.traceIn(ruleName, ruleIndex, inputSymbol);
  }

  void traceOut(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null) inputSymbol = _input.LT(1);
    super.traceOut(ruleName, ruleIndex, inputSymbol);
  }
  
  String get recognizerClassName => "TreeParser";
   
}

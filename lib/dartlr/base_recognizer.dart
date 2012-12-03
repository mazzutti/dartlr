// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** A generic recognizer that can handle recognizers generated from
 *  lexer, parser, and tree grammars.  This is all the parsing
 *  support code essentially; most of it is error recovery stuff and
 *  backtracking.
 */
abstract class BaseRecognizer {
  
  static const int MEMO_RULE_FAILED = -2;
  static const int MEMO_RULE_UNKNOWN = -1;
  static const int INITIAL_FOLLOW_STACK_SIZE = 100;
  static const int DEFAULT_TOKEN_CHANNEL = Token.DEFAULT_CHANNEL;
  static const String NEXT_TOKEN_RULE_NAME = "nextToken";

  /** State of a lexer, parser, or tree parser are collected into a state
   *  object so the state can be shared.  This sharing is needed to
   *  have one grammar import others and share same error variables
   *  and other state variables.  It's a kind of explicit multiple
   *  inheritance via delegation of methods and shared state.
   */
  RecognizerSharedState state;
  List<String> _reportedErros;
  String _output = "";
  
  BaseRecognizer([this.state]) {
    if(state == null) 
      state = new RecognizerSharedState();
    _reportedErros = new List<String>();
  }
  
  List<String> get reportedErrors => _reportedErros;
  
  String get output => _output;
  
  IntStream get input;
  
  Logger get logger {
    return new Logger("${recognizerClassName}");
  }
    
  capture(String value) {
    _output = "${_output}$value";
  }

  /** reset the parser's state; subclasses must rewinds the input stream */
  reset() {
    if (state == null) return;
    state.fsp = -1;
    state.errorRecovery = false;
    state.lastErrorIndex = -1;
    state.failed = false;
    state.syntaxErrors = 0;
    state.backtracking = 0;
    for (int i = 0; state.ruleMemo != null && i < state.ruleMemo.length; i++)
      state.ruleMemo[i] = null;   
  }

  /** Match current input symbol against ttype.  Attempt
   *  single token insertion or deletion error recovery.  If
   *  that fails, throw [MismatchedTokenException].
   *
   *  To turn off single token insertion or deletion error
   *  recovery, override recoverFromMismatchedToken() and have it
   *  throw an exception. See TreeParser.recoverFromMismatchedToken().
   *  This way any error in a rule will cause an exception and
   *  immediate exit from rule.  Rule would recover by resynchronizing
   *  to the set of symbols that can follow rule ref.
   */
  matchSymbol(IntStream input, int ttype, BitSet follow) {
    var matchedSymbol = _getCurrentInputSymbol(input);
    if (input.LA(1) == ttype ) {
      input.consume();
      state.errorRecovery = false;
      state.failed = false;
      return matchedSymbol;
    }
    if (state.backtracking > 0 ) {
      state.failed = true;      
      return matchedSymbol;
    }
    matchedSymbol = _recoverFromMismatchedToken(input, ttype, follow); 
    return matchedSymbol;
  }

  /** Match the wildcard: in a symbol */
  matchAny([IntStream input]) {
    state.errorRecovery = false;
    state.failed = false;
    if(input != null) input.consume();
  }

  bool mismatchIsUnwantedToken(IntStream input, int ttype) => input.LA(2) == ttype;

  bool mismatchIsMissingToken(IntStream input, BitSet follow) {
    if (follow == null) return false;
    if (follow.member(Token.EOR_TOKEN_TYPE)) {
      BitSet viableTokensFollowingThisRule = _computeContextSensitiveRuleFOLLOW();
      follow = follow.or(viableTokensFollowingThisRule);
        if (state.fsp >= 0 )
           follow.remove(Token.EOR_TOKEN_TYPE);       
    }
    if (follow.member(input.LA(1)) || follow.member(Token.EOR_TOKEN_TYPE)) 
      return true;   
    return false;
  }

  /** Report a recognition problem.
  *
  *  This method sets errorRecovery to indicate the parser is recovering
  *  not parsing.  Once in recovery mode, no errors are generated.
  *  To get out of recovery mode, the parser must successfully match
  *  a token (after a resync).  So it will go:
  *
  *    1. error occurs
  *    2. enter recovery mode, report error
  *    3. consume until token found in resynch set
  *    4. try to resume parsing
  *    5. next matchSymbol() will reset errorRecovery mode
  *
  *  If you override, make sure to update syntaxErrors if you care about that.
  *  
  *  [e] is the reported exception. [st] is the (optional) statck trace
  */
  reportError(RecognitionException e, [st=null]) {    
    if (state.errorRecovery) return;
    state.syntaxErrors++;
    state.errorRecovery = true;
    displayRecognitionError(tokenNames, e);
  }

  displayRecognitionError(List<String> tokenNames, RecognitionException e) {
    String hdr = getErrorHeader(e);
    String msg = getErrorMessage(e, tokenNames);
    reportedErrors.add("$hdr $msg");
    emitErrorMessage("$hdr $msg");
  }

  /** What error message should be generated for the various
   *  exception types?
   *
   *  Not very object-oriented code, but I like having all error message
   *  generation within one method rather than spread among all of the
   *  exception classes. This also makes it much easier for the exception
   *  handling because the exception classes do not have to have pointers back
   *  to this object to access utility routines and so on. Also, changing
   *  the message for an exception type would be difficult because you
   *  would have to subclassing exception, but then somehow get ANTLR
   *  to make those kinds of exception objects instead of the default.
   *  This looks weird, but trust me--it makes the most sense in terms
   *  of flexibility.
   *
   *  Override this to change the message generated for one or more
   *  exception types.
   */
  String getErrorMessage(RecognitionException e, List<String> tokenNames) {
    String msg = e.toString();
    if (e is UnwantedTokenException) {
      UnwantedTokenException ute = e;
      String tokenName="<unknown>";
      if (ute.expecting == Token.EOF)
        tokenName = "EOF";
      else
        tokenName = tokenNames[ute.expecting];
      msg = "extraneous input ${getTokenErrorDisplay(ute.unexpectedToken)} expecting $tokenName";
    }
    else if (e is MissingTokenException) {
      MissingTokenException mte = e;
      String tokenName="<unknown>";
      if (mte.expecting == Token.EOF)
        tokenName = "EOF";     
      else
        tokenName = tokenNames[mte.expecting];      
      msg = "missing $tokenName at ${getTokenErrorDisplay(e.token)}";
    }
    else if (e is MismatchedTokenException) {
      MismatchedTokenException mte = e;
      String tokenName="<unknown>";
      if (mte.expecting== Token.EOF)
        tokenName = "EOF";
      else
        tokenName = tokenNames[mte.expecting];
      msg = "mismatched input ${getTokenErrorDisplay(e.token)} expecting $tokenName";
    }
    else if (e is MismatchedTreeNodeException) {
      MismatchedTreeNodeException mtne = e;
      String tokenName="<unknown>";
      if (mtne.expecting == Token.EOF)
        tokenName = "EOF";
      else
        tokenName = tokenNames[mtne.expecting];
      msg = "mismatched tree node: ${mtne.node} expecting $tokenName";
    }
    else if (e is NoViableAltException)
      msg = "no viable alternative at input ${getTokenErrorDisplay(e.token)}";
    else if (e is EarlyExitException )
      msg = "required (...)+ loop did not match anything at input ${getTokenErrorDisplay(e.token)}";
    else if (e is MismatchedSetException) {
      MismatchedSetException mse = e;
      msg = "mismatched input ${getTokenErrorDisplay(e.token)} expecting set ${mse.expecting}";
    }
    else if ( e is MismatchedNotSetException ) {
      MismatchedNotSetException mse = e;
      msg = "mismatched input ${getTokenErrorDisplay(e.token)} expecting set ${mse.expecting}";
    }
    else if ( e is FailedPredicateException ) {
      FailedPredicateException fpe = e;
      msg = "rule ${fpe.ruleName} failed predicate: {${fpe.predicateText}}?";
    }
    return msg;
  }

  /** Get number of recognition errors (lexer, parser, tree parser).  Each
   *  recognizer tracks its own number.  So parser and lexer each have
   *  separate count.  Does not count the spurious errors found between
   *  an error and next valid token match
   *
   *  See also reportError()
   */
  int get numberOfSyntaxErrors => state.syntaxErrors;

  /** What is the error header, normally line/character position information? */
  String getErrorHeader(RecognitionException e) {
    if (sourceName != null)
      return "${sourceName} line ${e.line}:${e.charPositionInLine}";        
    return "line ${e.line}:${e.charPositionInLine}";
  }

  /** How should a token be displayed in an error message? The default
   *  is to display just the text, but during development you might
   *  want to have a lot of information spit out.  Override in that case
   *  to use t.toString() (which, for [CommonToken], dumps everything about
   *  the token). 
   */
  String getTokenErrorDisplay(Token t) {
    String s = t.text;
    if (s == null)
      if (t.type == Token.EOF)
        s = "<EOF>";
      else
        s = "<${t.type}>";
    s = s.replaceAll("\n","\\\\n");
    s = s.replaceAll("\r","\\\\r");
    s = s.replaceAll("\t","\\\\t");
    return "'$s'";
  }

  /** Override this method to change where error messages go */
  emitErrorMessage(String msg) {
    logger.log(Level.SEVERE, msg);
  }

  /** Recover from an error found on the input stream.  This is
   *  for NoViableAlt and mismatched symbol exceptions.  If you enable
   *  single token insertion and deletion, this will usually not
   *  handle mismatched symbol exceptions but there could be a mismatched
   *  token that the matchSymbol() routine could not recover from.
   */
  recover(RecognitionException re, [IntStream input]) {
    if (state.lastErrorIndex == input.index)
      input.consume();
    state.lastErrorIndex = input.index;
    BitSet followSet = _computeErrorRecoverySet();
    beginResync();
    consumeUntilBitSet(input, followSet);
    endResync();
  }

  beginResync() {}

  endResync() {}

  /*  Compute the error recovery set for the current rule.  During
   *  rule invocation, the parser pushes the set of tokens that can
   *  follow that rule reference on the stack; this amounts to
   *  computing FIRST of what follows the rule reference in the
   *  enclosing rule. This local follow set only includes tokens
   *  from within the rule; i.e., the FIRST computation done by
   *  ANTLR stops at the end of a rule.
   *
   *  EXAMPLE
   *
   *  When you find a "no viable alt exception", the input is not
   *  consistent with any of the alternatives for rule r.  The best
   *  thing to do is to consume tokens until you see something that
   *  can legally follow a call to r *or* any rule that called r.
   *  You don't want the exact set of viable next tokens because the
   *  input might just be missing a token--you might consume the
   *  rest of the input looking for one of the missing tokens.
   *
   *  Consider grammar:
   *
   *  a : '[' b ']'
   *    | '(' b ')'
   *    ;
   *  b : c '^' INT ;
   *  c : ID
   *    | INT
   *    ;
   *
   *  At each rule invocation, the set of tokens that could follow
   *  that rule is pushed on a stack.  Here are the various "local"
   *  follow sets:
   *
   *  FOLLOW(b1_in_a) = FIRST(']') = ']'
   *  FOLLOW(b2_in_a) = FIRST(')') = ')'
   *  FOLLOW(c_in_b) = FIRST('^') = '^'
   *
   *  Upon erroneous input "[]", the call chain is
   *
   *  a -> b -> c
   *
   *  and, hence, the follow context stack is:
   *
   *  depth  local follow set     after call to rule
   *    0         <EOF>                    a (from main())
   *    1          ']'                     b
   *    3          '^'                     c
   *
   *  Notice that ')' is not included, because b would have to have
   *  been called from a different context in rule a for ')' to be
   *  included.
   *
   *  For error recovery, we cannot consider FOLLOW(c)
   *  (context-sensitive or otherwise).  We need the combined set of
   *  all context-sensitive FOLLOW sets--the set of all tokens that
   *  could follow any reference in the call chain.  We need to
   *  resync to one of those tokens.  Note that FOLLOW(c)='^' and if
   *  we resync'd to that token, we'd consume until EOF.  We need to
   *  sync to context-sensitive FOLLOWs for a, b, and c: {']','^'}.
   *  In this case, for input "[]", LA(1) is in this set so we would
   *  not consume anything and after printing an error rule c would
   *  return normally.  It would not find the required '^' though.
   *  At this point, it gets a mismatched token error and throws an
   *  exception (since LA(1) is not in the viable following token
   *  set).  The rule exception handler tries to recover, but finds
   *  the same recovery set and doesn't consume anything.  Rule b
   *  exits normally returning to rule a.  Now it finds the ']' (and
   *  with the successful match exits errorRecovery mode).
   *
   *  So, you cna see that the parser walks up call chain looking
   *  for the token that was a member of the recovery set.
   *
   *  Errors are not generated in errorRecovery mode.
   */
  BitSet _computeErrorRecoverySet() => _combineFollows(false);

  /** Compute the context-sensitive FOLLOW set for current rule.
   *  This is set of token types that can follow a specific rule
   *  reference given a specific call chain.  You get the set of
   *  viable tokens that can possibly come next (lookahead depth 1)
   *  given the current call chain.  Contrast this with the
   *  definition of plain FOLLOW for rule r:
   *
   *   FOLLOW(r)={x | S=>*alpha r beta in G and x in FIRST(beta)}
   *
   *  where x in T* and alpha, beta in V*; T is set of terminals and
   *  V is the set of terminals and nonterminals.  In other words,
   *  FOLLOW(r) is the set of all tokens that can possibly follow
   *  references to r in *any* sentential form (context).  At
   *  runtime, however, we know precisely which context applies as
   *  we have the call chain.  We may compute the exact (rather
   *  than covering superset) set of following tokens.
   *
   *  For example, consider grammar:
   *
   *  stat : ID '=' expr ';'      // FOLLOW(stat)=={EOF}
   *       | "return" expr '.'
   *       ;
   *  expr : atom ('+' atom)* ;   // FOLLOW(expr)=={';','.',')'}
   *  atom : INT                  // FOLLOW(atom)=={'+',')',';','.'}
   *       | '(' expr ')'
   *       ;
   *
   *  The FOLLOW sets are all inclusive whereas context-sensitive
   *  FOLLOW sets are precisely what could follow a rule reference.
   *  For input input "i=(3);", here is the derivation:
   *
   *  stat => ID '=' expr ';'
   *       => ID '=' atom ('+' atom)* ';'
   *       => ID '=' '(' expr ')' ('+' atom)* ';'
   *       => ID '=' '(' atom ')' ('+' atom)* ';'
   *       => ID '=' '(' INT ')' ('+' atom)* ';'
   *       => ID '=' '(' INT ')' ';'
   *
   *  At the "3" token, you'd have a call chain of
   *
   *    stat -> expr -> atom -> expr -> atom
   *
   *  What can follow that specific nested ref to atom?  Exactly ')'
   *  as you can see by looking at the derivation of this specific
   *  input.  Contrast this with the FOLLOW(atom)={'+',')',';','.'}.
   *
   *  You want the exact viable token set when recovering from a
   *  token mismatch.  Upon token mismatch, if LA(1) is member of
   *  the viable next token set, then you know there is most likely
   *  a missing token in the input stream.  "Insert" one by just not
   *  throwing an exception.
   */
  BitSet _computeContextSensitiveRuleFOLLOW() => _combineFollows(true);

  // what is exact? it seems to only add sets from above on stack
  // if EOR is in set i.  When it sees a set w/o EOR, it stops adding.
  // Why would we ever want them all?  Maybe no viable alt instead of
  // mismatched token?
  BitSet _combineFollows(bool exact) {
    int top = state.fsp;
    BitSet followSet = new BitSet();
    for (int i = top; i >= 0; i--) {
      BitSet localFollowSet = state.following[i];
      followSet.orInPlace(localFollowSet);
      if (exact)     
        if ( localFollowSet.member(Token.EOR_TOKEN_TYPE) )       
          if (i > 0)
            followSet.remove(Token.EOR_TOKEN_TYPE);        
        else
          break;     
    }
    return followSet;
  }

  /** Attempt to recover from a single missing or extra token.
  *
  *  EXTRA TOKEN
  *
  *  LA(1) is not what we are looking for.  If LA(2) has the right token,
  *  however, then assume LA(1) is some extra spurious token.  Delete it
  *  and LA(2) as if we were doing a normal match(), which advances the
  *  input.
  *
  *  MISSING TOKEN
  *
  *  If current token is consistent with what could come after
  *  ttype then it is ok to "insert" the missing token, else throw
  *  exception For example, Input "i=(3;" is clearly missing the
  *  ')'.  When the parser returns from the nested call to expr, it
  *  will have call chain:
  *
  *    stat -> expr -> atom
  *
  *  and it will be trying to match the ')' at this point in the
  *  derivation:
  *
  *       => ID '=' '(' INT ')' ('+' atom)* ';'
  *                          ^
  *  match() will see that ';' doesn't match ')' and report a
  *  mismatched token error.  To recover, it sees that LA(1)==';'
  *  is in the set of tokens that can follow the ')' token
  *  reference in rule atom.  It can assume that you forgot the ')'.
  */
  _recoverFromMismatchedToken(IntStream input, int ttype, BitSet follow) {
    RecognitionException e = null;    
    if (mismatchIsUnwantedToken(input, ttype)) {       
      e = new UnwantedTokenException(ttype, input);
      beginResync();
      input.consume();
      endResync();
      reportError(e);
      var matchedSymbol = _getCurrentInputSymbol(input);
      input.consume();
      return matchedSymbol;
    }
    if (mismatchIsMissingToken(input, follow)) {     
      var inserted = _getMissingSymbol(input, e, ttype, follow);
      e = new MissingTokenException(inserted, ttype, input);
      reportError(e);
      return inserted;
    }
    MismatchedTokenException exc = new MismatchedTokenException(ttype, input);
    throw exc;
  }

  recoverFromMismatchedSet
    (IntStream input, RecognitionException e, BitSet follow) {
    if (mismatchIsMissingToken(input, follow) ) {
      reportError(e);
      return _getMissingSymbol(input, e, Token.INVALID_TOKEN_TYPE, follow);
    }
    throw e;
  }

  /** Match needs to return the current input symbol, which gets put
   *  into the label for the associated token ref; e.g., x=ID.  Token
   *  and tree parsers need to return different objects. Rather than test
   *  for input stream type or change the IntStream interface, I use
   *  a simple method to ask the recognizer to tell me what the current
   *  input symbol is.
   * 
   *  This is ignored for lexers.
   */
  _getCurrentInputSymbol(IntStream input) => null;

  /** Conjure up a missing token during error recovery.
  *
  *  The recognizer attempts to recover from single missing
  *  symbols. But, actions might refer to that missing symbol.
  *  For example, x=ID {f($x);}. The action clearly assumes
  *  that there has been an identifier matched previously and that
  *  $x points at that token. If that token is missing, but
  *  the next token in the stream is what we want we assume that
  *  this token is missing and we keep going. Because we
  *  have to return some token to replace the missing token,
  *  we have to conjure one up. This method gives the user control
  *  over the tokens returned for missing tokens. Mostly,
  *  you will want to create something special for identifier
  *  tokens. For literals such as '{' and ',', the default
  *  action in the parser or tree parser works. It simply creates
  *  a [CommonToken] of the appropriate type. The text will be the token.
  *  If you change what tokens must be created by the lexer,
  *  override this method to create the appropriate tokens.
  */
  _getMissingSymbol(IntStream input, 
      RecognitionException e, int expectedTokenType, BitSet follow) => null;

  consumeUntilTokenType(IntStream input, int tokenType) {
    int ttype = input.LA(1);
    while (ttype != Token.EOF && ttype != tokenType) {
      input.consume();
      ttype = input.LA(1);
    }
  }
  
  /** Consume tokens until one matches the given token set */  
  consumeUntilBitSet(IntStream input, BitSet s) {
    int ttype = input.LA(1);
    while (ttype != Token.EOF && !s.member(ttype)) {
      input.consume();
      ttype = input.LA(1);
    }
  }

  /** Push a rule's follow set using our own hardcoded stack */
  pushFollow(BitSet fset) {    
    if ((state.fsp + 1) >= state.following.length) {
      List<BitSet> f = new List<BitSet>(state.following.length*2);
      Arrays.copy(state.following, 0, f, 0, state.following.length);
      state.following = f;
    }
    state.following[++state.fsp] = fset;
   }

  /** Return List<String> of the rules in your parser instance
  *  leading up to a call to this method.  You could override if
  *  you want more details such as the file/line info of where
  *  in the parser java code a rule is invoked.
  *
  *  This is very useful for error messages and for context-sensitive
  *  error recovery.
  */
  //TODO change this using mirros API and 'SatckTrace' class!
  //Skip static methods
  static List<String> genRuleInvocationStack(var stackTrace, String recognizerClassName) {
    List rules = new List();
    List<String> stack = stackTrace.toString().split("\n");
    int i = 0;
    for (i = stack.length - 2; i >= 0; i--) {
      List<String> classAndMethodName = stack[i].split(":")[1].split(".");
      if(classAndMethodName[1] == NEXT_TOKEN_RULE_NAME)
        continue;
      if(classAndMethodName[0] == recognizerClassName)
        continue;
      rules.add(classAndMethodName[1]);
    }
    return rules;
  }
  
  int getBacktrackingLevel() => state.backtracking;

  setBacktrackingLevel(int n) { 
    state.backtracking = n; 
  }
  
  /** Return whether or not a backtracking attempt failed. */
  bool failed() => state.failed;

  /** Used to print out token names like ID during debugging and
   *  error reporting.  The generated parsers implement a method
   *  that overrides this to point to their List<String> tokenNames.
   */
  List<String> get tokenNames => null;

  /** For debugging and other purposes, might want the grammar name.
   *  Have ANTLR generate an implementation for this method.
   */
  String get grammarFileName => null;

  String get sourceName;
  
  String get recognizerClassName;

  /** A convenience method for use most often with template rewrites.
   *  Convert a List<Token> to List<String>
   */
  List toStrings(List tokens) {
    if (tokens == null) return null;
    List strings = new List(tokens.length);
    for (int i = 0; i < tokens.length; i++)
      strings.add(tokens[i].text);
    return strings;
  }

  /** Given a rule number and a start token index number, return
   *  MEMO_RULE_UNKNOWN if the rule has not parsed input starting from
   *  start index.  If this rule has parsed input starting from the
   *  start index before, then return where the rule stopped parsing.
   *  It returns the index of the last token matched by the rule.
   *
   *  For now we use a hashtable and just the slow Object-based one.
   *  Later, we can make a special one for ints and also one that
   *  tosses out data after we commit past input position i.
   */
  int getRuleMemoization(int ruleIndex, int ruleStartIndex) {
    if (state.ruleMemo[ruleIndex] == null )
      state.ruleMemo[ruleIndex] = new HashMap();
    int stopIndexI = state.ruleMemo[ruleIndex][ruleStartIndex];
    if (stopIndexI == null)
      return MEMO_RULE_UNKNOWN;
    return stopIndexI;
  }

  /** Has this rule already parsed input at the current index in the
   *  input stream?  Return the stop token index or MEMO_RULE_UNKNOWN.
   *  If we attempted but failed to parse properly before, return
   *  MEMO_RULE_FAILED.
   *
   *  This method has a side-effect: if we have seen this input for
   *  this rule and successfully parsed before, then seek ahead to
   *  1 past the stop token matched for this rule last time.
   */
  bool alreadyParsedRule(IntStream input, int ruleIndex) {
    int stopIndex = getRuleMemoization(ruleIndex, input.index);
    if (stopIndex == MEMO_RULE_UNKNOWN)
      return false;
    if (stopIndex == MEMO_RULE_FAILED)
      state.failed = true;
    else 
      input.seek(stopIndex + 1);
    return true;
  }
  
  /** Record whether or not this rule parsed the input at this position
  *  successfully.
  */
  memoize(IntStream input, int ruleIndex, int ruleStartIndex) {
    int stopTokenIndex = state.failed ? MEMO_RULE_FAILED : input.index - 1;
    if (state.ruleMemo == null)
      print("!!!!!!!!! memo array is null for ${grammarFileName}");
    if (ruleIndex >= state.ruleMemo.length)
      print("!!!!!!!!! memo size is ${state.ruleMemo.length}, but rule index is $ruleIndex");
    if (state.ruleMemo[ruleIndex] != null)
      state.ruleMemo[ruleIndex][ruleStartIndex] =  stopTokenIndex;
  }

  /** return how many rule/input-index pairs there are in total. */
  int get ruleMemoizationCacheSize {
    int n = 0;
    for (int i = 0; state.ruleMemo != null && i < state.ruleMemo.length; i++) {
      Map ruleMap = state.ruleMemo[i];
      if (ruleMap != null)
        n += ruleMap.length;
    }
    return n;
  }

  traceIn(String ruleName, int ruleIndex, [inputSymbol])  {
    print("enter $ruleName $inputSymbol");
    if (state.backtracking > 0) {
      print(" backtracking=${state.backtracking}");
    }
    print('\n');
  }

  traceOut(String ruleName, int ruleIndex, [inputSymbol]) {
    print("exit $ruleName $inputSymbol");
    if (state.backtracking > 0) {
      print(" backtracking=${state.backtracking}");
      if (state.failed) print(" failed");
      else print(" succeeded");
    }
    print('\n');
  }

}


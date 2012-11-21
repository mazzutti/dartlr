// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** The set of fields needed by an abstract recognizer to recognize input
 *  and recover from errors etc...  As a separate state object, it can be
 *  shared among multiple grammars; e.g., when one grammar imports another.
 */
class RecognizerSharedState {
 
  /** Track the set of token types that can follow any rule invocation.
   *  Stack grows upwards.  When it hits the max, it grows 2x in size
   *  and keeps going.
   */
  List<BitSet> following;
  
  int fsp = -1;
  
  /** This is true when we see an error and before having successfully
   *  matched a token.  Prevents generation of more than one error message
   *  per error.
   */
  bool errorRecovery = false;
  
  /** The index into the input stream where the last error occurred.
   *  This is used to prevent infinite loops where an error is found
   *  but no token is consumed during recovery...another error is found,
   *  ad naseum.  This is a failsafe mechanism to guarantee that at least
   *  one token/tree node is consumed for two errors.
   */
  int lastErrorIndex = -1;
  
  /** In lieu of a return value, this indicates that a rule or token
   *  has failed to match.  Reset to false upon valid token match.
   */
  bool failed = false;
  
  /** Did the recognizer encounter a syntax error?  Track how many. */
  int syntaxErrors = 0;
  
  /** If 0, no backtracking is going on.  Safe to exec actions etc...
   *  If >0 then it's the level of backtracking.
   */
  int backtracking = 0;
  
  /** An array[size num rules] of Map<int,int> that tracks
   *  the stop token index for each rule.  ruleMemo[ruleIndex] is
   *  the memoization table for ruleIndex.  For key ruleStartIndex, you
   *  get back the stop token for associated rule or MEMO_RULE_FAILED.
   *
   *  This is only used if rule memoization is on (which it is by default).
   */
  List<Map> ruleMemo;
  
  /** The goal of all lexer rules/methods is to create a token object.
   *  This is an instance variable as multiple rules may collaborate to
   *  create a single token.  nextToken will return this object after
   *  matching lexer rule(s).  If you subclass to allow multiple token
   *  emissions, then set this to the last token to be matched or
   *  something nonnull so that the auto token emit mechanism will not
   *  emit another token.
   */
  Token token;
  
  /** What character index in the stream did the current token start at?
   *  Needed, for example, to get the text for current token.  Set at
   *  the start of nextToken.
   */
  int tokenStartCharIndex = -1;
  
  /** The line on which the first character of the token resides */
  int tokenStartLine;
  
  /** The character position of first character within the line */
  int tokenStartCharPositionInLine;
  
  /** The channel number for the current token */
  int channel;
  
  /** The token type for the current token */
  int type;
  
  /** You can set the text for the current token to override what is in
   *  the input char buffer.
   */
  String text;

  RecognizerSharedState() {
    following = new List<BitSet>(BaseRecognizer.INITIAL_FOLLOW_STACK_SIZE);
  }
  
  RecognizerSharedState.fromRecognizerSharedState(RecognizerSharedState state) {
    following = new List<BitSet>(BaseRecognizer.INITIAL_FOLLOW_STACK_SIZE);
    if (following.length < state.following.length)
        following = new List<BitSet>(state.following.length);
    Arrays.copy(state.following, 0, following, 0, state.following.length);
    fsp = state.fsp;
    errorRecovery = state.errorRecovery;
    lastErrorIndex = state.lastErrorIndex;
    failed = state.failed;
    syntaxErrors = state.syntaxErrors;
    backtracking = state.backtracking;
    if (state.ruleMemo != null)
        ruleMemo = new List<Map>.from(state.ruleMemo);
    token = state.token;
    tokenStartCharIndex = state.tokenStartCharIndex;
    tokenStartCharPositionInLine = state.tokenStartCharPositionInLine;
    channel = state.channel;
    type = state.type;
    text = state.text;
  }
}


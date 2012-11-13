part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class DebugTreeParser extends TreeParser {
 
  /** Who to notify when events in the parser occur. */
  DebugEventListener _dbg = null;

  /** Used to differentiate between fixed lookahead and cyclic DFA decisions
   *  while profiling.
   */
  bool isCyclicDecision = false;

  /** Create a normal parser except wrap the token stream in a debug
   *  proxy that fires consume events.
   */
  DebugTreeParser(TreeNodeStream input, [DebugEventListener dbg, 
    RecognizerSharedState state]) : super.fromRecognizerSharedState(
      input is DebugTreeNodeStream ? input : new DebugTreeNodeStream(input,dbg), state) {
    this.debugListener = dbg;
  }
  
  DebugTreeParser.fromRecognizerSharedState(IntStream input, 
    RecognizerSharedState state) : super.fromRecognizerSharedState(
      (input is DebugTokenStream ? input:new DebugTokenStream(input,null)), state);

  /** Provide a new debug event listener for this parser.  Notify the
  *  input stream too that it should send events to this listener.
  */
  void set debugListener(DebugEventListener dbg) {
    if (input is DebugTreeNodeStream )
      this.input.dynamic.debugListener = dbg;
    this._dbg = dbg;
  }

  DebugEventListener get debugListener => this._dbg;

  void reportError(Dynamic e, [var stackTrace]) {
    if(e is RecognitionException)
      this._dbg.recognitionException(e);
    else {
      stderr.writeString(e.getMessage());
      stderr.writeString(stackTrace);
    }
  }

  Object _getMissingSymbol(IntStream input, 
     RecognitionException e, int expectedTokenType, BitSet follow) {
    Object o = super._getMissingSymbol(input, e, expectedTokenType, follow);
    this._dbg.consumeNode(o);
    return o;
  }

  void beginResync() {
    this._dbg.beginResync();
  }

  void endResync() {
    this._dbg.endResync();
  }

  void beginBacktrack(int level) {
    this._dbg.beginBacktrack(level);
  }

  void endBacktrack(int level, bool successful) {
    this._dbg.endBacktrack(level,successful);   
  }
}

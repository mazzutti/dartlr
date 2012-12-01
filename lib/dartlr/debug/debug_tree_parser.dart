// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
    debugListener = dbg;
  }
  
  DebugTreeParser.fromRecognizerSharedState(IntStream input, 
    RecognizerSharedState state) : super.fromRecognizerSharedState(
      (input is DebugTokenStream ? input:new DebugTokenStream(input,null)), state);

  /** Provide a new debug event listener for this parser.  Notify the
  *  input stream too that it should send events to this listener.
  */
  set debugListener(DebugEventListener dbg) {
    if (input is DebugTreeNodeStream )
      (input as DebugTokenStream).debugListener = dbg;
    _dbg = dbg;
  }

  DebugEventListener get debugListener => _dbg;

  reportError( e, [st=null]) {
    if(e is RecognitionException)
      _dbg.recognitionException(e);
    else {
      stderr.writeString(e.getMessage());
      stderr.writeString(st);
    }
  }

  _getMissingSymbol(IntStream input, 
     RecognitionException e, int expectedTokenType, BitSet follow) {
    var o = super._getMissingSymbol(input, e, expectedTokenType, follow);
    _dbg.consumeNode(o);
    return o;
  }

  beginResync() {
    _dbg.beginResync();
  }

  endResync() {
    _dbg.endResync();
  }

  beginBacktrack(int level) {
    _dbg.beginBacktrack(level);
  }

  endBacktrack(int level, bool successful) {
    _dbg.endBacktrack(level,successful);   
  }
}

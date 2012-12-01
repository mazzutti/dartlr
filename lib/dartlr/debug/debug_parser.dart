// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class DebugParser extends Parser {
  
  /** Who to notify when events in the parser occur. */
  DebugEventListener _dbg = null;

  /** Used to differentiate between fixed lookahead and cyclic DFA decisions
   *  while profiling.
   */
  bool isCyclicDecision = false;
  
  /** Create a normal parser except wrap the token stream in a debug
   *  proxy that fires consume events.
   */
  DebugParser(TokenStream input, [DebugEventListener dbg, 
     RecognizerSharedState state]) : super.fromRecognizerSharedState(
       (input is DebugTokenStream) ? input: new DebugTokenStream(input,dbg), state) {
    debugListener = dbg;
  }
  
  DebugParser.fromRecognizerSharedState(TokenStream input, 
    RecognizerSharedState state) :super.fromRecognizerSharedState(
      (input is DebugTokenStream ? input:new DebugTokenStream(input,null)), state);

  /** Provide a new debug event listener for this parser.  Notify the
  *  input stream too that it should send events to this listener.
  */
  set debugListener(DebugEventListener dbg) {
    if (input is DebugTokenStream )
      (_input as DebugTokenStream).debugListener = dbg;
    _dbg = dbg;
  }

  DebugEventListener get debugListener => _dbg;

  @override
  reportError(RecognitionException exception, [st=null]) {
    _reportError(exception, st);
  }
  
  _reportError(e, [st]) {
    if(e is RecognitionException) {
      super.reportError(e, st);
      _dbg.recognitionException(e);
    } else {
      stderr.writeString(e.getMessage());
    }
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


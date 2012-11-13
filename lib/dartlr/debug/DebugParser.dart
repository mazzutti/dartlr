part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    this.debugListener = dbg;
  }
  
  DebugParser.fromRecognizerSharedState(TokenStream input, 
    RecognizerSharedState state) :super.fromRecognizerSharedState(
      (input is DebugTokenStream ? input:new DebugTokenStream(input,null)), state);

  /** Provide a new debug event listener for this parser.  Notify the
  *  input stream too that it should send events to this listener.
  */
  void set debugListener(DebugEventListener dbg) {
    if (input is DebugTokenStream )
      this._input.dynamic.debugListener = dbg;
    this._dbg = dbg;
  }

  DebugEventListener get debugListener => this._dbg;

  
  void reportError(RecognitionException exception) {
    this._reportError(exception);
  }
  
  void _reportError(Dynamic  e) {
    if(e is RecognitionException) {
      super.reportError(e);
      this._dbg.recognitionException(e);
    } else {
      stderr.writeString(e.getMessage());
    }
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


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class DebugTokenStream implements TokenStream {
  
  DebugEventListener _dbg;  
  bool _initialStreamState = true;
  
  TokenStream input;

  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;

  DebugTokenStream(this.input, this._dbg) {
    input.LT(1);
  }

  set debugListener(DebugEventListener dbg) {
    _dbg = dbg;
  }

  consume() {
    if (_initialStreamState)
      _consumeInitialHiddenTokens();
    int a = input.index;
    Token t = input.LT(1);
    input.consume();
    int b = input.index;
    _dbg.consumeToken(t);
    if (b > (a+1)) {      
      for (int i=a+1; i<b; i++)
        _dbg.consumeHiddenToken(input.at(i));
    }
  }

  _consumeInitialHiddenTokens() {
    int firstOnChannelTokenIndex = input.index;
    for (int i = 0; i < firstOnChannelTokenIndex; i++)
      _dbg.consumeHiddenToken(input.at(i));
    _initialStreamState = false;
  }

  Token LT(int i) {
    if (_initialStreamState)
      _consumeInitialHiddenTokens();
    _dbg.LT(i, input.LT(i));
    return input.LT(i);
  }

  int LA(int i) {
    if (_initialStreamState)
      _consumeInitialHiddenTokens();
    _dbg.LT(i, input.LT(i));
    return input.LA(i);
  }

  Token at(int i) => input.at(i);

  int mark() {
    _lastMarker = input.mark();
    _dbg.mark(_lastMarker);
    return _lastMarker;
  }

  int get index => input.index;

  int get range => input.range;

  rewind([int marker]) {
    if(marker != null ) {
      _dbg.rewind(marker);
      input.rewind(marker);
    } else {
      _dbg.rewind();
      input.rewind(_lastMarker);
    }
  }

  release(int marker) {}

  seek(int i) {
    input.seek(i);
  }

  int get size => input.size;

  TokenSource get tokenSource => input.tokenSource;

  String get sourceName => tokenSource.sourceName;

  String toString() => input.toString();

  String toRangeString(int start, int stop) {
    return input.toRangeString(start,stop);
  }

  String toTokenString(Token start, Token stop) {
    return input.toTokenString(start,stop);
  }
}


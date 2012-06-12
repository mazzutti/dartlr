// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class DebugTokenStream implements TokenStream {
  
  DebugEventListener _dbg;  
  bool _initialStreamState = true;
  
  TokenStream input;

  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;

  DebugTokenStream(this.input, this._dbg) {
    this.input.LT(1);
  }

  void set debugListener(DebugEventListener dbg) {
    this._dbg = dbg;
  }

  void consume() {
    if (this._initialStreamState)
      this._consumeInitialHiddenTokens();
    int a = this.input.index;
    Token t = this.input.LT(1);
    this.input.consume();
    int b = this.input.index;
    this._dbg.consumeToken(t);
    if (b > (a+1)) {      
      for (int i=a+1; i<b; i++)
        this._dbg.consumeHiddenToken(this.input.at(i));
    }
  }

  void _consumeInitialHiddenTokens() {
    int firstOnChannelTokenIndex = this.input.index;
    for (int i = 0; i < firstOnChannelTokenIndex; i++)
      this._dbg.consumeHiddenToken(this.input.at(i));
    this._initialStreamState = false;
  }

  Token LT(int i) {
    if (this._initialStreamState)
      this._consumeInitialHiddenTokens();
    this._dbg.LT(i, this.input.LT(i));
    return this.input.LT(i);
  }

  int LA(int i) {
    if (this._initialStreamState)
      this._consumeInitialHiddenTokens();
    this._dbg.LT(i, this.input.LT(i));
    return this.input.LA(i);
  }

  Token at(int i) => this.input.at(i);

  int mark() {
    this._lastMarker = this.input.mark();
    this._dbg.mark(this._lastMarker);
    return this._lastMarker;
  }

  int get index() => this.input.index;

  int get range() => this.input.range;

  void rewind([int marker]) {
    if(marker != null ) {
      this._dbg.rewind(marker);
      this.input.rewind(marker);
    } else {
      this._dbg.rewind();
      this.input.rewind(this._lastMarker);
    }
  }

  void release(int marker) {}

  void seek(int i) {
    this.input.seek(i);
  }

  int get size() => this.input.size;

  TokenSource get tokenSource() => this.input.tokenSource;

  String get sourceName() => this.tokenSource.sourceName;

  String toString() => this.input.toString();

  String toRangeString(int start, int stop) {
    return this.input.toRangeString(start,stop);
  }

  String toTokenString(Token start, Token stop) {
    return this.input.toTokenString(start,stop);
  }
}


part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class TreePatternLexer {
  
  static final int EOF = -1;
  static final int BEGIN = 1;
  static final int END = 2;
  static final int ID = 3;
  static final int ARG = 4;
  static final int PERCENT = 5;
  static final int COLON = 6;
  static final int DOT = 7;

  /** The tree pattern to lex like "(A B C)" */
  String _pattern;
  
  /** Index into input string */
  int _p = -1;
  
  /** Current char */
  int _c;
  
  /** How long is the pattern in char? */
  int _n;
  
  /** Set when token type is ID or ARG */
  StringBuffer sval;
  bool error = false;

  TreePatternLexer(this._pattern) {
    this._n = this._pattern.length;
    this.sval = new StringBuffer(); 
    this._consume();    
  }

  int nextToken() {
    sval.clear();
    while (this._c != EOF ) {
      if (this._c == ' '.charCodeAt(0) || this._c == '\n'.charCodeAt(0) 
          || this._c == '\r'.charCodeAt(0) || this._c == '\t'.charCodeAt(0) ) {
        this._consume();
        continue;
      }
      if ((this._c >= 'a'.charCodeAt(0) && this._c <= 'z'.charCodeAt(0)) 
         || (this._c >= 'A'.charCodeAt(0) && this._c <= 'Z'.charCodeAt(0)) || this._c == '_'.charCodeAt(0)) {
        sval.add(new String.fromCharCodes([this._c]));
        this._consume();
        while ((this._c >= 'a'.charCodeAt(0) && this._c <= 'z'.charCodeAt(0)) 
          || (this._c >= 'A'.charCodeAt(0) && this._c <= 'Z'.charCodeAt(0)) ||
            (this._c >= '0'.charCodeAt(0) && this._c <= '9'.charCodeAt(0)) || this._c == '_'.charCodeAt(0)) {
          sval.add(new String.fromCharCodes([this._c]));
          this._consume();
        }
        return ID;
      }
      if (this._c == '('.charCodeAt(0)) {
        this._consume();
        return BEGIN;
      }
      if (this._c == ')'.charCodeAt(0)) {
        this._consume();
        return END;
      }
      if (this._c == '%'.charCodeAt(0)) {
        this._consume();
        return PERCENT;
      }
      if (this._c == ':'.charCodeAt(0)) {
        this._consume();
        return COLON;
      }
      if (this._c == '.'.charCodeAt(0)) {
        this._consume();
        return DOT;
      }
      if (this._c == '['.charCodeAt(0)) {
        this._consume();
        while (this._c != ']'.charCodeAt(0)) {
          if (this._c == '\\'.charCodeAt(0)) {
            this._consume();
            if (this._c != ']'.charCodeAt(0))
              sval.add('\\');
            sval.add(new String.fromCharCodes([this._c]));
          }
          else
            sval.add(new String.fromCharCodes([this._c]));
          this._consume();
        }
        this._consume();
        return ARG;
      }
      this._consume();
      error = true;
      return EOF;
    }
    return EOF;
  }

  void _consume() {
    this._p++;
    if (this._p >= this._n)
      this._c = EOF;
    else
      this._c = this._pattern.charCodeAt(this._p);    
  }
  
}
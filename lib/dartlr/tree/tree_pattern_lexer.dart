// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class TreePatternLexer {
  
  static const int EOF = -1;
  static const int BEGIN = 1;
  static const int END = 2;
  static const int ID = 3;
  static const int ARG = 4;
  static const int PERCENT = 5;
  static const int COLON = 6;
  static const int DOT = 7;

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
    _n = _pattern.length;
    sval = new StringBuffer(); 
    _consume();    
  }

  int nextToken() {
    sval.clear();
    while (_c != EOF ) {
      if (_c == ' '.charCodeAt(0) || _c == '\n'.charCodeAt(0) 
          || _c == '\r'.charCodeAt(0) || _c == '\t'.charCodeAt(0) ) {
        _consume();
        continue;
      }
      if ((_c >= 'a'.charCodeAt(0) && _c <= 'z'.charCodeAt(0)) 
         || (_c >= 'A'.charCodeAt(0) && _c <= 'Z'.charCodeAt(0)) || _c == '_'.charCodeAt(0)) {
        sval.add(new String.fromCharCodes([_c]));
        _consume();
        while ((_c >= 'a'.charCodeAt(0) && _c <= 'z'.charCodeAt(0)) 
          || (_c >= 'A'.charCodeAt(0) && _c <= 'Z'.charCodeAt(0)) ||
            (_c >= '0'.charCodeAt(0) && _c <= '9'.charCodeAt(0)) || _c == '_'.charCodeAt(0)) {
          sval.add(new String.fromCharCodes([_c]));
          _consume();
        }
        return ID;
      }
      if (_c == '('.charCodeAt(0)) {
        _consume();
        return BEGIN;
      }
      if (_c == ')'.charCodeAt(0)) {
        _consume();
        return END;
      }
      if (_c == '%'.charCodeAt(0)) {
        _consume();
        return PERCENT;
      }
      if (_c == ':'.charCodeAt(0)) {
        _consume();
        return COLON;
      }
      if (_c == '.'.charCodeAt(0)) {
        _consume();
        return DOT;
      }
      if (_c == '['.charCodeAt(0)) {
        _consume();
        while (_c != ']'.charCodeAt(0)) {
          if (_c == '\\'.charCodeAt(0)) {
            _consume();
            if (_c != ']'.charCodeAt(0))
              sval.add('\\');
            sval.add(new String.fromCharCodes([_c]));
          }
          else
            sval.add(new String.fromCharCodes([_c]));
          _consume();
        }
        _consume();
        return ARG;
      }
      _consume();
      error = true;
      return EOF;
    }
    return EOF;
  }

  _consume() {
    _p++;
    if (_p >= _n)
      _c = EOF;
    else
      _c = _pattern.charCodeAt(_p);    
  }
  
}
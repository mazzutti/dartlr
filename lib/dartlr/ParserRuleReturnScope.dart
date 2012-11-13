part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class ParserRuleReturnScope extends RuleReturnScope {
  
  Token _start, _stop;
  Object _tree;
  
  Object get start => this._start;
  
  Object get stop => this._stop;
  
  Object get tree => this._tree;
  
  void set start(Token s) {
    this._start = s;
  }
  
  void set stop(Token s)  {
    this._stop = s;
  }
  
  void set tree(Object t) {
    this._tree = t;
  }
  
}

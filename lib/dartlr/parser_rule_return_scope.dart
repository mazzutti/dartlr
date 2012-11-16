// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class ParserRuleReturnScope extends RuleReturnScope {
  
  Token _start, _stop;
  Object _tree;
  
  Token get start => _start;
  
  Token get stop => _stop;
  
  Object get tree => _tree;
  
  void set start(Token s) {
    _start = s;
  }
  
  void set stop(Token s)  {
    _stop = s;
  }
  
  void set tree(Object t) {
    _tree = t;
  }
  
}

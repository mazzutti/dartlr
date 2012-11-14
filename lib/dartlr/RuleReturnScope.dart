part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Rules can return start/stop info as well as possible trees and templates */
abstract class RuleReturnScope {
  
  /** Return the start token or tree */
  Object get start =>  null;
 
  /** Return the stop token or tree */
  Object get stop => null;
  
  /** Has a value potentially if output=AST; */
  Object get tree => null;
  
  Object get template =>  null;
  
  void set start(Object s) {}
  
  void set stop(Object s)  {}
  
  void set tree(Object t) {}
  
}


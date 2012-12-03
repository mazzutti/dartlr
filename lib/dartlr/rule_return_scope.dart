// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** Rules can return start/stop info as well as possible trees and templates */
abstract class RuleReturnScope {
  
  /** Return the start token or tree */
  get start =>  null;
 
  /** Return the stop token or tree */
  get stop => null;
  
  /** Has a value potentially if output=AST; */
  get tree => null;
  
  get template =>  null;
  
  set start(s) {}
  
  set stop(s)  {}
  
  set tree(t) {}
  
}


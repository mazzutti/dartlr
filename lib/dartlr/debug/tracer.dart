// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** 
 * This listens for debugging events from the parser and implies
 *  that you cannot debug and trace at the same time.
 */
class Tracer extends BlankDebugEventListener {
  
  IntStream input;
  int _level = 0;

  Tracer(this.input);

  void enterRule(String ruleName, [String grammarFileName]) {
    String ident = "";
    for(int i = 1; i <= _level; i++) ident = "$ident ";    
    print("$ident> $ruleName lookahead(1)=${getInputSymbol(1)}");
    _level++;
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    _level--;
    String ident = "";
    for(int i=1; i <= _level; i++) ident = "$ident ";
    print("$ident< $ruleName lookahead(1)=${getInputSymbol(1)}");
  }

  Object getInputSymbol(int k) {
    return (input is TokenStream ) ? (input as TokenStream).LT(k) :
      new String.fromCharCodes([input.LA(k)]);
  }
}




// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t038lexerRuleLabel.dart";

main() {  
  
  test('testValid1_t038lexerRuleLabel', () {
    ANTLRStringStream cstream = new ANTLRStringStream("a  2");
    t038lexerRuleLabel lexer = new t038lexerRuleLabel(cstream);
    
    int expected = lexer.reportedErrors.length;
    Token token;
    while (true) {
      token = lexer.nextToken();
      if (token.type == Token.EOF)
          break;
    } 
    expect(lexer.reportedErrors.length, equals(expected));
  });
  
}

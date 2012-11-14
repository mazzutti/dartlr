// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t038lexerRuleLabel_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t038lexerRuleLabel.dart";

main() {  
  useVmConfiguration();
  
  test('testValid1_t038lexerRuleLabel', () {
    ANTLRStringStream cstream = new ANTLRStringStream("a  2");
    t038lexerRuleLabel lexer = new t038lexerRuleLabel(cstream);
    
    int expected = lexer.reportedErrors.length;
    Token token;
    while (true) {
      token = lexer.nextToken();
      if (token.type === Token.EOF)
          break;
    } 
    expect(lexer.reportedErrors.length, equals(expected));
  });
  
}

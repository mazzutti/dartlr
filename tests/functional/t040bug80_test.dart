// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t040bug80_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t040bug80.dart";

main() {  
  useVmConfiguration();
  
  test('testValid1_t040bug80', () {
    ANTLRStringStream cstream = new ANTLRStringStream("defined");
    t040bug80 lexer = new t040bug80(cstream);
    
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

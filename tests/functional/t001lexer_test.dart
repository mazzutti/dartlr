// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t001lexer_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t001lexer.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t001lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("0");
    Lexer lexer = new t001lexer(stream);
    
    Token token = lexer.nextToken();   
    print(token.text);
    expect(token.type,equals(t001lexer.ZERO));
    
    token = lexer.nextToken();
    expect(token.type, equals(t001lexer.EOF));
  });
  
  test('testMalformedInput_t001lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("1");
    Lexer lexer = new t001lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:0 mismatched character '1' expecting '0'";
    expect(lexer.reportedErrors.last(),equals(expected));     
  });
}

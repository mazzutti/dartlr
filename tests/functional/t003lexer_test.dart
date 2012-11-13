// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t003lexer_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t003lexer.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t003lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("0fooze1");
    Lexer lexer = new t003lexer(stream);
    
    Token token = lexer.nextToken();   
    expect(token.type, equals(t003lexer.ZERO));
    
    token = lexer.nextToken();
    expect(token.type, equals(t003lexer.FOOZE));
    
    token = lexer.nextToken();
    expect(token.type, equals(t003lexer.ONE));
    
    token = lexer.nextToken();    
    expect(token.type, equals(t003lexer.EOF));
  });
  
  test('testMalformedInput_t003lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("2");
    Lexer lexer = new t003lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:0 no viable alternative at character '2'";
    expect(lexer.reportedErrors.last(),equals(expected));
  });
}

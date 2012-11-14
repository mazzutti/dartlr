// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t005lexer_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t005lexer.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t005lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fofoofooo");
    Lexer lexer = new t005lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t005lexer.FOO));
    expect(token.startIndex, equals(0));
    expect(token.stopIndex, equals(1));
    expect(token.text, equals("fo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t005lexer.FOO));
    expect(token.startIndex, equals(2));
    expect(token.stopIndex, equals(4));
    expect(token.text, equals("foo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t005lexer.FOO));
    expect(token.startIndex, equals(5));
    expect(token.stopIndex, equals(8));
    expect(token.text, equals("fooo"));
    
    token = lexer.nextToken();
    expect(token.type, equals(t005lexer.EOF));
  });
  
  test('testMalformedInput_t005lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("f");
    Lexer lexer = new t005lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:1 required(...)+ "
        "loop did not match anything at character '<EOF>'";
    expect(lexer.reportedErrors.last(), equals(expected));
  });
}

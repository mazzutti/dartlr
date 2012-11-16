// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t005lexer.dart";

main() {  
  
  test('testValid_t005lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fofoofooo");
    Lexer lexer = new t005lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t005lexer.FOO));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(1));
    expect(token.text, equals("fo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t005lexer.FOO));
    expect((token as CommonToken).startIndex, equals(2));
    expect((token as CommonToken).stopIndex, equals(4));
    expect(token.text, equals("foo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t005lexer.FOO));
    expect((token as CommonToken).startIndex, equals(5));
    expect((token as CommonToken).stopIndex, equals(8));
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
    expect(lexer.reportedErrors.last, equals(expected));
  });
}

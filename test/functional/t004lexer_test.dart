// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t004lexer.dart";

main() {  
  
  test('testValid_t004lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("ffofoofooo");
    Lexer lexer = new t004lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t004lexer.FOO));
    expect((token as CommonToken).start,equals(0));
    expect((token as CommonToken).stop, equals(0));
    expect(token.text,equals("f"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t004lexer.FOO));
    expect((token as CommonToken).start, equals(1));
    expect((token as CommonToken).stop, equals(2));
    expect(token.text, equals("fo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t004lexer.FOO));
    expect((token as CommonToken).start, equals(3));
    expect((token as CommonToken).stop, equals(5));
    expect(token.text, equals("foo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t004lexer.FOO));
    expect((token as CommonToken).start, equals(6));
    expect((token as CommonToken).stop, equals(9));
    expect(token.text, equals("fooo"));
    
    token = lexer.nextToken();
    expect(token.type, equals(t004lexer.EOF));
  });
  
  test('testMalformedInput_t004lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("2");
    Lexer lexer = new t004lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:0 mismatched character '2' expecting 'f'";
    expect(lexer.reportedErrors.last, equals(expected));
  });
}

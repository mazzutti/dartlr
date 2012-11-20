// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t011lexer.dart";

main() {  
  
  test('testValid_t011lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("foobar _Ab98_5 \n A12sdf");
    Lexer lexer = new t011lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t011lexer.IDENTIFIER));
    expect((token as CommonToken).start, equals(0));
    expect((token as CommonToken).stop, equals(5));
    expect(token.text, equals("foobar"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t011lexer.WS));
    expect((token as CommonToken).start, equals(6));
    expect((token as CommonToken).stop, equals(6));
    expect(token.text, equals(" "));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t011lexer.IDENTIFIER));
    expect((token as CommonToken).start, equals(7));
    expect((token as CommonToken).stop, equals(13));
    expect(token.text, equals("_Ab98_5"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t011lexer.WS));
    expect((token as CommonToken).start, equals(14));
    expect((token as CommonToken).stop, equals(16));
    expect(token.text, equals(" \n "));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t011lexer.IDENTIFIER));
    expect((token as CommonToken).start, equals(17));
    expect((token as CommonToken).stop, equals(22));
    expect(token.text, equals("A12sdf"));
    
    token = lexer.nextToken();
    expect(token.type, equals(t011lexer.EOF));
  });
  
  test('testMalformedInput_t011lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("a-b");
    Lexer lexer = new t011lexer(stream);
    lexer.nextToken();
    Token token = lexer.nextToken();
    String expected = "line 1:1 no viable alternative at character '-'";
    expect(lexer.reportedErrors.last, equals(expected));
  });
}

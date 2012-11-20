// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t006lexer.dart";

main() {  
  
  test('testValid_t006lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fofaaooa");
    Lexer lexer = new t006lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t006lexer.FOO));
    expect((token as CommonToken).start, equals(0));
    expect((token as CommonToken).stop, equals(1));
    expect(token.text, equals("fo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t006lexer.FOO));
    expect((token as CommonToken).start, equals(2));
    expect((token as CommonToken).stop, equals(7));
    expect(token.text, equals("faaooa"));
    
    token = lexer.nextToken();
    expect(token.type, equals(t006lexer.EOF));
  });
  
  test('testMalformedInput_t006lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fofoaooaoa2");
    Lexer lexer = new t006lexer(stream);
    lexer.nextToken();
    lexer.nextToken();
    Token token = lexer.nextToken();
    String expected = "line 1:10 mismatched character '2' expecting 'f'";
    expect(lexer.reportedErrors.last, equals(expected));
  });
}

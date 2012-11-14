// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t006lexer_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t006lexer.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t006lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fofaaooa");
    Lexer lexer = new t006lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t006lexer.FOO));
    expect(token.startIndex, equals(0));
    expect(token.stopIndex, equals(1));
    expect(token.text, equals("fo"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t006lexer.FOO));
    expect(token.startIndex, equals(2));
    expect(token.stopIndex, equals(7));
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
    expect(lexer.reportedErrors.last(), equals(expected));
  });
}

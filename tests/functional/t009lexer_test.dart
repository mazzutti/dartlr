// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t009lexer_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t009lexer.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t009lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("085");
    Lexer lexer = new t009lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type, equals(t009lexer.DIGIT));
    expect(token.startIndex, equals(0));
    expect(token.stopIndex, equals(0));
    expect(token.text, equals("0"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t009lexer.DIGIT));
    expect(token.startIndex, equals(1));
    expect(token.stopIndex, equals(1));
    expect(token.text, equals("8"));
    
    token = lexer.nextToken(); 
    expect(token.type, equals(t009lexer.DIGIT));
    expect(token.startIndex, equals(2));
    expect(token.stopIndex, equals(2));
    expect(token.text, equals("5"));
    
    token = lexer.nextToken();
    expect(token.type, equals(t009lexer.EOF));
  });
  
  test('testMalformedInput_t009lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("2a");
    Lexer lexer = new t009lexer(stream);
    lexer.nextToken();
    Token token = lexer.nextToken();
    String expected = "line 1:1 mismatched character 'a' expecting set null";
    expect(lexer.reportedErrors.last(), equals(expected));
  });
}

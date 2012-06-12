// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t004lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t004lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t004lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("ffofoofooo");
    Lexer lexer = new t004lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type).equals(t004lexer.FOO);
    expect(token.dynamic.startIndex).equals(0);
    expect(token.dynamic.stopIndex).equals(0);
    expect(token.text).equals("f");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t004lexer.FOO);
    expect(token.dynamic.startIndex).equals(1);
    expect(token.dynamic.stopIndex).equals(2);
    expect(token.text).equals("fo");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t004lexer.FOO);
    expect(token.dynamic.startIndex).equals(3);
    expect(token.dynamic.stopIndex).equals(5);
    expect(token.text).equals("foo");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t004lexer.FOO);
    expect(token.dynamic.startIndex).equals(6);
    expect(token.dynamic.stopIndex).equals(9);
    expect(token.text).equals("fooo");
    
    token = lexer.nextToken();
    expect(token.type).equals(t004lexer.EOF);
  });
  
  test('testMalformedInput_t004lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("2");
    Lexer lexer = new t004lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:0 mismatched character '2' expecting 'f'";
    expect(lexer.reportedErrors.last()).equals(expected);
  });
}

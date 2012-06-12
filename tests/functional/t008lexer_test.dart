// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t008lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t008lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t008lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("ffaf");
    Lexer lexer = new t008lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type).equals(t008lexer.FOO);
    expect(token.dynamic.startIndex).equals(0);
    expect(token.dynamic.stopIndex).equals(0);
    expect(token.text).equals("f");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t008lexer.FOO);
    expect(token.dynamic.startIndex).equals(1);
    expect(token.dynamic.stopIndex).equals(2);
    expect(token.text).equals("fa");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t008lexer.FOO);
    expect(token.dynamic.startIndex).equals(3);
    expect(token.dynamic.stopIndex).equals(3);
    expect(token.text).equals("f");
    
    token = lexer.nextToken();
    expect(token.type).equals(t008lexer.EOF);
  });
  
  test('testMalformedInput_t008lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fafb");
    Lexer lexer = new t008lexer(stream);
    lexer.nextToken();
    lexer.nextToken();
    Token token = lexer.nextToken();
    String expected = "line 1:3 mismatched character 'b' expecting 'f'";
    expect(lexer.reportedErrors.last()).equals(expected);
  });
}

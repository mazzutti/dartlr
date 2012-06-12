// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t010lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t010lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t010lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("foobar _Ab98 \n A12sdf");
    Lexer lexer = new t010lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type).equals(t010lexer.IDENTIFIER);
    expect(token.dynamic.startIndex).equals(0);
    expect(token.dynamic.stopIndex).equals(5);
    expect(token.text).equals("foobar");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t010lexer.WS);
    expect(token.dynamic.startIndex).equals(6);
    expect(token.dynamic.stopIndex).equals(6);
    expect(token.text).equals(" ");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t010lexer.IDENTIFIER);
    expect(token.dynamic.startIndex).equals(7);
    expect(token.dynamic.stopIndex).equals(11);
    expect(token.text).equals("_Ab98");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t010lexer.WS);
    expect(token.dynamic.startIndex).equals(12);
    expect(token.dynamic.stopIndex).equals(14);
    expect(token.text).equals(" \n ");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t010lexer.IDENTIFIER);
    expect(token.dynamic.startIndex).equals(15);
    expect(token.dynamic.stopIndex).equals(20);
    expect(token.text).equals("A12sdf");
    
    token = lexer.nextToken();
    expect(token.type).equals(t010lexer.EOF);
  });
  
  test('testMalformedInput_t010lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("a-b");
    Lexer lexer = new t010lexer(stream);
    lexer.nextToken();
    Token token = lexer.nextToken();
    String expected = "line 1:1 no viable alternative at character '-'";
    expect(lexer.reportedErrors.last()).equals(expected);
  });
}

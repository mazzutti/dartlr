// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t002lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t002lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t002lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("01");
    Lexer lexer = new t002lexer(stream);
    
    Token token = lexer.nextToken();   
    expect(token.type).equals(t002lexer.ZERO);
    
    token = lexer.nextToken();    
    expect(token.type).equals(t002lexer.ONE);
    
    token = lexer.nextToken();    
    expect(token.type).equals(t002lexer.EOF);
  });
  
  test('testMalformedInput_t002lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("2");
    Lexer lexer = new t002lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:0 no viable alternative at character '2'";
    expect(lexer.reportedErrors.last()).equals(expected);
  });
}

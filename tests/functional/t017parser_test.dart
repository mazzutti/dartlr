// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t017parser_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t017parserParser.dart");
#import("../out/t017parserLexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testValid_t017parser", () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo;");
    Lexer lexer = new t017parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t017parserParser parser = new t017parserParser(tstream);
    
    parser.program();
    expect(parser.reportedErrors.length).equals(0);    
  });

  test("testMalformedInput1_t017parser", () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo() { 1+2 }");
    Lexer lexer = new t017parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t017parserParser parser = new t017parserParser(tstream);

    parser.program();
    expect(parser.reportedErrors.length).equals(1);
    expect(parser.reportedErrors[0].indexOf("line 1:16")).equals(0);
  });
  

  test("testMalformedInput2_t017parser", () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo() { 1+; 1+2 }");
    Lexer lexer = new t017parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t017parserParser parser = new t017parserParser(tstream);
    
    parser.program();
    expect(parser.reportedErrors.length).equals(2);
    expect(parser.reportedErrors[0].indexOf("line 1:14")).equals(0);
    expect(parser.reportedErrors[1].indexOf("line 1:20")).equals(0);
  });
  
 
}

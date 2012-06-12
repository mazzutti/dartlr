// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t052import_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t052importM1Lexer.dart");
#import("../out/t052importM1Parser.dart");
#import("../out/t052importM2Lexer.dart");
#import("../out/t052importM2Parser.dart");
#import("../out/t052importM3Lexer.dart");
#import("../out/t052importM3Parser.dart");
#import("../out/t052importM4Lexer.dart");
#import("../out/t052importM4Parser.dart");
#import("../out/t052importM5Lexer.dart");
#import("../out/t052importM5Parser.dart");
#import("../out/t052importM6Lexer.dart");
#import("../out/t052importM6Parser.dart");
#import("../out/t052importM7.dart");
#import("../out/t052importM8.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testDelegatorInvokesDelegateRule_t052import", () {
    var cstream = new ANTLRStringStream("b");
    t052importM1Lexer lexer = new t052importM1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t052importM1Parser parser = new t052importM1Parser(tstream);
    parser.s();    
    expect(parser.output).equals("S.a");
  });
  
  test("testDelegatorInvokesDelegateRuleWithArgs_t052import", () {
    var cstream = new ANTLRStringStream("b");
    t052importM2Lexer lexer = new t052importM2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t052importM2Parser parser = new t052importM2Parser(tstream);
    parser.s();    
    expect(parser.output).equals("S.a1000");
  });
  
  test("testDelegatorAccessesDelegateMembers_t052import", () {
    var cstream = new ANTLRStringStream("b");
    t052importM3Lexer lexer = new t052importM3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t052importM3Parser parser = new t052importM3Parser(tstream);
    parser.s();    
    expect(parser.output).equals("foo");
  });
  
  test("testDelegatorInvokesFirstVersionOfDelegateRule_t052import", () {
    var cstream = new ANTLRStringStream("b");
    t052importM4Lexer lexer = new t052importM4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t052importM4Parser parser = new t052importM4Parser(tstream);
    parser.s();    
    expect(parser.output).equals("S.a");
  });
  
  test("testDelegatesSeeSameTokenType_t052import", () {
    var cstream = new ANTLRStringStream("aa");
    t052importM5Lexer lexer = new t052importM5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t052importM5Parser parser = new t052importM5Parser(tstream);
    parser.s();    
    expect(parser.output).equals("S.x T.y");
  });
  
  test("testDelegatorRuleOverridesDelegate_t052import", () {
    var cstream = new ANTLRStringStream("c");
    t052importM6Lexer lexer = new t052importM6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t052importM6Parser parser = new t052importM6Parser(tstream);
    parser.a();    
    expect(parser.output).equals("S.a");
  });
  
  test("testDelegatorRuleOverridesDelegate_t052import", () {
    var cstream = new ANTLRStringStream("abc");
    t052importM7 lexer = new t052importM7(cstream);
    Token token;
    while (true) {
      token = lexer.nextToken();
      if (token == null || token.type == Token.EOF)
          break;
      lexer.capture(token.text);
    }
    expect(lexer.output).equals("S.A abc");
  });
  
  test("testLexerDelegatorRuleOverridesDelegate_t052import", () {
    var cstream = new ANTLRStringStream("a");
    t052importM8 lexer = new t052importM8(cstream);
    Token token;
    while (true) {
      token = lexer.nextToken();
      if (token == null || token.type == Token.EOF)
          break;
      lexer.capture(token.text);
    }
    expect(lexer.output).equals("M.A a");
  });
}

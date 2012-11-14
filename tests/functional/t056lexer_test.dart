// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t053hetero_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t056lexer1Lexer.dart";
import "../out/t056lexer1Parser.dart";
import "../out/t056lexer2Lexer.dart";
import "../out/t056lexer2Parser.dart";
import "../out/t056lexer3Lexer.dart";
import "../out/t056lexer3Parser.dart";
import "../out/t056lexer4Lexer.dart";
import "../out/t056lexer4Parser.dart";
import "../out/t056lexer5Lexer.dart";
import "../out/t056lexer5Parser.dart";
import "../out/t056lexer6Lexer.dart";
import "../out/t056lexer6Parser.dart";
import "../out/t056lexer7Lexer.dart";
import "../out/t056lexer7Parser.dart";
import "../out/t056lexer8Lexer.dart";
import "../out/t056lexer8Parser.dart";
import "../out/t056lexer9Lexer.dart";
import "../out/t056lexer9Parser.dart";
import "../out/t056lexer10Lexer.dart";
import "../out/t056lexer10Parser.dart";
import "../out/t056lexer11Lexer.dart";
import "../out/t056lexer11Parser.dart";
import "../out/t056lexer12.dart";
import "../out/t056lexer13.dart";
import "../out/t056lexer14.dart";



main() {  
  useVmConfiguration();
  
  test("testSetText_t056lexer", () {
    var cstream = new ANTLRStringStream("\\t");
    t056lexer1Lexer lexer = new t056lexer1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer1Parser parser = new t056lexer1Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("  "));
  });
  
  test("testRefToRuleDoesNotSetTokenNorEmitAnother_t056lexer", () {
    var cstream = new ANTLRStringStream("-34");
    t056lexer2Lexer lexer = new t056lexer2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer2Parser parser = new t056lexer2Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("-34"));
  });
  
  test("testRefToRuleDoesNotSetChannel_t056lexer", () {
    var cstream = new ANTLRStringStream("- 34");
    t056lexer3Lexer lexer = new t056lexer3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer3Parser parser = new t056lexer3Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("- 34, channel=0"));
  }); 
  
  test("testWeCanSetType_t056lexer", () {
    var cstream = new ANTLRStringStream("-34");
    t056lexer4Lexer lexer = new t056lexer4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer4Parser parser = new t056lexer4Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("-34"));
  });

  test("testRefToFragment_t056lexer", () {
    var cstream = new ANTLRStringStream("-34");
    t056lexer5Lexer lexer = new t056lexer5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer5Parser parser = new t056lexer5Parser(tstream);
    parser.a(); 
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("-34"));
  });
  
  test("testMultipleRefToFragment_t056lexer", () {
    var cstream = new ANTLRStringStream("3.14159");
    t056lexer6Lexer lexer = new t056lexer6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer6Parser parser = new t056lexer6Parser(tstream);
    parser.a();  
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("3.14159"));
  });
  
  test("testLabelInSubrule_t056lexer", () {
    var cstream = new ANTLRStringStream("hi 342");
    t056lexer7Lexer lexer = new t056lexer7Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer7Parser parser = new t056lexer7Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("342"));
  });
  
  test("testRefToTokenInLexer_t056lexer", () {
    var cstream = new ANTLRStringStream("342");
    t056lexer8Lexer lexer = new t056lexer8Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer8Parser parser = new t056lexer8Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("342"));
  });
  
  test("testListLabelInLexer_t056lexer", () {
    var cstream = new ANTLRStringStream("33 297");
    t056lexer9Lexer lexer = new t056lexer9Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer9Parser parser = new t056lexer9Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals(" 33 297"));
  });
  
  test("testDupListRefInLexer_t056lexer", () {
    var cstream = new ANTLRStringStream("33 297");
    t056lexer10Lexer lexer = new t056lexer10Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer10Parser parser = new t056lexer10Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals(" 33 297"));
  });
  
  test("testCharLabelInLexer_t056lexer", () {
    var cstream = new ANTLRStringStream("a");
    t056lexer11Lexer lexer = new t056lexer11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t056lexer11Parser parser = new t056lexer11Parser(tstream);
    parser.a();
    String out = "${parser.output}${lexer.output}";
    expect(out, equals("a"));
  });
  
  test("testRepeatedLabelInLexer_t056lexer", () {
    var cstream = new ANTLRStringStream("ababab");
    t056lexer12 lexer = new t056lexer12(cstream);
    Token token;
    do {
      token = lexer.nextToken();
    } while (token.type !== t056lexer12.EOF);
    expect(lexer.output, equals("ababab"));
  });
  
  test("testRepeatedRuleLabelInLexer_t056lexer", () {
    var cstream = new ANTLRStringStream("aa");
    t056lexer13 lexer = new t056lexer13(cstream);
    Token token;
    do {
      token = lexer.nextToken();
    } while (token.type !== t056lexer13.EOF);
    expect(lexer.output, equals("aa"));
  });
  
  test("testEscapedLiterals_t056lexer", () {
    var cstream = new ANTLRStringStream("\\\"");
    t056lexer14 lexer = new t056lexer14(cstream);
    Token token;
    do {
      token = lexer.nextToken();
    } while (token.type !== t056lexer14.EOF);
    expect(lexer.output, equals(r'\"'));
  });
}



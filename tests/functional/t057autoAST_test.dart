// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t057autoAST_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t057autoAST1Lexer.dart";
import "../out/t057autoAST1Parser.dart";
import "../out/t057autoAST2Lexer.dart";
import "../out/t057autoAST2Parser.dart";
import "../out/t057autoAST3Lexer.dart";
import "../out/t057autoAST3Parser.dart";
import "../out/t057autoAST4Lexer.dart";
import "../out/t057autoAST4Parser.dart";
import "../out/t057autoAST5Lexer.dart";
import "../out/t057autoAST5Parser.dart";
import "../out/t057autoAST6Lexer.dart";
import "../out/t057autoAST6Parser.dart";
import "../out/t057autoAST7Lexer.dart";
import "../out/t057autoAST7Parser.dart";
import "../out/t057autoAST8Lexer.dart";
import "../out/t057autoAST8Parser.dart";
import "../out/t057autoAST9Lexer.dart";
import "../out/t057autoAST9Parser.dart";
import "../out/t057autoAST10Lexer.dart";
import "../out/t057autoAST10Parser.dart";
import "../out/t057autoAST11Lexer.dart";
import "../out/t057autoAST11Parser.dart";
import "../out/t057autoAST12Lexer.dart";
import "../out/t057autoAST12Parser.dart";
import "../out/t057autoAST13Lexer.dart";
import "../out/t057autoAST13Parser.dart";
import "../out/t057autoAST14Lexer.dart";
import "../out/t057autoAST14Parser.dart";
import "../out/t057autoAST15Lexer.dart";
import "../out/t057autoAST15Parser.dart";
import "../out/t057autoAST16Lexer.dart";
import "../out/t057autoAST16Parser.dart";
import "../out/t057autoAST17Lexer.dart";
import "../out/t057autoAST17Parser.dart";
import "../out/t057autoAST18Lexer.dart";
import "../out/t057autoAST18Parser.dart";
import "../out/t057autoAST19Lexer.dart";
import "../out/t057autoAST19Parser.dart";
import "../out/t057autoAST20Lexer.dart";
import "../out/t057autoAST20Parser.dart";
import "../out/t057autoAST21Lexer.dart";
import "../out/t057autoAST21Parser.dart";
import "../out/t057autoAST22Lexer.dart";
import "../out/t057autoAST22Parser.dart";
import "../out/t057autoAST23Lexer.dart";
import "../out/t057autoAST23Parser.dart";
import "../out/t057autoAST24Lexer.dart";
import "../out/t057autoAST24Parser.dart";
import "../out/t057autoAST25Lexer.dart";
import "../out/t057autoAST25Parser.dart";
import "../out/t057autoAST26Lexer.dart";
import "../out/t057autoAST26Parser.dart";
import "../out/t057autoAST27Lexer.dart";
import "../out/t057autoAST27Parser.dart";
import "../out/t057autoAST28Lexer.dart";
import "../out/t057autoAST28Parser.dart";
import "../out/t057autoAST29Lexer.dart";
import "../out/t057autoAST29Parser.dart";
import "../out/t057autoAST30Lexer.dart";
import "../out/t057autoAST30Parser.dart";
import "../out/t057autoAST31Lexer.dart";
import "../out/t057autoAST31Parser.dart";
import "../out/t057autoAST32Lexer.dart";
import "../out/t057autoAST32Parser.dart";
import "../out/t057autoAST33Lexer.dart";
import "../out/t057autoAST33Parser.dart";
import "../out/t057autoAST34Lexer.dart";
import "../out/t057autoAST34Parser.dart";
import "../out/t057autoAST35Lexer.dart";
import "../out/t057autoAST35Parser.dart";
import "../out/t057autoAST36Lexer.dart";
import "../out/t057autoAST36Parser.dart";
import "../out/t057autoAST37Lexer.dart";
import "../out/t057autoAST37Parser.dart";
import "../out/t057autoAST38Lexer.dart";
import "../out/t057autoAST38Parser.dart";
import "../out/t057autoAST39Lexer.dart";
import "../out/t057autoAST39Parser.dart";
import "../out/t057autoAST40Lexer.dart";
import "../out/t057autoAST40Parser.dart";
import "../out/t057autoAST41Lexer.dart";
import "../out/t057autoAST41Parser.dart";
import "../out/t057autoAST42Lexer.dart";
import "../out/t057autoAST42Parser.dart";
import "../out/t057autoAST43Lexer.dart";
import "../out/t057autoAST43Parser.dart";
import "../out/t057autoAST44Lexer.dart";
import "../out/t057autoAST44Parser.dart";
import "../out/t057autoAST45Lexer.dart";
import "../out/t057autoAST45Parser.dart";
import "../out/t057autoAST46Lexer.dart";
import "../out/t057autoAST46Parser.dart";
import "../out/t057autoAST47Lexer.dart";
import "../out/t057autoAST47Parser.dart";
import "../out/t057autoAST48Lexer.dart";
import "../out/t057autoAST48Parser.dart";
import "../out/t057autoAST49Lexer.dart";
import "../out/t057autoAST49Parser.dart";
import "../out/t057autoAST50Lexer.dart";
import "../out/t057autoAST50Parser.dart";
import "../out/t057autoAST51Lexer.dart";
import "../out/t057autoAST51Parser.dart";
import "../out/t057autoAST52Lexer.dart";
import "../out/t057autoAST52Parser.dart";
import "../out/t057autoAST53Lexer.dart";
import "../out/t057autoAST53Parser.dart";
import "../out/t057autoAST54Lexer.dart";
import "../out/t057autoAST54Parser.dart";

main() {  
  useVmConfiguration();
  
  test("testTokenList_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t057autoAST1Lexer lexer = new t057autoAST1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST1Parser parser = new t057autoAST1Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc 34"));
  });
  
  test("testTokenListInSingleAltBlock_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t057autoAST2Lexer lexer = new t057autoAST2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST2Parser parser = new t057autoAST2Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc 34"));
  });
  
  test("testSimpleRootAtOuterLevel_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t057autoAST3Lexer lexer = new t057autoAST3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST3Parser parser = new t057autoAST3Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(abc 34)"));
  });
  
  test("testSimpleRootAtOuterLevelReverse_t057autoAST", () {
    var cstream = new ANTLRStringStream("34 abc");
    t057autoAST4Lexer lexer = new t057autoAST4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST4Parser parser = new t057autoAST4Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(abc 34)"));
  });
  
  test("testBang_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34 dag 4532");
    t057autoAST5Lexer lexer = new t057autoAST5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST5Parser parser = new t057autoAST5Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc 4532"));
  });
  
  test("testOptionalThenRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("a 1 b");
    t057autoAST6Lexer lexer = new t057autoAST6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST6Parser parser = new t057autoAST6Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(b a 1)"));
  });
  
  test("testLabeledStringRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("void foo;");
    t057autoAST7Lexer lexer = new t057autoAST7Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST7Parser parser = new t057autoAST7Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(void foo ;)"));
  });
  
  test("testWildcard_t057autoAST", () {
    var cstream = new ANTLRStringStream("void foo;");
    t057autoAST8Lexer lexer = new t057autoAST8Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST8Parser parser = new t057autoAST8Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(void foo ;)"));
  });
  
  test("testWildcardRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("void foo;");
    t057autoAST9Lexer lexer = new t057autoAST9Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST9Parser parser = new t057autoAST9Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(foo void ;)"));
  });
  
  test("testWildcardRootWithLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("void foo;");
    t057autoAST10Lexer lexer = new t057autoAST10Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST10Parser parser = new t057autoAST10Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(foo void ;)"));
  });
  
  test("testWildcardRootWithListLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("void foo;");
    t057autoAST11Lexer lexer = new t057autoAST11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST11Parser parser = new t057autoAST11Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(foo void ;)"));
  });
  
  test("testRootRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("a 34 c");
    t057autoAST12Lexer lexer = new t057autoAST12Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST12Parser parser = new t057autoAST12Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(34 a c)"));
  });
  
  test("testRootRoot2_t057autoAST", () {
    var cstream = new ANTLRStringStream("a 34 c");
    t057autoAST13Lexer lexer = new t057autoAST13Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST13Parser parser = new t057autoAST13Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(c (34 a))"));
  });
  
  test("testRootThenRootInLoop_t057autoAST", () {
    var cstream = new ANTLRStringStream("a 34 * b 9 * c");
    t057autoAST14Lexer lexer = new t057autoAST14Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST14Parser parser = new t057autoAST14Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(* (* (a 34) b 9) c)"));
  });
  
  test("testNestedSubrule_t057autoAST", () {
    var cstream = new ANTLRStringStream("void a b;");
    t057autoAST15Lexer lexer = new t057autoAST15Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST15Parser parser = new t057autoAST15Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("void a b ;"));
  });
  
  test("testInvokeRule_t057autoAST", () {
    var cstream = new ANTLRStringStream("int a");
    t057autoAST16Lexer lexer = new t057autoAST16Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST16Parser parser = new t057autoAST16Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("int a"));
  });
  
  test("testInvokeRuleAsRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("int a");
    t057autoAST17Lexer lexer = new t057autoAST17Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST17Parser parser = new t057autoAST17Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(int a)"));
  });
  
  test("testInvokeRuleAsRootWithLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("int a");
    t057autoAST18Lexer lexer = new t057autoAST18Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST18Parser parser = new t057autoAST18Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(int a)"));
  });
  
  test("testInvokeRuleAsRootWithListLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("int a");
    t057autoAST19Lexer lexer = new t057autoAST19Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST19Parser parser = new t057autoAST19Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(int a)"));
  });
  
  test("testRuleRootInLoop_t057autoAST", () {
    var cstream = new ANTLRStringStream("a+b+c+d");
    t057autoAST20Lexer lexer = new t057autoAST20Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST20Parser parser = new t057autoAST20Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(+ (+ (+ a b) c) d)"));
  });
  
  test("testRuleInvocationRuleRootInLoop_t057autoAST", () {
    var cstream = new ANTLRStringStream("a+b+c-d");
    t057autoAST21Lexer lexer = new t057autoAST21Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST21Parser parser = new t057autoAST21Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(- (+ (+ a b) c) d)"));
  });
  
  test("testTailRecursion_t057autoAST", () {
    var cstream = new ANTLRStringStream("3 exp 4 exp 5");
    t057autoAST22Lexer lexer = new t057autoAST22Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST22Parser parser = new t057autoAST22Parser(tstream);
    var ret = parser.s();
    String out = ret.tree.toStringTree();
    expect(out, equals("(exp 3 (exp 4 5))"));
  });
  
  test("testSet_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc");
    t057autoAST23Lexer lexer = new t057autoAST23Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST23Parser parser = new t057autoAST23Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc"));
  });
  
  test("testSetRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("+abc");
    t057autoAST24Lexer lexer = new t057autoAST24Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST24Parser parser = new t057autoAST24Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(+ abc)"));
  });
  
  test("testSetRootWithLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("+abc");
    t057autoAST25Lexer lexer = new t057autoAST25Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST25Parser parser = new t057autoAST25Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(+ abc)"));
  });
  
  test("testSetAsRuleRootInLoop_t057autoAST", () {
    var cstream = new ANTLRStringStream("a+b-c");
    t057autoAST26Lexer lexer = new t057autoAST26Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST26Parser parser = new t057autoAST26Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(- (+ a b) c)"));
  });
  
  test("testNotSet_t057autoAST", () {
    var cstream = new ANTLRStringStream("34+2");
    t057autoAST27Lexer lexer = new t057autoAST27Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST27Parser parser = new t057autoAST27Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("34 + 2"));
  });
  

  test("testNotSetWithLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("34+2");
    t057autoAST28Lexer lexer = new t057autoAST28Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST28Parser parser = new t057autoAST28Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("34 + 2"));
  });
  
  test("testNotSetWithListLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("34+2");
    t057autoAST29Lexer lexer = new t057autoAST29Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST29Parser parser = new t057autoAST29Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("34 + 2"));
  });
  
  test("testNotSetRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("34 55");
    t057autoAST30Lexer lexer = new t057autoAST30Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST30Parser parser = new t057autoAST30Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(34 55)"));
  });
  
  test("testNotSetRootWithLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("34 55");
    t057autoAST31Lexer lexer = new t057autoAST31Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST31Parser parser = new t057autoAST31Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(34 55)"));
  });
  
  test("testNotSetRootWithListLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("34 55");
    t057autoAST32Lexer lexer = new t057autoAST32Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST32Parser parser = new t057autoAST32Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(34 55)"));
  });
  
  test("testNotSetRuleRootInLoop_t057autoAST", () {
    var cstream = new ANTLRStringStream("3+4+5");
    t057autoAST33Lexer lexer = new t057autoAST33Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST33Parser parser = new t057autoAST33Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("(+ (+ 3 4) 5)"));
  });
  
  test("testTokenLabelReuse_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST34Lexer lexer = new t057autoAST34Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST34Parser parser = new t057autoAST34Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("2nd id=b;a b"));
  });
  
  test("testTokenLabelReuse2_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST35Lexer lexer = new t057autoAST35Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST35Parser parser = new t057autoAST35Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("2nd id=b,(b a)"));
  });
  
  test("testTokenListLabelReuse_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST36Lexer lexer = new t057autoAST36Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST36Parser parser = new t057autoAST36Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("id list=[a,b,],a b"));
  });
  
  test("testTokenListLabelReuse2_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST37Lexer lexer = new t057autoAST37Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST37Parser parser = new t057autoAST37Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("id list=[a,b,],(a b)"));
  });
  
  test("testTokenListLabelReuse2_t057autoAST", () {
    var cstream = new ANTLRStringStream("a");
    t057autoAST38Lexer lexer = new t057autoAST38Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST38Parser parser = new t057autoAST38Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("a"));
  });
  
  test("testTokenListLabelBang_t057autoAST", () {
    var cstream = new ANTLRStringStream("a");
    t057autoAST39Lexer lexer = new t057autoAST39Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST39Parser parser = new t057autoAST39Parser(tstream);
    var ret = parser.a();
    expect(ret.tree, equals(null));
  });
  
  test("testRuleListLabel_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST40Lexer lexer = new t057autoAST40Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST40Parser parser = new t057autoAST40Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("2nd x=b,a b"));
  });
  
  test("testRuleListLabelRuleRoot_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST41Lexer lexer = new t057autoAST41Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST41Parser parser = new t057autoAST41Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("x=(b a),(b a)"));
  });
  
  test("testRuleListLabelBang_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b");
    t057autoAST42Lexer lexer = new t057autoAST42Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST42Parser parser = new t057autoAST42Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("1st x=a,b"));
  });
  
  test("testComplicatedMelange_t057autoAST", () {
    var cstream = new ANTLRStringStream("a b b c c d");
    t057autoAST43Lexer lexer = new t057autoAST43Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST43Parser parser = new t057autoAST43Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("a b b c c d"));
  });
  
  test("testReturnValueWithAST_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t057autoAST44Lexer lexer = new t057autoAST44Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST44Parser parser = new t057autoAST44Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("34\nabc 34"));
  });
  
  test("testReturnValueWithAST_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t057autoAST44Lexer lexer = new t057autoAST44Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST44Parser parser = new t057autoAST44Parser(tstream);
    var ret = parser.a();
    String out = "${ret.result}${ret.tree.toStringTree()}";
    expect(out, equals("34\nabc 34"));
  });
  
  test("testSetLoop_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc 34 d");
    t057autoAST45Lexer lexer = new t057autoAST45Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST45Parser parser = new t057autoAST45Parser(tstream);
    var ret = parser.r();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc 34 d"));
  });
  
  test("testExtraTokenInSimpleDecl_t057autoAST", () {
    var cstream = new ANTLRStringStream("int 34 x=1;");
    t057autoAST46Lexer lexer = new t057autoAST46Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST46Parser parser = new t057autoAST46Parser(tstream);
    var ret = parser.decl();
    String out = ret.tree.toStringTree();
    expect(out, equals("(int x 1)"));
    List<String> expected = ["line 1:4 extraneous input '34' expecting ID"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testMissingIDInSimpleDecl_t057autoAST", () {
    var cstream = new ANTLRStringStream("int =1;");
    t057autoAST47Lexer lexer = new t057autoAST47Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST47Parser parser = new t057autoAST47Parser(tstream);
    var ret = parser.decl();
    String out = ret.tree.toStringTree();
    expect(out, equals("(int <missing ID> 1)"));
    List<String> expected = ["line 1:4 missing ID at '='"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testMissingSetInSimpleDecl_t057autoAST", () {
    var cstream = new ANTLRStringStream("x=1;");
    t057autoAST48Lexer lexer = new t057autoAST48Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST48Parser parser = new t057autoAST48Parser(tstream);
    var ret = parser.decl();
    String out = ret.tree.toStringTree();
    expect(out, equals("(<error: x> x 1)"));
    List<String> expected = ["line 1:0 mismatched input 'x' expecting set null"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testMissingTokenGivesErrorNode_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc");
    t057autoAST49Lexer lexer = new t057autoAST49Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST49Parser parser = new t057autoAST49Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc <missing INT>"));
    List<String> expected = ["line 1:3 missing INT at '<EOF>'"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testMissingTokenGivesErrorNodeInInvokedRule_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc");
    t057autoAST50Lexer lexer = new t057autoAST50Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST50Parser parser = new t057autoAST50Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("<mismatched token: [@1,3:3='<EOF>',<-1>,1:3], resync=abc>"));
    List<String> expected = ["line 1:3 mismatched input '<EOF>' expecting INT"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testExtraTokenGivesErrorNode_t057autoAST", () {
    var cstream = new ANTLRStringStream("abc ick 34");
    t057autoAST51Lexer lexer = new t057autoAST51Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST51Parser parser = new t057autoAST51Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("abc 34"));
    List<String> expected = ["line 1:4 extraneous input 'ick' expecting INT"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testMissingFirstTokenGivesErrorNode_t057autoAST", () {
    var cstream = new ANTLRStringStream("34");
    t057autoAST52Lexer lexer = new t057autoAST52Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST52Parser parser = new t057autoAST52Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("<missing ID> 34"));
    List<String> expected = ["line 1:0 missing ID at '34'"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testMissingFirstTokenGivesErrorNode2_t057autoAST", () {
    var cstream = new ANTLRStringStream("34");
    t057autoAST53Lexer lexer = new t057autoAST53Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST53Parser parser = new t057autoAST53Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("<missing ID> 34"));
    List<String> expected = ["line 1:0 missing ID at '34'"];
    expect(parser.reportedErrors, equals(expected));
  });
  
  test("testNoViableAltGivesErrorNode_t057autoAST", () {
    var cstream = new ANTLRStringStream("*");
    t057autoAST54Lexer lexer = new t057autoAST54Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t057autoAST54Parser parser = new t057autoAST54Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.toStringTree();
    expect(out, equals("<unexpected: [@0,0:0='*',<6>,1:0], resync=*>"));
    List<String> expected = ["line 1:0 no viable alternative at input '*'"];
    expect(parser.reportedErrors, equals(expected));
  });
  
}

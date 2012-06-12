// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t058rewriteAST_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t058rewriteAST1Lexer.dart");
#import("../out/t058rewriteAST1Parser.dart");
#import("../out/t058rewriteAST2Lexer.dart");
#import("../out/t058rewriteAST2Parser.dart");
#import("../out/t058rewriteAST3Lexer.dart");
#import("../out/t058rewriteAST3Parser.dart");
#import("../out/t058rewriteAST4Lexer.dart");
#import("../out/t058rewriteAST4Parser.dart");
#import("../out/t058rewriteAST5Lexer.dart");
#import("../out/t058rewriteAST5Parser.dart");
#import("../out/t058rewriteAST6Lexer.dart");
#import("../out/t058rewriteAST6Parser.dart");
#import("../out/t058rewriteAST7Lexer.dart");
#import("../out/t058rewriteAST7Parser.dart");
#import("../out/t058rewriteAST8Lexer.dart");
#import("../out/t058rewriteAST8Parser.dart");
#import("../out/t058rewriteAST9Lexer.dart");
#import("../out/t058rewriteAST9Parser.dart");
#import("../out/t058rewriteAST10Lexer.dart");
#import("../out/t058rewriteAST10Parser.dart");
#import("../out/t058rewriteAST11Lexer.dart");
#import("../out/t058rewriteAST11Parser.dart");
#import("../out/t058rewriteAST12Lexer.dart");
#import("../out/t058rewriteAST12Parser.dart");
#import("../out/t058rewriteAST13Lexer.dart");
#import("../out/t058rewriteAST13Parser.dart");
#import("../out/t058rewriteAST14Lexer.dart");
#import("../out/t058rewriteAST14Parser.dart");
#import("../out/t058rewriteAST15Lexer.dart");
#import("../out/t058rewriteAST15Parser.dart");
#import("../out/t058rewriteAST16Lexer.dart");
#import("../out/t058rewriteAST16Parser.dart");
#import("../out/t058rewriteAST17Lexer.dart");
#import("../out/t058rewriteAST17Parser.dart");
#import("../out/t058rewriteAST18Lexer.dart");
#import("../out/t058rewriteAST18Parser.dart");
#import("../out/t058rewriteAST19Lexer.dart");
#import("../out/t058rewriteAST19Parser.dart");
#import("../out/t058rewriteAST20Lexer.dart");
#import("../out/t058rewriteAST20Parser.dart");
#import("../out/t058rewriteAST21Lexer.dart");
#import("../out/t058rewriteAST21Parser.dart");
#import("../out/t058rewriteAST22Lexer.dart");
#import("../out/t058rewriteAST22Parser.dart");
#import("../out/t058rewriteAST23Lexer.dart");
#import("../out/t058rewriteAST23Parser.dart");
#import("../out/t058rewriteAST24Lexer.dart");
#import("../out/t058rewriteAST24Parser.dart");
#import("../out/t058rewriteAST25Lexer.dart");
#import("../out/t058rewriteAST25Parser.dart");
#import("../out/t058rewriteAST26Lexer.dart");
#import("../out/t058rewriteAST26Parser.dart");
#import("../out/t058rewriteAST27Lexer.dart");
#import("../out/t058rewriteAST27Parser.dart");
#import("../out/t058rewriteAST28Lexer.dart");
#import("../out/t058rewriteAST28Parser.dart");
#import("../out/t058rewriteAST29Lexer.dart");
#import("../out/t058rewriteAST29Parser.dart");
#import("../out/t058rewriteAST30Lexer.dart");
#import("../out/t058rewriteAST30Parser.dart");
#import("../out/t058rewriteAST31Lexer.dart");
#import("../out/t058rewriteAST31Parser.dart");
#import("../out/t058rewriteAST32Lexer.dart");
#import("../out/t058rewriteAST32Parser.dart");
#import("../out/t058rewriteAST33Lexer.dart");
#import("../out/t058rewriteAST33Parser.dart");
#import("../out/t058rewriteAST34Lexer.dart");
#import("../out/t058rewriteAST34Parser.dart");
#import("../out/t058rewriteAST35Lexer.dart");
#import("../out/t058rewriteAST35Parser.dart");
#import("../out/t058rewriteAST36Lexer.dart");
#import("../out/t058rewriteAST36Parser.dart");
#import("../out/t058rewriteAST37Lexer.dart");
#import("../out/t058rewriteAST37Parser.dart");
#import("../out/t058rewriteAST38Lexer.dart");
#import("../out/t058rewriteAST38Parser.dart");
#import("../out/t058rewriteAST39Lexer.dart");
#import("../out/t058rewriteAST39Parser.dart");
#import("../out/t058rewriteAST40Lexer.dart");
#import("../out/t058rewriteAST40Parser.dart");
#import("../out/t058rewriteAST41Lexer.dart");
#import("../out/t058rewriteAST41Parser.dart");
#import("../out/t058rewriteAST42Lexer.dart");
#import("../out/t058rewriteAST42Parser.dart");
#import("../out/t058rewriteAST43Lexer.dart");
#import("../out/t058rewriteAST43Parser.dart");
#import("../out/t058rewriteAST44Lexer.dart");
#import("../out/t058rewriteAST44Parser.dart");
#import("../out/t058rewriteAST45Lexer.dart");
#import("../out/t058rewriteAST45Parser.dart");
#import("../out/t058rewriteAST46Lexer.dart");
#import("../out/t058rewriteAST46Parser.dart");
#import("../out/t058rewriteAST47Lexer.dart");
#import("../out/t058rewriteAST47Parser.dart");
#import("../out/t058rewriteAST48Lexer.dart");
#import("../out/t058rewriteAST48Parser.dart");
#import("../out/t058rewriteAST49Lexer.dart");
#import("../out/t058rewriteAST49Parser.dart");
#import("../out/t058rewriteAST50Lexer.dart");
#import("../out/t058rewriteAST50Parser.dart");
#import("../out/t058rewriteAST51Lexer.dart");
#import("../out/t058rewriteAST51Parser.dart");
#import("../out/t058rewriteAST52Lexer.dart");
#import("../out/t058rewriteAST52Parser.dart");
#import("../out/t058rewriteAST53Lexer.dart");
#import("../out/t058rewriteAST53Parser.dart");
#import("../out/t058rewriteAST54Lexer.dart");
#import("../out/t058rewriteAST54Parser.dart");
#import("../out/t058rewriteAST55Lexer.dart");
#import("../out/t058rewriteAST55Parser.dart");
#import("../out/t058rewriteAST56Lexer.dart");
#import("../out/t058rewriteAST56Parser.dart");
#import("../out/t058rewriteAST57Lexer.dart");
#import("../out/t058rewriteAST57Parser.dart");
#import("../out/t058rewriteAST58Lexer.dart");
#import("../out/t058rewriteAST58Parser.dart");
#import("../out/t058rewriteAST59Lexer.dart");
#import("../out/t058rewriteAST59Parser.dart");
#import("../out/t058rewriteAST60Lexer.dart");
#import("../out/t058rewriteAST60Parser.dart");
#import("../out/t058rewriteAST61Lexer.dart");
#import("../out/t058rewriteAST61Parser.dart");
#import("../out/t058rewriteAST62Lexer.dart");
#import("../out/t058rewriteAST62Parser.dart");
#import("../out/t058rewriteAST63Lexer.dart");
#import("../out/t058rewriteAST63Parser.dart");
#import("../out/t058rewriteAST64Lexer.dart");
#import("../out/t058rewriteAST64Parser.dart");
#import("../out/t058rewriteAST65Lexer.dart");
#import("../out/t058rewriteAST65Parser.dart");
#import("../out/t058rewriteAST66Lexer.dart");
#import("../out/t058rewriteAST66Parser.dart");
#import("../out/t058rewriteAST67Lexer.dart");
#import("../out/t058rewriteAST67Parser.dart");
#import("../out/t058rewriteAST68Lexer.dart");
#import("../out/t058rewriteAST68Parser.dart");
#import("../out/t058rewriteAST69Lexer.dart");
#import("../out/t058rewriteAST69Parser.dart");
#import("../out/t058rewriteAST70Lexer.dart");
#import("../out/t058rewriteAST70Parser.dart");
#import("../out/t058rewriteAST71Lexer.dart");
#import("../out/t058rewriteAST71Parser.dart");
#import("../out/t058rewriteAST72Lexer.dart");
#import("../out/t058rewriteAST72Parser.dart");
#import("../out/t058rewriteAST73Lexer.dart");
#import("../out/t058rewriteAST73Parser.dart");
#import("../out/t058rewriteAST74Lexer.dart");
#import("../out/t058rewriteAST74Parser.dart");
#import("../out/t058rewriteAST75Lexer.dart");
#import("../out/t058rewriteAST75Parser.dart");
#import("../out/t058rewriteAST76Lexer.dart");
#import("../out/t058rewriteAST76Parser.dart");
#import("../out/t058rewriteAST77Lexer.dart");
#import("../out/t058rewriteAST77Parser.dart");
#import("../out/t058rewriteAST78Lexer.dart");
#import("../out/t058rewriteAST78Parser.dart");
#import("../out/t058rewriteAST79Lexer.dart");
#import("../out/t058rewriteAST79Parser.dart");
#import("../out/t058rewriteAST80Lexer.dart");
#import("../out/t058rewriteAST80Parser.dart");
#import("../out/t058rewriteAST81Lexer.dart");
#import("../out/t058rewriteAST81Parser.dart");
#import("../out/t058rewriteAST82Lexer.dart");
#import("../out/t058rewriteAST82Parser.dart");
#import("../out/t058rewriteAST83Lexer.dart");
#import("../out/t058rewriteAST83Parser.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testDelete_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t058rewriteAST1Lexer lexer = new t058rewriteAST1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST1Parser parser = new t058rewriteAST1Parser(tstream);
    var ret = parser.a();
    expect(ret.tree).isNull();
  });  
  
  test("testSingleToken_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST2Lexer lexer = new t058rewriteAST2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST2Parser parser = new t058rewriteAST2Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc");
  }); 
  
  test("testSingleTokenToNewNode_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST3Lexer lexer = new t058rewriteAST3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST3Parser parser = new t058rewriteAST3Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("x");
  });
  
  test("testSingleTokenToNewNodeRoot_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST4Lexer lexer = new t058rewriteAST4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST4Parser parser = new t058rewriteAST4Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(x INT)");
  });
  
  test("testSingleTokenToNewNode2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST5Lexer lexer = new t058rewriteAST5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST5Parser parser = new t058rewriteAST5Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("ID");
  });
  
  test("testSingleCharLiteral_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("c");
    t058rewriteAST6Lexer lexer = new t058rewriteAST6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST6Parser parser = new t058rewriteAST6Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("c");
  });
  
  test("testSingleCharLiteral_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("ick");
    t058rewriteAST7Lexer lexer = new t058rewriteAST7Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST7Parser parser = new t058rewriteAST7Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("ick");
  });
  
  test("testSingleRule_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST8Lexer lexer = new t058rewriteAST8Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST8Parser parser = new t058rewriteAST8Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc");
  });
  
  test("testReorderTokens_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t058rewriteAST9Lexer lexer = new t058rewriteAST9Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST9Parser parser = new t058rewriteAST9Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("34 abc");
  });
  
  test("testReorderTokenAndRule_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t058rewriteAST10Lexer lexer = new t058rewriteAST10Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST10Parser parser = new t058rewriteAST10Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("34 abc");
  });
  
  test("testTokenTree_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t058rewriteAST11Lexer lexer = new t058rewriteAST11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST11Parser parser = new t058rewriteAST11Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(34 abc)");
  });
  
  test("testTokenTreeAfterOtherStuff_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("void abc 34");
    t058rewriteAST12Lexer lexer = new t058rewriteAST12Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST12Parser parser = new t058rewriteAST12Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("void (34 abc)");
  });
  
  test("testNestedTokenTreeWithOuterLoop_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a 1 b 2");
    t058rewriteAST13Lexer lexer = new t058rewriteAST13Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST13Parser parser = new t058rewriteAST13Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(DUH a (DUH 1)) (DUH b (DUH 2))");
  });
  
  test("testOptionalSingleToken_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST14Lexer lexer = new t058rewriteAST14Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST14Parser parser = new t058rewriteAST14Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc");
  });
  
  test("testClosureSingleToken_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST15Lexer lexer = new t058rewriteAST15Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST15Parser parser = new t058rewriteAST15Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testPositiveClosureSingleToken_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST16Lexer lexer = new t058rewriteAST16Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST16Parser parser = new t058rewriteAST16Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testOptionalSingleRule_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST17Lexer lexer = new t058rewriteAST17Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST17Parser parser = new t058rewriteAST17Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc");
  });
  
  test("testClosureSingleRule_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST18Lexer lexer = new t058rewriteAST18Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST18Parser parser = new t058rewriteAST18Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testClosureOfLabel_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST19Lexer lexer = new t058rewriteAST19Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST19Parser parser = new t058rewriteAST19Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testOptionalLabelNoListLabel_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST20Lexer lexer = new t058rewriteAST20Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST20Parser parser = new t058rewriteAST20Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a");
  });
  
  test("testPositiveClosureSingleRule_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST21Lexer lexer = new t058rewriteAST21Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST21Parser parser = new t058rewriteAST21Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testSinglePredicateT_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST22Lexer lexer = new t058rewriteAST22Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST22Parser parser = new t058rewriteAST22Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc");
  });
  
  test("testSinglePredicateF_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST23Lexer lexer = new t058rewriteAST23Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST23Parser parser = new t058rewriteAST23Parser(tstream);
    var ret = parser.a();
    expect(ret.tree).isNull();
  });
  
  test("testMultiplePredicate_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a 2");
    t058rewriteAST24Lexer lexer = new t058rewriteAST24Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST24Parser parser = new t058rewriteAST24Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("2");
  });
  
  test("testMultiplePredicateTrees_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a 2");
    t058rewriteAST25Lexer lexer = new t058rewriteAST25Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST25Parser parser = new t058rewriteAST25Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(2 a)");
  });
  
  test("testSimpleTree_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("-34");
    t058rewriteAST26Lexer lexer = new t058rewriteAST26Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST26Parser parser = new t058rewriteAST26Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(- 34)");
  });
  
  test("testSimpleTree2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("+ 34");
    t058rewriteAST27Lexer lexer = new t058rewriteAST27Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST27Parser parser = new t058rewriteAST27Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(34 +)");
  });
  
  test("testNestedTrees_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("var a:int; b:float;");
    t058rewriteAST28Lexer lexer = new t058rewriteAST28Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST28Parser parser = new t058rewriteAST28Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(var (: a int) (: b float))");
  });
  
  test("testImaginaryTokenCopy_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a,b,c");
    t058rewriteAST29Lexer lexer = new t058rewriteAST29Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST29Parser parser = new t058rewriteAST29Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(VAR a) (VAR b) (VAR c)");
  });
  
  test("testTokenUnreferencedOnLeftButDefined_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST30Lexer lexer = new t058rewriteAST30Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST30Parser parser = new t058rewriteAST30Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("ID");
  });
  
  test("testImaginaryTokenCopySetText_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a,b,c");
    t058rewriteAST31Lexer lexer = new t058rewriteAST31Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST31Parser parser = new t058rewriteAST31Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(var a) (var b) (var c)");
  });
  
  test("testImaginaryTokenNoCopyFromToken_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("{a b c}");
    t058rewriteAST32Lexer lexer = new t058rewriteAST32Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST32Parser parser = new t058rewriteAST32Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("({ a b c)");
  });
  
  test("testImaginaryTokenNoCopyFromTokenSetText_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("{a b c}");
    t058rewriteAST33Lexer lexer = new t058rewriteAST33Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST33Parser parser = new t058rewriteAST33Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(block a b c)");
  });
  
  test("testMixedRewriteAndAutoAST_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a 1 2");
    t058rewriteAST34Lexer lexer = new t058rewriteAST34Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST34Parser parser = new t058rewriteAST34Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(2 1 a)");
  });
  
  test("testSubruleWithRewrite_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a 1 2 3");
    t058rewriteAST35Lexer lexer = new t058rewriteAST35Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST35Parser parser = new t058rewriteAST35Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("1 a 2 3");
  });
  
  test("testSubruleWithRewrite2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int a; int b=3;");
    t058rewriteAST36Lexer lexer = new t058rewriteAST36Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST36Parser parser = new t058rewriteAST36Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(TYPE int a) (TYPE int b 3)");
  });
  
  test("testNestedRewriteShutsOffAutoAST_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b c d; 42");
    t058rewriteAST37Lexer lexer = new t058rewriteAST37Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST37Parser parser = new t058rewriteAST37Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("d 42");
  });
  
  test("testRewriteActions_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("3");
    t058rewriteAST38Lexer lexer = new t058rewriteAST38Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST38Parser parser = new t058rewriteAST38Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(9 3)");
  });
  
  test("testRewriteActions2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("3");
    t058rewriteAST39Lexer lexer = new t058rewriteAST39Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST39Parser parser = new t058rewriteAST39Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("9 3");
  });
  
  test("testRefToOldValue_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("3+4+5");
    t058rewriteAST40Lexer lexer = new t058rewriteAST40Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST40Parser parser = new t058rewriteAST40Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(+ (+ 3 4) 5)");
  });
  
  test("testCopySemanticsForRules_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("3");
    t058rewriteAST41Lexer lexer = new t058rewriteAST41Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST41Parser parser = new t058rewriteAST41Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(3 3)");
  });
  
  test("testCopySemanticsForRules2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int a,b,c;");
    t058rewriteAST42Lexer lexer = new t058rewriteAST42Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST42Parser parser = new t058rewriteAST42Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int a) (int b) (int c)");
  });
  
  test("testCopySemanticsForRules3_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("public int a,b,c;");
    t058rewriteAST43Lexer lexer = new t058rewriteAST43Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST43Parser parser = new t058rewriteAST43Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int public a) (int public b) (int public c)");
  });
  
  test("testCopySemanticsForRules3Double_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("public int a,b,c;");
    t058rewriteAST44Lexer lexer = new t058rewriteAST44Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST44Parser parser = new t058rewriteAST44Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int public a) (int public b) "
      "(int public c) (int public a) (int public b) (int public c)");
  });
  
  test("testCopySemanticsForRules4_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("public int a,b,c;");
    t058rewriteAST45Lexer lexer = new t058rewriteAST45Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST45Parser parser = new t058rewriteAST45Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int (MOD public) a) "
      "(int (MOD public) b) (int (MOD public) c)");
  });
  
  test("testCopySemanticsLists_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a,b,c;");
    t058rewriteAST46Lexer lexer = new t058rewriteAST46Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST46Parser parser = new t058rewriteAST46Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b c a b c");
  });
  
  test("testCopyRuleLabel_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST47Lexer lexer = new t058rewriteAST47Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST47Parser parser = new t058rewriteAST47Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a a");
  });
  
  test("testCopyRuleLabel2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST48Lexer lexer = new t058rewriteAST48Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST48Parser parser = new t058rewriteAST48Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(a a)");
  });
  
  test("testQueueingOfTokens_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int a,b,c;");
    t058rewriteAST49Lexer lexer = new t058rewriteAST49Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST49Parser parser = new t058rewriteAST49Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int a b c)");
  });
  
  test("testCopyOfTokens_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int a;");
    t058rewriteAST50Lexer lexer = new t058rewriteAST50Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST50Parser parser = new t058rewriteAST50Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("int a int a");
  });
  
  test("testTokenCopyInLoop_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int a,b,c;");
    t058rewriteAST51Lexer lexer = new t058rewriteAST51Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST51Parser parser = new t058rewriteAST51Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int a) (int b) (int c)");
  });
  
  test("testTokenCopyInLoopAgainstTwoOthers_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int a:1,b:2,c:3;");
    t058rewriteAST52Lexer lexer = new t058rewriteAST52Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST52Parser parser = new t058rewriteAST52Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(int a 1) (int b 2) (int c 3)");
  });
  
  test("testListRefdOneAtATime_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b c");
    t058rewriteAST53Lexer lexer = new t058rewriteAST53Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST53Parser parser = new t058rewriteAST53Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b c");
  });
  
  test("testSplitListWithLabels_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b c");
    t058rewriteAST54Lexer lexer = new t058rewriteAST54Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST54Parser parser = new t058rewriteAST54Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a VAR b c");
  });
  
  test("testComplicatedMelange_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a a b b b c c c d");
    t058rewriteAST55Lexer lexer = new t058rewriteAST55Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST55Parser parser = new t058rewriteAST55Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a a b b b c c c d");
  });
  
  test("testRuleLabel_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST56Lexer lexer = new t058rewriteAST56Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST56Parser parser = new t058rewriteAST56Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a");
  });
  
  test("testAmbiguousRule_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t058rewriteAST57Lexer lexer = new t058rewriteAST57Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST57Parser parser = new t058rewriteAST57Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("34");
  });
  
  test("testRuleListLabel_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST58Lexer lexer = new t058rewriteAST58Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST58Parser parser = new t058rewriteAST58Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testRuleListLabel2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST59Lexer lexer = new t058rewriteAST59Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST59Parser parser = new t058rewriteAST59Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testOptional_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST60Lexer lexer = new t058rewriteAST60Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST60Parser parser = new t058rewriteAST60Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a");
  });
  
  test("testOptional2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST61Lexer lexer = new t058rewriteAST61Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST61Parser parser = new t058rewriteAST61Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testOptional3_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST62Lexer lexer = new t058rewriteAST62Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST62Parser parser = new t058rewriteAST62Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testOptional4_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST63Lexer lexer = new t058rewriteAST63Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST63Parser parser = new t058rewriteAST63Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a b");
  });
  
  test("testOptional5_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a");
    t058rewriteAST64Lexer lexer = new t058rewriteAST64Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST64Parser parser = new t058rewriteAST64Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("a");
  });
  
  test("testArbitraryExprType_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST65Lexer lexer = new t058rewriteAST65Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST65Parser parser = new t058rewriteAST65Parser(tstream);
    var ret = parser.a();
    expect(ret.tree).isNull();
  });
  
  test("testSet_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("2 a 34 de");
    t058rewriteAST66Lexer lexer = new t058rewriteAST66Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST66Parser parser = new t058rewriteAST66Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("2 34 a de");
  });
  
  test("testSet2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("2");
    t058rewriteAST67Lexer lexer = new t058rewriteAST67Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST67Parser parser = new t058rewriteAST67Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("2");
  });
  
  test("testSetWithLabel_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("2");
    t058rewriteAST68Lexer lexer = new t058rewriteAST68Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST68Parser parser = new t058rewriteAST68Parser(tstream);
    expectThrow(parser.a);
  });
  
  test("testRewriteAction_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("25");
    t058rewriteAST69Lexer lexer = new t058rewriteAST69Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST69Parser parser = new t058rewriteAST69Parser(tstream);
    var ret = parser.r();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("25.0");
  });
  
  test("testOptionalSubruleWithoutRealElements_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("modulo abc (x y)");
    t058rewriteAST70Lexer lexer = new t058rewriteAST70Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST70Parser parser = new t058rewriteAST70Parser(tstream);
    var ret = parser.modulo();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(modulo abc (PARMS x y))");
  });
  
  test("testCardinality_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b 3 4 5");
    t058rewriteAST71Lexer lexer = new t058rewriteAST71Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST71Parser parser = new t058rewriteAST71Parser(tstream);
    try {
      parser.a();
      Expect.fail("This shouldn't be executed!");
    } catch (var e) {
      expect(e.getMessage()).equals("token ID");
    }    
  });
  
  test("testCardinality2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("a b");
    t058rewriteAST72Lexer lexer = new t058rewriteAST72Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST72Parser parser = new t058rewriteAST72Parser(tstream);
    try {
      parser.a();
      Expect.fail("This shouldn't be executed!");
    } catch (var e) {
      expect(e.getMessage()).equals("token ID");
    }    
  });
  
  test("testCardinality3_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("3");
    t058rewriteAST73Lexer lexer = new t058rewriteAST73Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST73Parser parser = new t058rewriteAST73Parser(tstream);
    try {
      parser.a();
      Expect.fail("This shouldn't be executed!");
    } catch (var e) {
      expect(e.getMessage()).equals("token ID");
    }    
  });
  
  test("testLoopCardinality_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("3");
    t058rewriteAST74Lexer lexer = new t058rewriteAST74Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST74Parser parser = new t058rewriteAST74Parser(tstream);
    try {
      parser.a();
      Expect.fail("This shouldn't be executed!");
    } catch (var e) {
      assert(e is RewriteEarlyExitException);
    }    
  });
  
  test("testWildcard_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t058rewriteAST75Lexer lexer = new t058rewriteAST75Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST75Parser parser = new t058rewriteAST75Parser(tstream);
    var ret = parser.a();
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("34");
  });
  
  test("testExtraTokenInSimpleDecl_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int 34 x=1;");
    t058rewriteAST76Lexer lexer = new t058rewriteAST76Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST76Parser parser = new t058rewriteAST76Parser(tstream);
    var ret = parser.decl();
    List<String> expected = ["line 1:4 extraneous input '34' expecting ID"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(EXPR int x 1)");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testMissingIDInSimpleDecl_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("int =1;");
    t058rewriteAST77Lexer lexer = new t058rewriteAST77Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST77Parser parser = new t058rewriteAST77Parser(tstream);
    var ret = parser.decl();
    List<String> expected = ["line 1:4 missing ID at '='"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(EXPR int <missing ID> 1)");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testMissingSetInSimpleDecl_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("x=1;");
    t058rewriteAST78Lexer lexer = new t058rewriteAST78Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST78Parser parser = new t058rewriteAST78Parser(tstream);
    var ret = parser.decl();
    List<String> expected = ["line 1:0 mismatched input 'x' expecting set null"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("(EXPR <error: x> x 1)");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testMissingTokenGivesErrorNode_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t058rewriteAST79Lexer lexer = new t058rewriteAST79Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST79Parser parser = new t058rewriteAST79Parser(tstream);
    var ret = parser.a();
    List<String> expected = ["line 1:3 missing INT at '<EOF>'"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc <missing INT>");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testExtraTokenGivesErrorNode_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("abc ick 34");
    t058rewriteAST80Lexer lexer = new t058rewriteAST80Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST80Parser parser = new t058rewriteAST80Parser(tstream);
    var ret = parser.a();
    List<String> expected = ["line 1:4 extraneous input 'ick' expecting INT"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("abc 34");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testMissingFirstTokenGivesErrorNode_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("34");
    t058rewriteAST81Lexer lexer = new t058rewriteAST81Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST81Parser parser = new t058rewriteAST81Parser(tstream);
    var ret = parser.a();
    List<String> expected = ["line 1:0 missing ID at '34'"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("<missing ID> 34");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testMissingFirstTokenGivesErrorNode2_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("34");
    t058rewriteAST82Lexer lexer = new t058rewriteAST82Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST82Parser parser = new t058rewriteAST82Parser(tstream);
    var ret = parser.a();
    List<String> expected = ["line 1:0 missing ID at '34'"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("<missing ID> 34");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
  
  test("testNoViableAltGivesErrorNode_t058rewriteAST", () {
    var cstream = new ANTLRStringStream("*");
    t058rewriteAST83Lexer lexer = new t058rewriteAST83Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t058rewriteAST83Parser parser = new t058rewriteAST83Parser(tstream);
    var ret = parser.a();
    List<String> expected = ["line 1:0 no viable alternative at input '*'"];
    String out = ret.tree.dynamic.toStringTree();
    expect(out).equals("<unexpected: [@0,0:0='*',<6>,1:0], resync=*>");
    expect(parser.reportedErrors).equalsCollection(expected);
  });
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t053hetero_test");

#import("../../lib/unittest/unittest.dart");
#import("../out/t053heteroT1Lexer.dart");
#import("../out/t053heteroT1Parser.dart", prefix:"t1");
#import("../out/t053heteroT2Lexer.dart");
#import("../out/t053heteroT2Parser.dart", prefix:"t2");
#import("../out/t053heteroT3Lexer.dart");
#import("../out/t053heteroT3Parser.dart", prefix:"t3");
#import("../out/t053heteroT4Lexer.dart");
#import("../out/t053heteroT4Parser.dart", prefix:"t4");
#import("../out/t053heteroT5Lexer.dart");
#import("../out/t053heteroT5Parser.dart", prefix:"t5");
#import("../out/t053heteroT6Lexer.dart");
#import("../out/t053heteroT6Parser.dart", prefix:"t6");
#import("../out/t053heteroT7Lexer.dart");
#import("../out/t053heteroT7Parser.dart", prefix:"t7");
#import("../out/t053heteroT8Lexer.dart");
#import("../out/t053heteroT8Parser.dart", prefix:"t8");
#import("../out/t053heteroT9Lexer.dart");
#import("../out/t053heteroT9Parser.dart", prefix:"t9");
#import("../out/t053heteroT10Lexer.dart");
#import("../out/t053heteroT10Parser.dart", prefix:"t10");
#import("../out/t053heteroT11Lexer.dart");
#import("../out/t053heteroT11Parser.dart", prefix:"t11");
#import("../out/t053heteroT12Lexer.dart");
#import("../out/t053heteroT12Parser.dart", prefix:"t12");
#import("../out/t053heteroT13Lexer.dart");
#import("../out/t053heteroTP13.dart", prefix:"tp13");
#import("../out/t053heteroT13Parser.dart", prefix:"t13");
#import("../out/t053heteroT14Lexer.dart");
#import("../out/t053heteroTP14.dart", prefix:"tp14");
#import("../out/t053heteroT14Parser.dart", prefix:"t14");
#import("../out/t053heteroT15Lexer.dart");
#import("../out/t053heteroTP15.dart", prefix:"tp15");
#import("../out/t053heteroT15Parser.dart", prefix:"t15");
#import("../out/t053heteroT16Lexer.dart");
#import("../out/t053heteroTP16.dart", prefix:"tp16");
#import("../out/t053heteroT16Parser.dart", prefix:"t16");
#import("../out/t053heteroT17Lexer.dart");
#import("../out/t053heteroTP17.dart", prefix:"tp17");
#import("../out/t053heteroT17Parser.dart", prefix:"t17");
#import("../out/t053heteroT18Lexer.dart");
#import("../out/t053heteroTP18.dart", prefix:"tp18");
#import("../out/t053heteroT18Parser.dart", prefix:"t18");
#import("../out/t053heteroTLexer.dart");
#import("../out/t053heteroTP.dart", prefix:"tp");
#import("../out/t053heteroTParser.dart", prefix:"t");

#import("../../lib/unittest/vm_config.dart");

#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testDelegatorInvokesDelegateRule_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT1Lexer lexer = new t053heteroT1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t1.t053heteroT1Parser parser = new t1.t053heteroT1Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("a<V>");
  });
  
  test("testTokenWithLabel_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT2Lexer lexer = new t053heteroT2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t2.t053heteroT2Parser parser = new t2.t053heteroT2Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("a<V>");
  });
  
  test("testTokenWithListLabel_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT3Lexer lexer = new t053heteroT3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t3.t053heteroT3Parser parser = new t3.t053heteroT3Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("a<V>");
  });
  
  test("testTokenRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT4Lexer lexer = new t053heteroT4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t4.t053heteroT4Parser parser = new t4.t053heteroT4Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("a<V>");
  });
  
  test("testTokenRootWithListLabel_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT5Lexer lexer = new t053heteroT5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t5.t053heteroT5Parser parser = new t5.t053heteroT5Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("a<V>");
  }); 
  
  test("testString_t053hetero", () {
    var cstream = new ANTLRStringStream("begin");
    t053heteroT6Lexer lexer = new t053heteroT6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t6.t053heteroT6Parser parser = new t6.t053heteroT6Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("begin<V>");
  });
  
  test("testStringRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("begin");
    t053heteroT7Lexer lexer = new t053heteroT7Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t7.t053heteroT7Parser parser = new t7.t053heteroT7Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("begin<V>");
  });
  
  test("testRewriteToken_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT8Lexer lexer = new t053heteroT8Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t8.t053heteroT8Parser parser = new t8.t053heteroT8Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("a<V>");
  });
  
  test("testrewritetokenwithargs_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT9Lexer lexer = new t053heteroT9Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t9.t053heteroT9Parser parser = new t9.t053heteroT9Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("<V>;421930 a<V>;9900");
  });
  
  test("testRewriteTokenRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("a 2");
    t053heteroT10Lexer lexer = new t053heteroT10Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t10.t053heteroT10Parser parser = new t10.t053heteroT10Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("(a<V> 2)");
  });
  
  test("testRewriteString_t053hetero", () {
    var cstream = new ANTLRStringStream("begin");
    t053heteroT11Lexer lexer = new t053heteroT11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t11.t053heteroT11Parser parser = new t11.t053heteroT11Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("begin<V>");
  });
  
  test("testRewriteStringRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("begin 2");
    t053heteroT12Lexer lexer = new t053heteroT12Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t12.t053heteroT12Parser parser = new t12.t053heteroT12Parser(tstream);
    var ret = parser.a();    
    expect(ret.tree.dynamic.toStringTree()).equals("(begin<V> 2)");
  });
  
  test("testTreeParserRewriteFlatList_t053hetero", () {
    var cstream = new ANTLRStringStream("abc 34");
    t053heteroT13Lexer lexer = new t053heteroT13Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t13.t053heteroT13Parser parser = new t13.t053heteroT13Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp13.t053heteroTP13 walker = new tp13.t053heteroTP13(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("34<V> abc<W>");
  });
  
  test("testTreeParserRewriteTree_t053hetero", () {
    var cstream = new ANTLRStringStream("abc 34");
    t053heteroT14Lexer lexer = new t053heteroT14Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t14.t053heteroT14Parser parser = new t14.t053heteroT14Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp14.t053heteroTP14 walker = new tp14.t053heteroTP14(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("(34<V> abc<W>)");
  });
  
  test("testTreeParserRewriteImaginary_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT15Lexer lexer = new t053heteroT15Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t15.t053heteroT15Parser parser = new t15.t053heteroT15Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp15.t053heteroTP15 walker = new tp15.t053heteroTP15(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("ROOT<V> abc");
  });
  
  test("testTreeParserRewriteImaginaryWithArgs_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT16Lexer lexer = new t053heteroT16Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t16.t053heteroT16Parser parser = new t16.t053heteroT16Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp16.t053heteroTP16 walker = new tp16.t053heteroTP16(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("ROOT<V>;42 abc");
  });
  
  test("testTreeParserRewriteImaginaryRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT17Lexer lexer = new t053heteroT17Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t17.t053heteroT17Parser parser = new t17.t053heteroT17Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp17.t053heteroTP17 walker = new tp17.t053heteroTP17(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("(ROOT<V> abc)");
  });
  
  test("testTreeParserRewriteImaginaryFromReal_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT18Lexer lexer = new t053heteroT18Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t18.t053heteroT18Parser parser = new t18.t053heteroT18Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp18.t053heteroTP18 walker = new tp18.t053heteroTP18(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("ROOT<V>@1");
  });
  
  test("testTreeParserAutoHeteroAST_t053hetero", () {
    var cstream = new ANTLRStringStream("abc;");
    t053heteroTLexer lexer = new t053heteroTLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t.t053heteroTParser parser = new t.t053heteroTParser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    tp.t053heteroTP walker = new tp.t053heteroTP(nodes);
    ret = walker.a();
    expect(ret.tree.dynamic.toStringTree()).equals("abc<V> ;<V>");
  });
  
}


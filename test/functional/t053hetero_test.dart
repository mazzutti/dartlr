// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t053heteroT1Lexer.dart";
part "../out/t053heteroT1Parser.dart";
part "../out/t053heteroT2Lexer.dart";
part "../out/t053heteroT2Parser.dart";
part "../out/t053heteroT3Lexer.dart";
part "../out/t053heteroT3Parser.dart";
part "../out/t053heteroT4Lexer.dart";
part "../out/t053heteroT4Parser.dart";
part "../out/t053heteroT5Lexer.dart";
part "../out/t053heteroT5Parser.dart";
part "../out/t053heteroT6Lexer.dart";
part "../out/t053heteroT6Parser.dart";
part "../out/t053heteroT7Lexer.dart";
part "../out/t053heteroT7Parser.dart";
part "../out/t053heteroT8Lexer.dart";
part "../out/t053heteroT8Parser.dart";
part "../out/t053heteroT9Lexer.dart";
part "../out/t053heteroT9Parser.dart";
part "../out/t053heteroT10Lexer.dart";
part "../out/t053heteroT10Parser.dart";
part "../out/t053heteroT11Lexer.dart";
part "../out/t053heteroT11Parser.dart";
part "../out/t053heteroT12Lexer.dart";
part "../out/t053heteroT12Parser.dart";
part "../out/t053heteroT13Lexer.dart";
part "../out/t053heteroTP13.dart";
part "../out/t053heteroT13Parser.dart";
part "../out/t053heteroT14Lexer.dart";
part "../out/t053heteroTP14.dart";
part "../out/t053heteroT14Parser.dart";
part "../out/t053heteroT15Lexer.dart";
part "../out/t053heteroTP15.dart";
part "../out/t053heteroT15Parser.dart";
part "../out/t053heteroT16Lexer.dart";
part "../out/t053heteroTP16.dart";
part "../out/t053heteroT16Parser.dart";
part "../out/t053heteroT17Lexer.dart";
part "../out/t053heteroTP17.dart";
part "../out/t053heteroT17Parser.dart";
part "../out/t053heteroT18Lexer.dart";
part "../out/t053heteroTP18.dart";
part "../out/t053heteroT18Parser.dart";
part "../out/t053heteroTLexer.dart";
part "../out/t053heteroTP.dart";
part "../out/t053heteroTParser.dart";

part "../test-data/v15_common_tree.dart";
part "../test-data/v16_common_tree.dart";
part "../test-data/v17_common_tree.dart";
part "../test-data/v18_common_tree.dart";
part "../test-data/v2_common_tree.dart";
part "../test-data/vx_common_tree.dart";
part "../test-data/v_common_tree.dart";
part "../test-data/w_common_tree.dart";


main() {  
  
  test("testDelegatorInvokesDelegateRule_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT1Lexer lexer = new t053heteroT1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT1Parser parser = new t053heteroT1Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("a<V>"));
  });
  
  test("testTokenWithLabel_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT2Lexer lexer = new t053heteroT2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT2Parser parser = new t053heteroT2Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("a<V>"));
  });
  
  test("testTokenWithListLabel_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT3Lexer lexer = new t053heteroT3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT3Parser parser = new t053heteroT3Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("a<V>"));
  });
  
  test("testTokenRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT4Lexer lexer = new t053heteroT4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT4Parser parser = new t053heteroT4Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("a<V>"));
  });
  
  test("testTokenRootWithListLabel_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT5Lexer lexer = new t053heteroT5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT5Parser parser = new t053heteroT5Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("a<V>"));
  }); 
  
  test("testString_t053hetero", () {
    var cstream = new ANTLRStringStream("begin");
    t053heteroT6Lexer lexer = new t053heteroT6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT6Parser parser = new t053heteroT6Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("begin<V>"));
  });
  
  test("testStringRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("begin");
    t053heteroT7Lexer lexer = new t053heteroT7Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT7Parser parser = new t053heteroT7Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("begin<V>"));
  });
  
  test("testRewriteToken_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT8Lexer lexer = new t053heteroT8Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT8Parser parser = new t053heteroT8Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("a<V>"));
  });
  
  test("testrewritetokenwithargs_t053hetero", () {
    var cstream = new ANTLRStringStream("a");
    t053heteroT9Lexer lexer = new t053heteroT9Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT9Parser parser = new t053heteroT9Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("<V>;421930 a<V>;9900"));
  });
  
  test("testRewriteTokenRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("a 2");
    t053heteroT10Lexer lexer = new t053heteroT10Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT10Parser parser = new t053heteroT10Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("(a<V> 2)"));
  });
  
  test("testRewriteString_t053hetero", () {
    var cstream = new ANTLRStringStream("begin");
    t053heteroT11Lexer lexer = new t053heteroT11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT11Parser parser = new t053heteroT11Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("begin<V>"));
  });
  
  test("testRewriteStringRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("begin 2");
    t053heteroT12Lexer lexer = new t053heteroT12Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT12Parser parser = new t053heteroT12Parser(tstream);
    var ret = parser.a();    
    expect((ret.tree as Tree).toStringTree(), equals("(begin<V> 2)"));
  });
  
  test("testTreeParserRewriteFlatList_t053hetero", () {
    var cstream = new ANTLRStringStream("abc 34");
    t053heteroT13Lexer lexer = new t053heteroT13Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT13Parser parser = new t053heteroT13Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP13 walker = new t053heteroTP13(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("34<V> abc<W>"));
  });
  
  test("testTreeParserRewriteTree_t053hetero", () {
    var cstream = new ANTLRStringStream("abc 34");
    t053heteroT14Lexer lexer = new t053heteroT14Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT14Parser parser = new t053heteroT14Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP14 walker = new t053heteroTP14(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("(34<V> abc<W>)"));
  });
  
  test("testTreeParserRewriteImaginary_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT15Lexer lexer = new t053heteroT15Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT15Parser parser = new t053heteroT15Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP15 walker = new t053heteroTP15(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("ROOT<V> abc"));
  });
  
  test("testTreeParserRewriteImaginaryWithArgs_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT16Lexer lexer = new t053heteroT16Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT16Parser parser = new t053heteroT16Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP16 walker = new t053heteroTP16(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("ROOT<V>;42 abc"));
  });
  
  test("testTreeParserRewriteImaginaryRoot_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT17Lexer lexer = new t053heteroT17Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT17Parser parser = new t053heteroT17Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP17 walker = new t053heteroTP17(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("(ROOT<V> abc)"));
  });
  
  test("testTreeParserRewriteImaginaryFromReal_t053hetero", () {
    var cstream = new ANTLRStringStream("abc");
    t053heteroT18Lexer lexer = new t053heteroT18Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroT18Parser parser = new t053heteroT18Parser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP18 walker = new t053heteroTP18(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("ROOT<V>@1"));
  });
  
  test("testTreeParserAutoHeteroAST_t053hetero", () {
    var cstream = new ANTLRStringStream("abc;");
    t053heteroTLexer lexer = new t053heteroTLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t053heteroTParser parser = new t053heteroTParser(tstream);
    var ret = parser.a();
    var nodes = new CommonTreeNodeStream((ret.tree as Tree));
    nodes.tokenStream = tstream;
    t053heteroTP walker = new t053heteroTP(nodes);
    ret = walker.a();
    expect((ret.tree as Tree).toStringTree(), equals("abc<V> ;<V>"));
  });
  
}


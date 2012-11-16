// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t051treeRewriteASTaLexer.dart";
part "../out/t051treeRewriteASTaParser.dart";
part "../out/t051treeRewriteASTaWalker.dart";
part "../out/t051treeRewriteASTbLexer.dart";
part "../out/t051treeRewriteASTbParser.dart";
part "../out/t051treeRewriteASTbWalker.dart";
part "../out/t051treeRewriteASTcParser.dart";
part "../out/t051treeRewriteASTcLexer.dart";
part "../out/t051treeRewriteASTcWalker.dart";
part "../out/t051treeRewriteASTdLexer.dart";
part "../out/t051treeRewriteASTdParser.dart";
part "../out/t051treeRewriteASTdWalker.dart";
part "../out/t051treeRewriteASTeParser.dart";
part "../out/t051treeRewriteASTeLexer.dart";
part "../out/t051treeRewriteASTeWalker.dart";
part "../out/t051treeRewriteASTfLexer.dart";
part "../out/t051treeRewriteASTfParser.dart";
part "../out/t051treeRewriteASTfWalker.dart";
part "../out/t051treeRewriteASTgLexer.dart";
part "../out/t051treeRewriteASTgParser.dart";
part "../out/t051treeRewriteASTgWalker.dart";
part "../out/t051treeRewriteASThLexer.dart";
part "../out/t051treeRewriteASThParser.dart";
part "../out/t051treeRewriteASThWalker.dart";
part "../out/t051treeRewriteASTiParser.dart";
part "../out/t051treeRewriteASTiLexer.dart";
part "../out/t051treeRewriteASTiWalker.dart";
part "../out/t051treeRewriteASTjLexer.dart";
part "../out/t051treeRewriteASTjParser.dart";
part "../out/t051treeRewriteASTjWalker.dart";
part "../out/t051treeRewriteASTkParser.dart";
part "../out/t051treeRewriteASTkLexer.dart";
part "../out/t051treeRewriteASTkWalker.dart";
part "../out/t051treeRewriteASTlLexer.dart";
part "../out/t051treeRewriteASTlParser.dart";
part "../out/t051treeRewriteASTlWalker.dart";
part "../out/t051treeRewriteASTmParser.dart";
part "../out/t051treeRewriteASTmLexer.dart";
part "../out/t051treeRewriteASTmWalker.dart";
part "../out/t051treeRewriteASTnLexer.dart";
part "../out/t051treeRewriteASTnParser.dart";
part "../out/t051treeRewriteASTnWalker.dart";
part "../out/t051treeRewriteASToParser.dart";
part "../out/t051treeRewriteASToLexer.dart";
part "../out/t051treeRewriteASToWalker.dart";
part "../out/t051treeRewriteASTpParser.dart";
part "../out/t051treeRewriteASTpLexer.dart";
part "../out/t051treeRewriteASTpWalker.dart";
part "../out/t051treeRewriteASTqParser.dart";
part "../out/t051treeRewriteASTqLexer.dart";
part "../out/t051treeRewriteASTqWalker.dart";
part "../out/t051treeRewriteASTrLexer.dart";
part "../out/t051treeRewriteASTrParser.dart";
part "../out/t051treeRewriteASTrWalker.dart";
part "../out/t051treeRewriteASTsParser.dart";
part "../out/t051treeRewriteASTsLexer.dart";
part "../out/t051treeRewriteASTsWalker.dart";
part "../out/t051treeRewriteASTtLexer.dart";
part "../out/t051treeRewriteASTtParser.dart";
part "../out/t051treeRewriteASTtWalker.dart";
part "../out/t051treeRewriteASTuParser.dart";
part "../out/t051treeRewriteASTuLexer.dart";
part "../out/t051treeRewriteASTuWalker.dart";
part "../out/t051treeRewriteASTvLexer.dart";
part "../out/t051treeRewriteASTvWalker.dart";
part "../out/t051treeRewriteASTvParser.dart";
part "../out/t051treeRewriteASTwParser.dart";
part "../out/t051treeRewriteASTwLexer.dart";
part "../out/t051treeRewriteASTwWalker.dart";
part "../out/t051treeRewriteASTyLexer.dart";
part "../out/t051treeRewriteASTyParser.dart";
part "../out/t051treeRewriteASTyWalker.dart";
part "../out/t051treeRewriteASTxLexer.dart";
part "../out/t051treeRewriteASTxParser.dart";
part "../out/t051treeRewriteASTxWalker.dart";
part "../out/t051treeRewriteASTzLexer.dart";
part "../out/t051treeRewriteASTzParser.dart";
part "../out/t051treeRewriteASTzWalker.dart";
part "../out/t051treeRewriteASTaaLexer.dart";
part "../out/t051treeRewriteASTaaParser.dart";
part "../out/t051treeRewriteASTaaWalker.dart";
part "../out/t051treeRewriteASTabLexer.dart";
part "../out/t051treeRewriteASTabParser.dart";
part "../out/t051treeRewriteASTabWalker.dart";
part "../out/t051treeRewriteASTacLexer.dart";
part "../out/t051treeRewriteASTacParser.dart";
part "../out/t051treeRewriteASTacWalker.dart";


main () {
  
  test("testFlatList_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTaLexer lexer = new t051treeRewriteASTaLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTaParser parser = new t051treeRewriteASTaParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTaWalker walker = new t051treeRewriteASTaWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("34 abc"));
  });
  
  test("testSimpleTree_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTbLexer lexer = new t051treeRewriteASTbLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTbParser parser = new t051treeRewriteASTbParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTbWalker walker = new t051treeRewriteASTbWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(34 abc)"));
  });
  
  test("testCombinedRewriteAndAuto_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTcLexer lexer = new t051treeRewriteASTcLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTcParser parser = new t051treeRewriteASTcParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTcWalker walker = new t051treeRewriteASTcWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(34 abc)"));
    
    cstream = new ANTLRStringStream("34");
    lexer = new t051treeRewriteASTcLexer(cstream);
    tstream = new CommonTokenStream(lexer);
    parser = new t051treeRewriteASTcParser(tstream);
    ret = parser.a();
    nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    walker = new t051treeRewriteASTcWalker(nodes);
    w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("34"));
  });
  
  test("testAvoidDup_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t051treeRewriteASTdLexer lexer = new t051treeRewriteASTdLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTdParser parser = new t051treeRewriteASTdParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTdWalker walker = new t051treeRewriteASTdWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(abc abc)"));
  });
  
  test("testLoop_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a b c 3 4 5");
    t051treeRewriteASTeLexer lexer = new t051treeRewriteASTeLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTeParser parser = new t051treeRewriteASTeParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTeWalker walker = new t051treeRewriteASTeWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("3 4 5 a b c"));
  });
  
  test("testAutoDup_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t051treeRewriteASTfLexer lexer = new t051treeRewriteASTfLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTfParser parser = new t051treeRewriteASTfParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTfWalker walker = new t051treeRewriteASTfWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("abc"));
  });
  
  test("testAutoDupRule_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 1");
    t051treeRewriteASTgLexer lexer = new t051treeRewriteASTgLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTgParser parser = new t051treeRewriteASTgParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTgWalker walker = new t051treeRewriteASTgWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("a 1"));
  });
  
  test("testAutoDupMultiple_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a b 3");
    t051treeRewriteASThLexer lexer = new t051treeRewriteASThLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASThParser parser = new t051treeRewriteASThParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASThWalker walker = new t051treeRewriteASThWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("a b 3"));
  });
  
  test("testAutoDupTree_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 3");
    t051treeRewriteASTiLexer lexer = new t051treeRewriteASTiLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTiParser parser = new t051treeRewriteASTiParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTiWalker walker = new t051treeRewriteASTiWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a 3)"));
  });
  
  test("testAutoDupTreeWithLabels_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 3");
    t051treeRewriteASTjLexer lexer = new t051treeRewriteASTjLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTjParser parser = new t051treeRewriteASTjParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTjWalker walker = new t051treeRewriteASTjWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a 3)"));
  });
  
  test("testAutoDupTreeWithLabels_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 3");
    t051treeRewriteASTkLexer lexer = new t051treeRewriteASTkLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTkParser parser = new t051treeRewriteASTkParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTkWalker walker = new t051treeRewriteASTkWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a 3)"));
  });
  
  test("testAutoDupTreeWithRuleRoot_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 3");
    t051treeRewriteASTlLexer lexer = new t051treeRewriteASTlLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTlParser parser = new t051treeRewriteASTlParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTlWalker walker = new t051treeRewriteASTlWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a 3)"));
  });
  
  test("testAutoDupTreeWithRuleRootAndLabels_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 3");
    t051treeRewriteASTmLexer lexer = new t051treeRewriteASTmLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTmParser parser = new t051treeRewriteASTmParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTmWalker walker = new t051treeRewriteASTmWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a 3)"));
  });
  
  test("testAutoDupTreeWithRuleRootAndListLabels_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a 3");
    t051treeRewriteASTnLexer lexer = new t051treeRewriteASTnLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTnParser parser = new t051treeRewriteASTnParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTnWalker walker = new t051treeRewriteASTnWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a 3)"));
  });
  
  test("testAutoDupNestedTree_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("a b 3");
    t051treeRewriteASToLexer lexer = new t051treeRewriteASToLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASToParser parser = new t051treeRewriteASToParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASToWalker walker = new t051treeRewriteASToWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(a (b 3))"));
  });
  
  test("testDelete_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc");
    t051treeRewriteASTpLexer lexer = new t051treeRewriteASTpLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTpParser parser = new t051treeRewriteASTpParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTpWalker walker = new t051treeRewriteASTpWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree), equals(null));
  });
  
  test("testSetMatchNoRewrite_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTqLexer lexer = new t051treeRewriteASTqLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTqParser parser = new t051treeRewriteASTqParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTqWalker walker = new t051treeRewriteASTqWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("abc 34"));
  });
  
  test("testSetMatchNoRewriteLevel2_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTrLexer lexer = new t051treeRewriteASTrLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTrParser parser = new t051treeRewriteASTrParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTrWalker walker = new t051treeRewriteASTrWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(abc 34)"));
  });
  
  test("testSetMatchNoRewriteLevel2Root_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTsLexer lexer = new t051treeRewriteASTsLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTsParser parser = new t051treeRewriteASTsParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTsWalker walker = new t051treeRewriteASTsWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(abc 34)"));
  });
  
  test("testRewriteModeCombinedRewriteAndAuto_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTtLexer lexer = new t051treeRewriteASTtLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTtParser parser = new t051treeRewriteASTtParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTtWalker walker = new t051treeRewriteASTtWalker(nodes);
    var w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("(ick 34)"));
    
    cstream = new ANTLRStringStream("34");
    lexer = new t051treeRewriteASTtLexer(cstream);
    tstream = new CommonTokenStream(lexer);
    parser = new t051treeRewriteASTtParser(tstream);
    ret = parser.a();
    nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    walker = new t051treeRewriteASTtWalker(nodes);
    w = walker.a();
    expect((w.tree as Tree).toStringTree(), equals("34"));
  });
  
  test("testRewriteModeFlatTree_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTuLexer lexer = new t051treeRewriteASTuLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTuParser parser = new t051treeRewriteASTuParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTuWalker walker = new t051treeRewriteASTuWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("abc 1"));
  });
  
  test("testRewriteModeChainRuleFlatTree_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTvLexer lexer = new t051treeRewriteASTvLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTvParser parser = new t051treeRewriteASTvParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTvWalker walker = new t051treeRewriteASTvWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("34 abc"));
  });
  
  test("testRewriteModeChainRuleTree_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTwLexer lexer = new t051treeRewriteASTwLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTwParser parser = new t051treeRewriteASTwParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTwWalker walker = new t051treeRewriteASTwWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("34"));
  });
  
  test("testRewriteModeChainRuleTree2_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTxLexer lexer = new t051treeRewriteASTxLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTxParser parser = new t051treeRewriteASTxParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTxWalker walker = new t051treeRewriteASTxWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("34"));
  });
  
  test("testRewriteModeChainRuleTree3_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("boo abc 34");
    t051treeRewriteASTyLexer lexer = new t051treeRewriteASTyLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTyParser parser = new t051treeRewriteASTyParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTyWalker walker = new t051treeRewriteASTyWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("boo 34"));
  });
  
  test("testRewriteModeChainRuleTree4_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("boo abc 34");
    t051treeRewriteASTzLexer lexer = new t051treeRewriteASTzLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTzParser parser = new t051treeRewriteASTzParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTzWalker walker = new t051treeRewriteASTzWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("(boo 34)"));
  });
  
  test("testRewriteModeChainRuleTree5_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("boo abc 34");
    t051treeRewriteASTaaLexer lexer = new t051treeRewriteASTaaLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTaaParser parser = new t051treeRewriteASTaaParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTaaWalker walker = new t051treeRewriteASTaaWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("(boo 34)"));
  });
  
  test("testRewriteModeWithPredicatedRewrites_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTabLexer lexer = new t051treeRewriteASTabLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTabParser parser = new t051treeRewriteASTabParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTabWalker walker = new t051treeRewriteASTabWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("(root (ick 34))"));
  });
  
  test("testWildcard_t051treeRewriteAST", () {
    var cstream = new ANTLRStringStream("abc 34");
    t051treeRewriteASTacLexer lexer = new t051treeRewriteASTacLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t051treeRewriteASTacParser parser = new t051treeRewriteASTacParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t051treeRewriteASTacWalker walker = new t051treeRewriteASTacWalker(nodes);
    var w = walker.s();
    expect((w.tree as Tree).toStringTree(), equals("34"));
  });
}


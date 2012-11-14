// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t051treeRewriteAST_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t051treeRewriteASTaLexer.dart";
import "../out/t051treeRewriteASTaParser.dart";
import "../out/t051treeRewriteASTaWalker.dart";
import "../out/t051treeRewriteASTbLexer.dart";
import "../out/t051treeRewriteASTbParser.dart";
import "../out/t051treeRewriteASTbWalker.dart";
import "../out/t051treeRewriteASTcLexer.dart";
import "../out/t051treeRewriteASTcParser.dart";
import "../out/t051treeRewriteASTcWalker.dart";
import "../out/t051treeRewriteASTdLexer.dart";
import "../out/t051treeRewriteASTdParser.dart";
import "../out/t051treeRewriteASTdWalker.dart";
import "../out/t051treeRewriteASTeLexer.dart";
import "../out/t051treeRewriteASTeParser.dart";
import "../out/t051treeRewriteASTeWalker.dart";
import "../out/t051treeRewriteASTfLexer.dart";
import "../out/t051treeRewriteASTfParser.dart";
import "../out/t051treeRewriteASTfWalker.dart";
import "../out/t051treeRewriteASTgLexer.dart";
import "../out/t051treeRewriteASTgParser.dart";
import "../out/t051treeRewriteASTgWalker.dart";
import "../out/t051treeRewriteASThLexer.dart";
import "../out/t051treeRewriteASThParser.dart";
import "../out/t051treeRewriteASThWalker.dart";
import "../out/t051treeRewriteASTiLexer.dart";
import "../out/t051treeRewriteASTiParser.dart";
import "../out/t051treeRewriteASTiWalker.dart";
import "../out/t051treeRewriteASTjLexer.dart";
import "../out/t051treeRewriteASTjParser.dart";
import "../out/t051treeRewriteASTjWalker.dart";
import "../out/t051treeRewriteASTkLexer.dart";
import "../out/t051treeRewriteASTkParser.dart";
import "../out/t051treeRewriteASTkWalker.dart";
import "../out/t051treeRewriteASTlLexer.dart";
import "../out/t051treeRewriteASTlParser.dart";
import "../out/t051treeRewriteASTlWalker.dart";
import "../out/t051treeRewriteASTmLexer.dart";
import "../out/t051treeRewriteASTmParser.dart";
import "../out/t051treeRewriteASTmWalker.dart";
import "../out/t051treeRewriteASTnLexer.dart";
import "../out/t051treeRewriteASTnParser.dart";
import "../out/t051treeRewriteASTnWalker.dart";
import "../out/t051treeRewriteASToLexer.dart";
import "../out/t051treeRewriteASToParser.dart";
import "../out/t051treeRewriteASToWalker.dart";
import "../out/t051treeRewriteASTpLexer.dart";
import "../out/t051treeRewriteASTpParser.dart";
import "../out/t051treeRewriteASTpWalker.dart";
import "../out/t051treeRewriteASTqLexer.dart";
import "../out/t051treeRewriteASTqParser.dart";
import "../out/t051treeRewriteASTqWalker.dart";
import "../out/t051treeRewriteASTrLexer.dart";
import "../out/t051treeRewriteASTrParser.dart";
import "../out/t051treeRewriteASTrWalker.dart";
import "../out/t051treeRewriteASTsLexer.dart";
import "../out/t051treeRewriteASTsParser.dart";
import "../out/t051treeRewriteASTsWalker.dart";
import "../out/t051treeRewriteASTtLexer.dart";
import "../out/t051treeRewriteASTtParser.dart";
import "../out/t051treeRewriteASTtWalker.dart";
import "../out/t051treeRewriteASTuLexer.dart";
import "../out/t051treeRewriteASTuParser.dart";
import "../out/t051treeRewriteASTuWalker.dart";
import "../out/t051treeRewriteASTvLexer.dart";
import "../out/t051treeRewriteASTvParser.dart";
import "../out/t051treeRewriteASTvWalker.dart";
import "../out/t051treeRewriteASTwLexer.dart";
import "../out/t051treeRewriteASTwParser.dart";
import "../out/t051treeRewriteASTwWalker.dart";
import "../out/t051treeRewriteASTyLexer.dart";
import "../out/t051treeRewriteASTyParser.dart";
import "../out/t051treeRewriteASTyWalker.dart";
import "../out/t051treeRewriteASTxLexer.dart";
import "../out/t051treeRewriteASTxParser.dart";
import "../out/t051treeRewriteASTxWalker.dart";
import "../out/t051treeRewriteASTzLexer.dart";
import "../out/t051treeRewriteASTzParser.dart";
import "../out/t051treeRewriteASTzWalker.dart";
import "../out/t051treeRewriteASTaaLexer.dart";
import "../out/t051treeRewriteASTaaParser.dart";
import "../out/t051treeRewriteASTaaWalker.dart";
import "../out/t051treeRewriteASTabLexer.dart";
import "../out/t051treeRewriteASTabParser.dart";
import "../out/t051treeRewriteASTabWalker.dart";
import "../out/t051treeRewriteASTacLexer.dart";
import "../out/t051treeRewriteASTacParser.dart";
import "../out/t051treeRewriteASTacWalker.dart";


main() {  
  useVmConfiguration();
  
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
    expect(w.tree.toStringTree(), equals("34 abc"));
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
    expect(w.tree.toStringTree(), equals("(34 abc)"));
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
    expect(w.tree.toStringTree(), equals("(34 abc)"));
    
    cstream = new ANTLRStringStream("34");
    lexer = new t051treeRewriteASTcLexer(cstream);
    tstream = new CommonTokenStream(lexer);
    parser = new t051treeRewriteASTcParser(tstream);
    ret = parser.a();
    nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    walker = new t051treeRewriteASTcWalker(nodes);
    w = walker.a();
    expect(w.tree.toStringTree(), equals("34"));
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
    expect(w.tree.toStringTree(), equals("(abc abc)"));
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
    expect(w.tree.toStringTree(), equals("3 4 5 a b c"));
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
    expect(w.tree.toStringTree(), equals("abc"));
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
    expect(w.tree.toStringTree(), equals("a 1"));
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
    expect(w.tree.toStringTree(), equals("a b 3"));
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
    expect(w.tree.toStringTree(), equals("(a 3)"));
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
    expect(w.tree.toStringTree(), equals("(a 3)"));
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
    expect(w.tree.toStringTree(), equals("(a 3)"));
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
    expect(w.tree.toStringTree(), equals("(a 3)"));
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
    expect(w.tree.toStringTree(), equals("(a 3)"));
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
    expect(w.tree.toStringTree(), equals("(a 3)"));
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
    expect(w.tree.toStringTree(), equals("(a (b 3))"));
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
    expect(w.tree, equals(null));
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
    expect(w.tree.toStringTree(), equals("abc 34"));
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
    expect(w.tree.toStringTree(), equals("(abc 34)"));
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
    expect(w.tree.toStringTree(), equals("(abc 34)"));
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
    expect(w.tree.toStringTree(), equals("(ick 34)"));
    
    cstream = new ANTLRStringStream("34");
    lexer = new t051treeRewriteASTtLexer(cstream);
    tstream = new CommonTokenStream(lexer);
    parser = new t051treeRewriteASTtParser(tstream);
    ret = parser.a();
    nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    walker = new t051treeRewriteASTtWalker(nodes);
    w = walker.a();
    expect(w.tree.toStringTree(), equals("34"));
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
    expect(w.tree.toStringTree(), equals("abc 1"));
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
    expect(w.tree.toStringTree(), equals("34 abc"));
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
    expect(w.tree.toStringTree(), equals("34"));
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
    expect(w.tree.toStringTree(), equals("34"));
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
    expect(w.tree.toStringTree(), equals("boo 34"));
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
    expect(w.tree.toStringTree(), equals("(boo 34)"));
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
    expect(w.tree.toStringTree(), equals("(boo 34)"));
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
    expect(w.tree.toStringTree(), equals("(root (ick 34))"));
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
    expect(w.tree.toStringTree(), equals("34"));
  });
}


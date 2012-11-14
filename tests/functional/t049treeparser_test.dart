// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t049treeparser_test;
import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";


import "../out/t049treeparseraLexer.dart";
import "../out/t049treeparseraParser.dart";
import "../out/t049treeparseraWalker.dart";
import "../out/t049treeparserbLexer.dart";
import "../out/t049treeparserbParser.dart";
import "../out/t049treeparserbWalker.dart";
import "../out/t049treeparsercLexer.dart";
import "../out/t049treeparsercParser.dart";
import "../out/t049treeparsercWalker.dart";
import "../out/t049treeparserdLexer.dart";
import "../out/t049treeparserdParser.dart";
import "../out/t049treeparserdWalker.dart";
import "../out/t049treeparsereLexer.dart";
import "../out/t049treeparsereParser.dart";
import "../out/t049treeparsereWalker.dart";
import "../out/t049treeparserfLexer.dart";
import "../out/t049treeparserfParser.dart";
import "../out/t049treeparserfWalker.dart";
import "../out/t049treeparsergLexer.dart";
import "../out/t049treeparsergParser.dart";
import "../out/t049treeparsergWalker.dart";
import "../out/t049treeparserhLexer.dart";
import "../out/t049treeparserhParser.dart";
import "../out/t049treeparserhWalker.dart";
import "../out/t049treeparseriLexer.dart";
import "../out/t049treeparseriParser.dart";
import "../out/t049treeparseriWalker.dart";

main() {  
  useVmConfiguration();
  
  test("testFlatList_t049treeparser", () {
    var cstream = new ANTLRStringStream("abc 34");
    t049treeparseraLexer lexer = new t049treeparseraLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparseraParser parser = new t049treeparseraParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparseraWalker walker = new t049treeparseraWalker(nodes);
    walker.a();
    expect(walker.output, equals("abc, 34"));
  });
  
  test("testSimpleTree_t049treeparser", () {
    var cstream = new ANTLRStringStream("abc 34");
    t049treeparserbLexer lexer = new t049treeparserbLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparserbParser parser = new t049treeparserbParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparserbWalker walker = new t049treeparserbWalker(nodes);
    walker.a();
    expect(walker.output, equals("abc, 34"));
  });
  
  test("testFlatVsTreeDecision_t049treeparser", () {
    var cstream = new ANTLRStringStream("a 1 b 2");
    t049treeparsercLexer lexer = new t049treeparsercLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparsercParser parser = new t049treeparsercParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparsercWalker walker = new t049treeparsercWalker(nodes);
    walker.a();
    expect(walker.output, equals("^(a 1)b 2\n"));
  });
  
  test("testFlatVsTreeDecision2_t049treeparser", () {
    var cstream = new ANTLRStringStream("a 1 2 3 b 4 5");
    t049treeparserdLexer lexer = new t049treeparserdLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparserdParser parser = new t049treeparserdParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparserdWalker walker = new t049treeparserdWalker(nodes);
    walker.a();
    expect(walker.output, equals("^(a 3)b 5\n"));
  });
  
  test("testCyclicDFALookahead_t049treeparser", () {
    var cstream = new ANTLRStringStream("a 1 2 3.");
    t049treeparsereLexer lexer = new t049treeparsereLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparsereParser parser = new t049treeparsereParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparsereWalker walker = new t049treeparsereWalker(nodes);
    walker.a();
    expect(walker.output, equals("alt 1"));
  });
  
  test("testNullableChildList_t049treeparser", () {
    var cstream = new ANTLRStringStream("abc");
    t049treeparserfLexer lexer = new t049treeparserfLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparserfParser parser = new t049treeparserfParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparserfWalker walker = new t049treeparserfWalker(nodes);
    walker.a();
    expect(walker.output, equals("abc"));
  });
  
  test("testNullableChildList2_t049treeparser", () {
    var cstream = new ANTLRStringStream("abc 3;");
    t049treeparsergLexer lexer = new t049treeparsergLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparsergParser parser = new t049treeparsergParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparsergWalker walker = new t049treeparsergWalker(nodes);
    walker.a();
    expect(walker.output, equals("abc"));
  });
  
  test("testNullableChildList3_t049treeparser", () {
    var cstream = new ANTLRStringStream("abc 3 def;");
    t049treeparserhLexer lexer = new t049treeparserhLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparserhParser parser = new t049treeparserhParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparserhWalker walker = new t049treeparserhWalker(nodes);
    walker.a();
    expect(walker.output, equals("abc, def"));
  });
  
  test("testActionsAfterRoot_t049treeparser", () {
    var cstream = new ANTLRStringStream("abc;");
    t049treeparseriLexer lexer = new t049treeparseriLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t049treeparseriParser parser = new t049treeparseriParser(tstream);
    var ret = parser.a();
    CommonTreeNodeStream nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    t049treeparseriWalker walker = new t049treeparseriWalker(nodes);
    walker.a();
    expect(walker.output, equals("abc, 2"));
  });
}




// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t047treeparserLexer.dart";
part "../out/t047treeparserParser.dart";
part "../out/t047treeparserWalker.dart";

main() {  
  
  String xinput = 
      "char c;\n"
      "int x;\n"
      "\n"
      "void bar(int x);\n"
      "\n"
      "int foo(int y, char d) {\n"
      "  int i;\n"
      "  for (i=0; i<3; i=i+1) {\n"
      "    x=3;\n"
      "    y=5;\n"
      "  }\n"
      "}\n"
  ;
  
  String xoutput = 
      "(VAR_DEF char c) (VAR_DEF int x) "
      "(FUNC_DECL (FUNC_HDR void bar (ARG_DEF int x))) "
      "(FUNC_DEF (FUNC_HDR int foo (ARG_DEF int y) "
      "(ARG_DEF char d)) (BLOCK (VAR_DEF int i) (for (= i 0) "
      "(< i 3) (= i (+ i 1)) (BLOCK (= x 3) (= y 5)))))"
  ;
  
  List<String> traces = const [ 
    '>program', '>declaration', '>variable', '>type', '<type',
    '>declarator', '<declarator', '<variable', '<declaration',
    '>declaration', '>variable', '>type', '<type', '>declarator',
    '<declarator', '<variable', '<declaration', '>declaration',
    '>functionHeader', '>type', '<type', '>formalParameter',
    '>type', '<type', '>declarator', '<declarator',
    '<formalParameter', '<functionHeader', '<declaration',
    '>declaration', '>functionHeader', '>type', '<type',
    '>formalParameter', '>type', '<type', '>declarator',
    '<declarator', '<formalParameter', '>formalParameter', '>type',
    '<type', '>declarator', '<declarator', '<formalParameter',
    '<functionHeader', '>block', '>variable', '>type', '<type',
    '>declarator', '<declarator', '<variable', '>stat', '>forStat',
    '>expr', '>expr', '>atom', '<atom', '<expr', '<expr', '>expr',
    '>expr', '>atom', '<atom', '<expr', '>expr', '>atom', '<atom',
    '<expr', '<expr', '>expr', '>expr', '>expr', '>atom', '<atom',
    '<expr', '>expr', '>atom', '<atom', '<expr', '<expr', '<expr',
    '>block', '>stat', '>expr', '>expr', '>atom', '<atom', '<expr',
    '<expr', '<stat', '>stat', '>expr', '>expr', '>atom', '<atom',
    '<expr', '<expr', '<stat', '<block', '<forStat', '<stat',
    '<block', '<declaration', '<program'
  ];
  
 test('testWalker_t047treeparser', () {
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t047treeparserLexer lexer = new t047treeparserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t047treeparserParser parser = new t047treeparserParser(tstream); 
    
    var ret = parser.program();
    expect((ret.tree as Tree).toStringTree(), equals(xoutput));
    
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    var walker = new TWalker(nodes);
    walker.program();
    expect(walker.traces, equals(traces));     
  });
 
  test("testRuleLabelPropertyRefText_t047treeparser", () {
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t047treeparserLexer lexer = new t047treeparserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t047treeparserParser parser = new t047treeparserParser(tstream);
  
    var ret = parser.variable();
    var nodes = new CommonTreeNodeStream(ret.tree);
    nodes.tokenStream = tstream;
    var walker = new TWalker(nodes);
    var r = walker.variable();  
    expect('c', equals(r));
  });
}
  

class TWalker extends t047treeparserWalker {
  
  List<String> traces;
  
  TWalker(CommonTreeNodeStream tstream) : super(tstream) {
    this.traces = new List<String>();
  }
  
  void traceIn(ruleName, ruleIndex, [Object inputSymbol]) {
    this.traces.add(">$ruleName");
  }
  
  void traceOut(ruleName, ruleIndex, [Object inputSymbol]) {
    this.traces.add("<$ruleName");
  }  
}

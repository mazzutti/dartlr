// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t044trace_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t044traceLexer.dart";
import "../out/t044traceParser.dart";

main() {  
  useVmConfiguration();
  
  List<String> lexerTraces = const [ 
     '>T__7', '<T__7', '>WS', '<WS', '>INT', '<INT', '>WS', '<WS',
     '>T__6', '<T__6', '>WS', '<WS', '>INT', '<INT', '>WS', '<WS',
     '>T__6', '<T__6', '>WS', '<WS', '>INT', '<INT', '>WS', '<WS',
     '>T__8', '<T__8'
  ];
  
  List<String> parserTraces = const [ 
    '>a', '>synpred1_t044trace_fragment', '<synpred1_t044trace_fragment', 
    '>b', '>c', '<c', '>c', '<c', '>c', '<c', '<b', '<a'
  ];
  
  test('testValid1_t044trace', () {
    ANTLRStringStream cstream = new ANTLRStringStream('< 1 + 2 + 3 >');
    TLexer lexer = new TLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    TParser parser = new TParser(tstream); 
    
    parser.a();
    print(lexerTraces);
    print(lexer.traces);
    expect(lexer.traces, equals(lexerTraces));
    expect(parser.traces, equals(parserTraces));  
  });
  
}

class TParser extends t044traceParser {
  
  List<String> traces;
  
  TParser(CommonTokenStream tstream) : super(tstream) {
    this.traces = new List<String>();
  }
  
  void traceIn(ruleName, ruleIndex, [Object inputSymbol]) {
    this.traces.add(">$ruleName");
  }
  
  void traceOut(ruleName, ruleIndex, [Object inputSymbol]) {
    this.traces.add("<$ruleName");
  }  
}

class TLexer extends t044traceLexer {
  
  List<String> traces;
  
  TLexer(ANTLRStringStream cstream) : super(cstream) {
    this.traces = new List<String>();
  }
  
  @override void traceIn(ruleName, ruleIndex, [Object inputSymbol]) {
    this.traces.add(">$ruleName");
  }
  
  void traceOut(ruleName, ruleIndex, [Object inputSymbol]) {
    this.traces.add("<$ruleName");
  }  
}
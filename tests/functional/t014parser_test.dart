// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t014parser_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t014parserParser.dart");
#import("../out/t014parserLexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testValid_t014parser", () {
    ANTLRStringStream cstream = 
      new ANTLRStringStream("var foobar; gnarz(); var blupp; flupp ( ) ;");
    Lexer lexer = new t014parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t014parserParser parser = new t014parserParser(tstream);
    List expected = [
      ["decl", "foobar"],
      ["call", "gnarz"],
      ["decl", "blupp"],
      ["call", "flupp"]
    ];
    parser.document();
    expect(0).equals(parser.errors.length);
    for(int i = 0; i < parser.events.length; i++) {
      expect(parser.events[i][0]).equals(expected[i][0]);
      expect(parser.events[i][1]).equals(expected[i][1]);
    }
  });
  
  test("testMalformedInput1_t014parser", () {
    ANTLRStringStream cstream = new ANTLRStringStream("var; foo();");
    Lexer lexer = new t014parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t014parserParser parser = new t014parserParser(tstream);
   
    parser.document();
    expect(parser.errors.length).equals(1);
    expect(parser.errors[0].indexOf("line 1:3")).equals(1);
    expect(parser.events.length).equals(0);
  });
  
  test("testMalformedInput2_t014parser", () {
    ANTLRStringStream cstream = new ANTLRStringStream("var foobar(); gnarz();");
    Lexer lexer = new t014parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t014parserParser parser = new t014parserParser(tstream);
    List expected = [["call", "gnarz"]];
    parser.document();    
    expect(parser.errors.length).equals(1);
    expect(parser.errors[0].indexOf("line 1:10")).equals(1);
    expect(parser.events.length).equals(expected.length);
    for (int i = 0; i < expected.length; i++) {
      expect(parser.events[i][0]).equals(expected[i][0]);
      expect(parser.events[i][1]).equals(expected[i][1]);
    }
  });
}

// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
library dartlr_tests;


import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t030specialStatesLexer.dart";
part "../out/t030specialStatesParser.dart";

main() {
  
  test("testValid1_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
  
  test("testValid2_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo name1");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
  
  test("testValid3_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("bar name1");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.cond = false;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
  
  test("testValid4_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("bar name1 name2");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.cond = false;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
}

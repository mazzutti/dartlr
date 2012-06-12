// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
#library("dart:t030specialStates_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t030specialStatesLexer.dart");
#import("../out/t030specialStatesParser.dart");

#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();

  test("testValid1_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.r();
    expect(parser.reportedErrors.length).equals(expected);
  });
  
  test("testValid2_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo name1");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.r();
    expect(parser.reportedErrors.length).equals(expected);
  });
  
  test("testValid3_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("bar name1");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.cond = false;
    parser.r();
    expect(parser.reportedErrors.length).equals(expected);
  });
  
  test("testValid4_t030specialStates", () {
    ANTLRStringStream cstream = new ANTLRStringStream("bar name1 name2");
    t030specialStatesLexer lexer = new t030specialStatesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t030specialStatesParser parser = new t030specialStatesParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.cond = false;
    parser.r();
    expect(parser.reportedErrors.length).equals(expected);
  });
}

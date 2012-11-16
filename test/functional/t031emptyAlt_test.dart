// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t031emptyAltLexer.dart";
part "../out/t031emptyAltParser.dart";

main() {
  
  test("testValid1_t031emptyAlt", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo");
    t031emptyAltLexer lexer = new t031emptyAltLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t031emptyAltParser parser = new t031emptyAltParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.cond = false;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
  
  test("testValid2_t031emptyAlt", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo  jfef9jfe88d");
    t031emptyAltLexer lexer = new t031emptyAltLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t031emptyAltParser parser = new t031emptyAltParser(tstream);
    int expected = parser.reportedErrors.length;
    parser.cond = true;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
  
  test("testValid3_t031emptyAlt", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo bar");
    t031emptyAltLexer lexer = new t031emptyAltLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t031emptyAltParser parser = new t031emptyAltParser(tstream);
    List expected = ["line 1:3 no viable alternative at input ' '"];
    parser.cond = false;
    parser.r();
    expect(parser.reportedErrors, equals(expected));
  });
}


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t022scopesLexer.dart";
part "../out/t022scopesParser.dart";

main() {
  
  test("testa1_t022scopes", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar");
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);

    // just make sure we don't get any errors
    parser.a();
  });

  test("testb1_t022scopes", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar");
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);
    
    parser.b(false);
    String expected = "line 1:0 no viable alternative at input 'foobar'";
    expect(parser.reportedErrors.last, equals(expected));
  });

  test("testb2_t022scopes", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar");
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);
    
    int expected = parser.reportedErrors.length;
    parser.b(true);
    expect(parser.reportedErrors.length, equals(expected));
  });

  test("testc1_t022scopes", () {
    String xinput =
        "{\n"
        "   int i;\n"
        "   int j;\n"
        "   i = 0;\n"
        "}\n"
    ;

    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);

    Map symbols = parser.c();
    expect(symbols["i"], equals(true));
    expect(symbols["j"], equals(true));
  });

  test("testc2_t022scopes", () {
    String xinput =
        "{\n"
        "   int i;\n"
        "   int j;\n"
        "   i = 0;\n"
        "   x = 4;\n"
        "}\n"
    ;

    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);
    try {
      parser.c();
      Expect.fail("shouldn't get here");
    } catch(e) {
      expect(e.toString(), equals("Exception: x"));      
    }
  });

  test("testd1_t022scopes", () {
    String xinput =
        "{\n"
        "   int i;\n"
        "   int j;\n"
        "   i = 0;\n"
        "   {\n"
        "       int i;\n"
        "       int x;\n"
        "       x = 5;\n"
        "   }\n"
        "}\n"
    ;

    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);

    Map symbols = parser.d();
    expect(symbols["i"], equals(true));
    expect(symbols["j"], equals(true));
  });

  test("teste1_t022scopes", () {
    String xinput = "{ { { { 12 } } } }";
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);

    int res = parser.e();
    expect(res, equals(12));
  });

  test("testf1_t022scopes", () {
    String xinput = "{ { { { 12 } } } }";
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);

    var res = parser.f();
    expect(res, equals(null));
  });
  
  test("testf2_t022scopes", () {
    String xinput = "{ { 12 } }";
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t022scopesLexer lexer = new t022scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t022scopesParser parser = new t022scopesParser(tstream);

    var res = parser.f();
    expect(res, equals(null));
  });
}

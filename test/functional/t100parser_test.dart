// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t100parserLexer.dart";
part "../out/t100parserParser.dart";

main() {

  test('testValid_t013parser', () {
    ANTLRStringStream cstream = new ANTLRStringStream(r"/\\\/\) abc \s\S*/");
    Lexer lexer = new t100parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t100parserParser parser = new t100parserParser(tstream);

    parser.expr();
    expect(0, equals(parser.reportedErrors.length));
  });

  test('testMalformedInput_t013parser', () {
    ANTLRStringStream cstream = new ANTLRStringStream(r"///");
    Lexer lexer = new t100parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t100parserParser parser = new t100parserParser(tstream);
    expect(() => parser.expr(), throwsA(new isInstanceOf<Object>()));
  });
}

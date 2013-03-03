// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t101parserLexer.dart";
part "../out/t101parserParser.dart";

main() {

  test('testValid_t101parser', () {
    ANTLRStringStream cstream = new ANTLRStringStream(r"/\$*/");
    Lexer lexer = new t101parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t101parserParser parser = new t101parserParser(tstream);

    parser.expr();
    expect(0, equals(parser.reportedErrors.length));
  });

  test('testMalformedInput_t101parser', () {
    ANTLRStringStream cstream = new ANTLRStringStream(r"///");
    Lexer lexer = new t101parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t101parserParser parser = new t101parserParser(tstream);
    Function function = () => parser.expr();
    expect(() => parser.expr(), throwsA(new isInstanceOf<Object>()));
  });
}

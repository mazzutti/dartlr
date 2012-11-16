// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t023scopesLexer.dart";
part "../out/t023scopesParser.dart";

main() {
  
  test("testa1_t023scopes", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar");
    t023scopesLexer lexer = new t023scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t023scopesParser parser = new t023scopesParser(tstream);

    int expected = parser.reportedErrors.length;
    parser.prog();
    expect(parser.reportedErrors.length, equals(expected));
  });
  
}

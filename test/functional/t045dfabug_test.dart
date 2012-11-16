// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t045dfabugLexer.dart";
part "../out/t045dfabugParser.dart";

main() {
  
  test('testValid_t045dfabug', () {
    ANTLRStringStream cstream = new ANTLRStringStream("public fooze");
    t045dfabugLexer lexer = new t045dfabugLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t045dfabugParser parser = new t045dfabugParser(tstream);
    
    int expected = parser.reportedErrors.length;
    parser.r();
    expect(parser.reportedErrors.length, equals(expected));
  });
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart"; 

part "../out/t033backtrackingLexer.dart";
part "../out/t033backtrackingParser.dart";

main() {

  test('testValid_t033backtracking', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int a;");
    t033backtrackingLexer lexer = new t033backtrackingLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t033backtrackingParser parser = new t033backtrackingParser(tstream);
    
    int expected = parser.reportedErrors.length;
    parser.translation_unit();
    expect(parser.reportedErrors.length, equals(expected));
  });
}

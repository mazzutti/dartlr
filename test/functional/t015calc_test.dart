// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "dart:math" as math;
import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t015calcLexer.dart";
part "../out/t015calcParser.dart";

main() {  
  
  void _evaluate(String expr, num expected, [List errors = const []]) {
    ANTLRStringStream cstream = new ANTLRStringStream(expr);
    Lexer lexer = new t015calcLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t015calcParser parser = new t015calcParser(tstream);

    var result = parser.evaluate();
    expect(result, equals(expected));
    if(errors.length > 0) {
      expect(parser.reportedErrors, equals(errors));
    }
  }

  test("testEvaluate_t015cal", ()  {
    _evaluate("1 + 2", 3);
    _evaluate("1 + 2 * 3", 7);
    _evaluate("10 / 2", 5);
    _evaluate("6 + 2*(3+1) - 4", 10);
    _evaluate("6 - (2*1", 4, ["line 1:8 "
       "mismatched input '<EOF>' expecting ')'"]);
  });

}

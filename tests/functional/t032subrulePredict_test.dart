// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t032subrulePredict_test;


import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t032subrulePredictLexer.dart";
import "../out/t032subrulePredictParser.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t032subrulePredict', () {
    ANTLRStringStream cstream = new ANTLRStringStream("BEGIN A END");
    t032subrulePredictLexer lexer = new t032subrulePredictLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t032subrulePredictParser parser = new t032subrulePredictParser(tstream);
    
    int expected = parser.reportedErrors.length;
    parser.a();
    expect(parser.reportedErrors.length, equals(expected));
  });
}

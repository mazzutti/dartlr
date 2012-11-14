// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t024finally_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t024finallyLexer.dart";
import "../out/t024finallyParser.dart";

main() {  
  useVmConfiguration();

  test("testa1_t024finally", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar");
    t024finallyLexer lexer = new t024finallyLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t024finallyParser parser = new t024finallyParser(tstream);

    List events = parser.prog();
    expect(events, equals(["catch", "finally"]));
  });
  
}

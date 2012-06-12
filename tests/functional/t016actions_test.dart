// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t016actions_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t016actionsParser.dart");
#import("../out/t016actionsLexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testValid_t016actions", () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo;");
    Lexer lexer = new t016actionsLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t016actionsParser parser = new t016actionsParser(tstream);

    String result = parser.declaration();
    expect("foo").equals(result);
  });

}

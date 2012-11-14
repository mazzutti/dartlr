// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t021hoist_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t021hoistLexer.dart";
import "../out/t021hoistParser.dart";

main() {  
  useVmConfiguration();

  test("testValid1_t021hoist", () {
    ANTLRStringStream cstream = new ANTLRStringStream("enum");
    t021hoistLexer lexer = new t021hoistLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t021hoistParser parser = new t021hoistParser(tstream);

    parser.enableEnum = true;
    var enumIs = parser.stat();
    
    expect(enumIs, equals("keyword"));
  });
  
  test("testValid2_t021hoist", () {
    ANTLRStringStream cstream = new ANTLRStringStream("enum");
    t021hoistLexer lexer = new t021hoistLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t021hoistParser parser = new t021hoistParser(tstream);

    parser.enableEnum = false;
    var enumIs = parser.stat();
    
    expect(enumIs, equals("ID"));
  });
}

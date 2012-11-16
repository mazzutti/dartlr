// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t026actionsLexer.dart";
part "../out/t026actionsParser.dart";

main() {
  
  test("testa1_t026actions", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar _Ab98 \n A12sdf");
    t026actionsLexer lexer = new t026actionsLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t026actionsParser parser = new t026actionsParser(tstream);
    
    parser.prog();   
    expect(parser.xlog, equals(["init;", "after;", "finally;"]));
    expect(lexer.xlog, equals([
                   "action;", "foobar 4 1 0 -1 0 0 5", "attribute;", "action;", 
                   "_Ab98 4 1 7 -1 0 7 11", "attribute;"]
    ));  
  });
  
}

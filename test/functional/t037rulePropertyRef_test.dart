// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t037rulePropertyRefLexer.dart";
part "../out/t037rulePropertyRefParser.dart";

main() {
  
  test('testValid1_t037rulePropertyRef', () {
    ANTLRStringStream cstream = new ANTLRStringStream("   a a a a  ");
    t037rulePropertyRefLexer lexer = new t037rulePropertyRefLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t037rulePropertyRefParser parser = new t037rulePropertyRefParser(tstream); 
    
    var ret = parser.a().bla;
    expect(ret[0].tokenIndex, equals(1));
    expect(ret[1].tokenIndex, equals(7));
    expect(ret[2], equals("a a a a"));   
  });
  
}

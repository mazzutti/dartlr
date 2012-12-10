// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t104rulecatchParser.dart";
part "../out/t104rulecatchLexer.dart";

main() {  
  
  test('catch exception after rule with generic catch clause - catch[e]', () {
    ANTLRStringStream cstream = new ANTLRStringStream("aaa"); 
    Lexer lexer = new t104rulecatchLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t104rulecatchParser parser = new t104rulecatchParser(tstream);
   
    parser.prog();
    expect(parser.caughtException, true);
  });  
}

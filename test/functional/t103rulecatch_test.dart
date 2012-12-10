// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t103rulecatchParser.dart";
part "../out/t103rulecatchLexer.dart";

main() {  
  
  test('catch exception after rule', () {
    ANTLRStringStream cstream = new ANTLRStringStream("aaa"); 
    Lexer lexer = new t103rulecatchLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t103rulecatchParser parser = new t103rulecatchParser(tstream);
   
    parser.prog();
    expect(parser.caughtException, true);
  });  
}

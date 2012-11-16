// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t041parametersLexer.dart";
part "../out/t041parametersParser.dart";

main() {
  
  test('testValid1_t041parameters', () {
    ANTLRStringStream cstream = new ANTLRStringStream('a a a');
    t041parametersLexer lexer = new t041parametersLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t041parametersParser parser = new t041parametersParser(tstream); 
    
    var ret = parser.a("foo", "bar");
    expect(ret, equals(["foo", "bar"]));   
  });
  
}

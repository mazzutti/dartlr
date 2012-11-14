// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t041parameters_test;


import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t041parametersLexer.dart";
import "../out/t041parametersParser.dart";

main() {  
  useVmConfiguration();
  
  test('testValid1_t041parameters', () {
    ANTLRStringStream cstream = new ANTLRStringStream('a a a');
    t041parametersLexer lexer = new t041parametersLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t041parametersParser parser = new t041parametersParser(tstream); 
    
    var ret = parser.a("foo", "bar");
    expect(ret, equals(["foo", "bar"]));   
  });
  
}

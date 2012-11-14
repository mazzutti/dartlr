// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t036multipleReturnValues_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t036multipleReturnValuesLexer.dart";
import "../out/t036multipleReturnValuesParser.dart";

main() {  
  useVmConfiguration();
  
  test('testValid1_t036multipleReturnValues', () {
    ANTLRStringStream cstream = new ANTLRStringStream("   a a a a  ");
    t036multipleReturnValuesLexer lexer = new t036multipleReturnValuesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t036multipleReturnValuesParser parser = new t036multipleReturnValuesParser(tstream); 
    
    var ret = parser.a();
    expect(ret.foo, equals("foo"));
    expect(ret.bar, equals("bar"));
  });
  
}

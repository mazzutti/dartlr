// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t039labels_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t039labelsLexer.dart";
import "../out/t039labelsParser.dart";

main() {  
  useVmConfiguration();
  
  test('testValid1_t039labels', () {
    ANTLRStringStream cstream = new ANTLRStringStream('a, b, c, 1, 2 A FOOBAR GNU1 A BLARZ');
    t039labelsLexer lexer = new t039labelsLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t039labelsParser parser = new t039labelsParser(tstream); 
    
    var ret = parser.a();
    List ids = ret[0];
    Token w = ret[1];
    List<String> a = new List<String>();
    for(Token t in ids)
      a.add(t.text);
    expect(a, equals(["a", "b", "c", "1", "2", "A"]));
    expect(w.text, equals("GNU1"));
    
  });

}

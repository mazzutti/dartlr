// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t035ruleLabelPropertyRef_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t035ruleLabelPropertyRefLexer.dart";
import "../out/t035ruleLabelPropertyRefParser.dart";

main() {  
  useVmConfiguration();
  
  test('testValid1_t035ruleLabelPropertyRef', () {
    ANTLRStringStream cstream = new ANTLRStringStream("   a a a a  ");
    t035ruleLabelPropertyRefLexer lexer = new t035ruleLabelPropertyRefLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t035ruleLabelPropertyRefParser parser = new t035ruleLabelPropertyRefParser(tstream); 
    
    List a = parser.a();
    expect(a[0].tokenIndex, equals(1));
    expect(a[1].tokenIndex, equals(7));
    expect(a[2], equals("a a a a"));
  });
  
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t034tokenLabelPropertyRefLexer.dart";
part "../out/t034tokenLabelPropertyRefParser.dart";

main() {
  
  test('testValid1_t034tokenLabelPropertyRef', () {
    ANTLRStringStream cstream = new ANTLRStringStream("   a");
    t034tokenLabelPropertyRefLexer lexer = new t034tokenLabelPropertyRefLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t034tokenLabelPropertyRefParser parser = new t034tokenLabelPropertyRefParser(tstream);  
    
    parser.a();
    expect(["a",4,1,3,0,1], equals(parser.xlog));
  });
  
}

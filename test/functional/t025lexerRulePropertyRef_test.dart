// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t025lexerRulePropertyRef.dart";

main() {  
  
  test("testValid1_t025lexerRulePropertyRef", () {
    ANTLRStringStream stream = new ANTLRStringStream("foobar _Ab98 \n A12sdf");
    t025lexerRulePropertyRef lexer = new t025lexerRulePropertyRef(stream);
    Token token;

    while (true) {
      token = lexer.nextToken();
      if (token.type === Token.EOF)
        break;
    }

    expect(lexer.properties.length, equals(3));

    List p1 = [
        "foobar",
        t025lexerRulePropertyRef.IDENTIFIER,
        1,
        0,
        -1,
        Token.DEFAULT_CHANNEL,
        0,
        5
    ];
    
    expect(lexer.properties[0], equals(p1));

    List p2 = [
        "_Ab98",
        t025lexerRulePropertyRef.IDENTIFIER,
        1,
        7,
        -1,
        Token.DEFAULT_CHANNEL,
        7,
        11
    ];
    expect(lexer.properties[1], equals(p2));

    List p3 = [
        "A12sdf",
        t025lexerRulePropertyRef.IDENTIFIER,
        2,
        1,
        -1,
        Token.DEFAULT_CHANNEL,
        15,
        20
    ];
    expect(lexer.properties[2], equals(p3));
  });
  
}

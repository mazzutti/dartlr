// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t046rewrite_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t046rewriteLexer.dart";
import "../out/t046rewriteParser.dart";

main() {  
  useVmConfiguration();
  
  test('testValid_t045subrulePredict', () {
    
    String xinput = 
        "method foo() {\n"
        "  i = 3;\n"
        "  k = i;\n"
        "  i = k*4;\n"
        "}\n"
        "\n"
        "method bar() {\n"
        "  j = i*2;\n"
        "}\n";
               
    String xoutput = 
        "public class Wrapper {\n"
        "public void foo() {\n"
        "int i;\n"
        "int k;\n"
        "  i = 3;\n"
        "  k = i;\n"
        "  i = k*4;\n"
        "}\n"
        "\n"
        "public void bar() {\n"
        "int j;\n"
        "  j = i*2;\n"
        "}\n"
        "}\n"
        "\n";
    
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t046rewriteLexer lexer = new t046rewriteLexer(cstream);
    TokenRewriteStream tstream = new TokenRewriteStream(lexer);
    t046rewriteParser parser = new t046rewriteParser(tstream);
    
    parser.program();
    expect(tstream.toString(), equals(xoutput));
  });
}

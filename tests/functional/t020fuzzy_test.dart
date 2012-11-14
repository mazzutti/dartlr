// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t020fuzzy_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t020fuzzy.dart";

main() {  
  useVmConfiguration();
  
  test("testValid_t020fuzzy", () {
    String xinput =
      "import org.antlr.runtime.*;\n"
      "\n"
      "public class Main {\n"
      " public static void main(String[] args) throws Exception {\n"
      "     for (int i=0; i<args.length; i++) {\n"
      "   CharStream input = new ANTLRFileStream(args[i]);\n"
      "   FuzzyJava lex = new FuzzyJava(input);\n"
      "   TokenStream tokens = new CommonTokenStream(lex);\n"
      "   tokens.toString();\n"
      "   //System.out.println(tokens);\n"
      "     }\n"
      " }\n"
      "}\n"
    ;
    List xoutput = [
      "found class Main\n",
      "found method main\n",
      "found var i\n",
      "found var input\n",
      "found call ANTLRFileStream\n",
      "found var lex\n",
      "found call FuzzyJava\n",
      "found var tokens\n",
      "found call CommonTokenStream\n",
      "found call tokens.toString\n",
      "found // comment //System.out.println(tokens);\n\n"
    ];
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t020fuzzy lexer = new t020fuzzy(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);

    expect(tstream.numberOfOnChannelTokens, equals(38));
    expect(lexer.outbuf,equals(xoutput));
  });
  
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t019lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t019lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testValid_t019lexer", () {
    String xinput = 
      "import org.antlr.runtime.*;\n"
      "\n"
      "public class Main {\n"
      "\n" 
      " class test{}"  
      " public static void main(String[] args) throws Exception {\n"
      "   for (int i=0; i<args.length; i++) {\n"
      "     CharStream input = new ANTLRFileStream(args[i]);\n"
      "     FuzzyJava lex = new FuzzyJava(input);\n"
      "     TokenStream tokens = new CommonTokenStream(lex);\n"
      "     tokens.toString();\n"
      "     //System.out.println(tokens);\n"
      "   }\n"
      " }\n"
      "}\n"
    ;
    
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t019lexer lexer = new t019lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    expect(tstream.getNumberOfOnChannelTokens()).equals(42);
  }); 
}

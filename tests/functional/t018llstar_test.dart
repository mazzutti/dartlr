// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t018llstar_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t018llstarParser.dart");
#import("../out/t018llstarLexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test("testValid_t018llstar", () {
    String xinput =
      "char c;\n"
      "int x;\n"
      "\n"
      "void bar(int x);\n"
      "\n"
      "int foo(int y, char d) {\n"
      "  int i;\n"
      "  for (i=0; i<3; i=i+1) {\n"
      "    x=3;\n"
      "    y=5;\n"
      "  }\n"
      "}\n"
    ;
    List xoutput  = const [
      "bar is a declaration",
      "foo is a definition"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    Lexer lexer = new t018llstarLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t018llstarParser parser = new t018llstarParser(tstream);

    parser.program();
    expect(xoutput).equalsCollection(xoutput);
  });
 
}

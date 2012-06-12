// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t026actions_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t026actionsLexer.dart");
#import("../out/t026actionsParser.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();

  test("testa1_t026actions", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar _Ab98 \n A12sdf");
    t026actionsLexer lexer = new t026actionsLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t026actionsParser parser = new t026actionsParser(tstream);
    
    parser.prog();   
    expect(parser.xlog).equalsCollection(["init;", "after;", "finally;"]);
    expect(lexer.xlog).equalsCollection([
                   "action;", "foobar 4 1 0 -1 0 0 5", "attribute;", "action;", 
                   "_Ab98 4 1 7 -1 0 7 11", "attribute;"]
    );   
  });
  
}

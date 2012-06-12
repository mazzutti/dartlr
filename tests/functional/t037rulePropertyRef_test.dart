// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t037rulePropertyRef_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t037rulePropertyRefLexer.dart");
#import("../out/t037rulePropertyRefParser.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid1_t037rulePropertyRef', () {
    ANTLRStringStream cstream = new ANTLRStringStream("   a a a a  ");
    t037rulePropertyRefLexer lexer = new t037rulePropertyRefLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t037rulePropertyRefParser parser = new t037rulePropertyRefParser(tstream); 
    
    var ret = parser.a().bla;
    expect(ret[0].tokenIndex).equals(1);
    expect(ret[1].tokenIndex).equals(7);
    expect(ret[2]).equals("a a a a");   
  });
  
}

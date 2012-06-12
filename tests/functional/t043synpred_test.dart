// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t043synpred_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t043synpredLexer.dart");
#import("../out/t043synpredParser.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid1_t043synpred', () {
    ANTLRStringStream cstream = new ANTLRStringStream('   +foo>');
    t043synpredLexer lexer = new t043synpredLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t043synpredParser parser = new t043synpredParser(tstream); 
    
    int expected = parser.reportedErrors.length;
    parser.a();
    expect(parser.reportedErrors.length).equals(expected);   
  });
  
}

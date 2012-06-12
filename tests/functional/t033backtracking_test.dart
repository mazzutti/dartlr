// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t033backtracking_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t033backtrackingLexer.dart");
#import("../out/t033backtrackingParser.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t033backtracking', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int a;");
    t033backtrackingLexer lexer = new t033backtrackingLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t033backtrackingParser parser = new t033backtrackingParser(tstream);
    
    int expected = parser.reportedErrors.length;
    parser.translation_unit();
    expect(parser.reportedErrors.length).equals(expected);
  });
}

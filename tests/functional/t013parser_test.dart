// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t013parser_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t013parserParser.dart");
#import("../out/t013parserLexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t013parser', () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar"); 
    Lexer lexer = new t013parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t013parserParser parser = new t013parserParser(tstream);
   
    parser.document();
    expect(0).equals(parser.reportedErrors.length);
    expect(1).equals(parser.identifiers.length);    
  });
  
  test('testMalformedInput_t013parser', () {
    ANTLRStringStream cstream = new ANTLRStringStream(""); 
    Lexer lexer = new t013parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t013parserParser parser = new t013parserParser(tstream);
    Function function = () => parser.document();
    expectThrow(function);    
  });
}

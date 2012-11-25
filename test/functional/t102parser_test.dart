// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t102parserParser.dart";
part "../out/t102parserLexer.dart";

main() {  
  
  test('list of idents', () {
    ANTLRStringStream cstream = new ANTLRStringStream("abc -abc a9b-ce"); 
    Lexer lexer = new t102parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t102parserParser parser = new t102parserParser(tstream);
   
    parser.prog();
    expect(parser.reportedErrors.length,0);
  });
  
  test('list of keywords', () {
    ANTLRStringStream cstream = new ANTLRStringStream("[ abc de_f gh_y_ ]"); 
    Lexer lexer = new t102parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t102parserParser parser = new t102parserParser(tstream);
   
    parser.prog();
    expect(parser.reportedErrors.length,0);
  });
  
  test('list of keywords with IDENTs - should fail', () {
    ANTLRStringStream cstream = new ANTLRStringStream("[ abc -a87 gh-y ]"); 
    Lexer lexer = new t102parserLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t102parserParser parser = new t102parserParser(tstream);
   
    expect(() => parser.prog(), throwsA(new isInstanceOf<RuntimeError>()));
  });
  
}

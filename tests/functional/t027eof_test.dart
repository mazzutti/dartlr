// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t027eof_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t027eof.dart");

#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();

  test("testValid1_t027eof", () {
    ANTLRStringStream stream = new ANTLRStringStream(" \u0000");
    t027eof lexer = new t027eof(stream);
    
    Token token = lexer.nextToken();
    expect(token.type).equals(t027eof.SPACE);

    token = lexer.nextToken();
    expect(token.type).equals(t027eof.END);
    
    token = lexer.nextToken();
    expect(token.type).equals(t027eof.EOF);
  });
}

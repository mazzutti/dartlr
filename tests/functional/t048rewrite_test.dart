// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t048rewrite_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t048rewrite.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  TokenRewriteStream _parse(String xinput) {
    ANTLRStringStream cstream = new ANTLRStringStream(xinput);
    t048rewrite lexer = new t048rewrite(cstream);
    TokenRewriteStream tstream = new TokenRewriteStream(lexer);
    tstream.fill();
    return tstream;
  }
  
  test('testInsertBeforeIndex0_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.insertBefore(0,"0");
    var result = tokens.toString();
    String expected = "0abc";
    expect(result).equals(expected);
  });
  
  test('testInsertAfterLastIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.insertAfter(2,"x");
    var result = tokens.toString();
    String expected = "abcx";
    expect(result).equals(expected);
  });
  
  test('test2InsertBeforeAfterMiddleIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.insertBefore(1,"x");
    tokens.insertAfter(1,"x");
    var result = tokens.toString();
    String expected = "axbxc";
    expect(result).equals(expected);
  });
  
  test('testReplaceIndex0x_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(0,"x");
    var result = tokens.toString();
    String expected = "xbc";
    expect(result).equals(expected);
  });
  
  test('testReplaceLastIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(2,"x");
    var result = tokens.toString();
    String expected = "abx";
    expect(result).equals(expected);
  });
  
  test('testReplaceMiddleIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(1,"x");
    var result = tokens.toString();
    String expected = "axc";
    expect(result).equals(expected);
  });
  
  test('testReplaceMiddleIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(1,"x");
    tokens.replace(1,"y");
    var result = tokens.toString();
    String expected = "ayc";
    expect(result).equals(expected);
  });
  
  test('testReplaceThenDeleteMiddleIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(1,"x");
    tokens.delete(1);
    var result = tokens.toString();
    String expected = "ac";
    expect(result).equals(expected);
  });
  
  test('testReplaceThenInsertSameIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(0,"x");
    tokens.insertBefore(0,"0");
    var result = tokens.toString();
    String expected = "0xbc";
    expect(result).equals(expected);
  });
  
  test('testReplaceThen2InsertSameIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(0,"x");
    tokens.insertBefore(0,"y");
    tokens.insertBefore(0,"z");
    var result = tokens.toString();
    String expected = "zyxbc";
    expect(result).equals(expected);
  });
  
  test('testInsertThenReplaceSameIndex_t048rewrite', () {
    var tokens = _parse("abc");    
    tokens.insertBefore(0,"0");
    tokens.replace(0,"x");
    var result = tokens.toString();
    String expected = "0xbc";
    expect(result).equals(expected);
  });
  
  test('test2InsertMiddleIndex_t048rewrite', () {
    var tokens = _parse("abc");    
    tokens.insertBefore(1,"x");
    tokens.insertBefore(1,"y");
    var result = tokens.toString();
    String expected = "ayxbc";
    expect(result).equals(expected);
  });
  
  test('test2InsertThenReplaceIndex0_t048rewrite', () {
    var tokens = _parse("abc");    
    tokens.insertBefore(0,"x");
    tokens.insertBefore(0,"y");
    tokens.replace(0,"z");
    var result = tokens.toString();
    String expected = "yxzbc";
    expect(result).equals(expected);
  });
  
  test('testReplaceThenInsertBeforeLastIndex_t048rewrite', () {
    var tokens = _parse("abc");    
    tokens.replace(2,"x");
    tokens.insertBefore(2,"y");    
    var result = tokens.toString();
    String expected = "abyx";
    expect(result).equals(expected);
  });
  
  test('testInsertThenReplaceLastIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.insertBefore(2,"y"); 
    tokens.replace(2,"x");       
    var result = tokens.toString();
    String expected = "abyx";
    expect(result).equals(expected);
  });
  
  test('testReplaceThenInsertLastIndex_t048rewrite', () {
    var tokens = _parse("abc");
    tokens.replace(2,"x");
    tokens.insertAfter(2,"y");    
    var result = tokens.toString();
    String expected = "abxy";
    expect(result).equals(expected);
  });
  
  test('testReplaceRangeThenInsertInMiddle_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"x",4);
    tokens.insertBefore(3,"y");           
    expectThrow(tokens.toString);
  });
  
  test('testReplaceRangeThenInsertAtLeftEdge_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"x",4);
    tokens.insertBefore(2,"y");           
    var result = tokens.toString();
    String expected = "abyxba";
    expect(result).equals(expected);
  });
  
  test('testReplaceRangeThenInsertAtRightEdge_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"x",4);
    tokens.insertBefore(4,"y");           
    expectThrow(tokens.toString);
  });
  
  test('testReplaceRangeThenInsertAfterRightEdge_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"x",4);
    tokens.insertAfter(4,"y");           
    var result = tokens.toString();
    String expected = "abxyba";
    expect(result).equals(expected);
  });
  
  test('testReplaceAll_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(0,"x",6);
    var result = tokens.toString();
    String expected = "x";
    expect(result).equals(expected);
  });
  
  test('testReplaceSubsetThenFetch_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"xyz",4);
    var result = tokens.toString();
    String expected = "abxyzba";
    expect(result).equals(expected);
  });
  
  test('testReplaceThenReplaceSuperset_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"xyz",4);
    tokens.replace(2,"foo",5);
    var result = tokens.toString();
    String expected = "abfooa";
    expect(result).equals(expected);
  });
  
  test('testReplaceThenReplaceLowerIndexedSuperset_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"xyz",4);
    tokens.replace(1,"foo",3);
    expectThrow(tokens.toString);
  });
  
  test('testReplaceSingleMiddleThenOverlappingSuperset_t048rewrite', () {
    var tokens = _parse("abcccba");
    tokens.replace(2,"xyz",2);
    tokens.replace(0,"foo",3);
    var result = tokens.toString();
    String expected = "foocba";
    expect(result).equals(expected);
  });
  
}

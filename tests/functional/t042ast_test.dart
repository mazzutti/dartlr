// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t042ast_test;

import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t042astLexer.dart";
import "../out/t042astParser.dart";

main() { 
  useVmConfiguration();
  
  test('testR2a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("assert 2+3;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r2();
    expect(ret.tree.toStringTree(), equals("(assert (+ 2 3))"));         
  });
  
  test('testR2b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("assert 2+3 : 5;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r2();
    expect(ret.tree.toStringTree(), equals("(assert (+ 2 3) 5)"));         
  });
  
  test('testR3a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("if 1 fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r3();
    expect(ret.tree.toStringTree(),equals("(if 1 fooze)"));         
  });
  
  test('testR3b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("if 1 fooze else fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r3();
    expect(ret.tree.toStringTree(), equals("(if 1 fooze fooze)"));         
  });
  
  test('testR4a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("while 2 fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r4();
    expect(ret.tree.toStringTree(), equals("(while 2 fooze)"));         
  });
  
  test('testR5a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("return;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r5();
    expect(ret.tree.toStringTree(), equals("return"));         
  }); 
  
  test('testR5b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("return 2+3;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r5();
    expect(ret.tree.toStringTree(), equals("(return (+ 2 3))"));         
  });
  
  test('testR6a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("3");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r6();
    expect(ret.tree.toStringTree(), equals("3"));         
  });
  
  test('testR6b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("3 a");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r6();
    expect(ret.tree.toStringTree(), equals("3 a"));         
  });
  
  test('testR7_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("3");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r7();
    expect(ret.tree, equals(null));        
  });
  
  test('testR8_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("var foo:bool");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r8();
    expect(ret.tree.toStringTree(), equals("(var bool foo)"));         
  });
  
  test('testR9_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r9();
    expect(ret.tree.toStringTree(), equals("(VARDEF int foo)"));         
  });
  
  test('testR10_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("10");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r10();
    expect(ret.tree.toStringTree(), equals("10.0"));         
  });
  
  test('testR11a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1+2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r11();
    expect(ret.tree.toStringTree(), equals("(EXPR (+ 1 2))"));         
  });
  
  test('testR11b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r11();
    expect(ret.tree.toStringTree(), equals("EXPR"));         
  });
  
  test('testR12a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r12();
    expect(ret.tree.toStringTree(), equals("foo"));         
  });
  
  test('testR12b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo, bar, gnurz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r12();
    expect(ret.tree.toStringTree(), equals("foo bar gnurz"));         
  });
  
  test('testR13a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r13();
    expect(ret.tree.toStringTree(), equals("(int foo)"));         
  });
  
  test('testR13b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("bool foo, bar, gnurz;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r13();
    expect(ret.tree.toStringTree(), equals("(bool foo bar gnurz)"));         
  });
  
  test('testR14a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1+2 int");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r14();
    expect(ret.tree.toStringTree(), equals("(EXPR (+ 1 2) int)"));         
  });
  
  test('testR14b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1+2 int bool");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r14();
    expect(ret.tree.toStringTree(), equals("(EXPR (+ 1 2) int bool)"));         
  });
  
  
  test('testR14c_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int bool");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r14();
    expect(ret.tree.toStringTree(), equals("(EXPR int bool)"));         
  });
    
  test('testR14d_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("fooze fooze int bool");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r14();
    expect(ret.tree.toStringTree(), equals("(EXPR fooze fooze int bool)"));         
  });
  
  test('testR14e_t042ast', () {
    ANTLRStringStream cstream = 
            new ANTLRStringStream("7+9 fooze fooze int bool");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r14();
    expect(ret.tree.toStringTree()
           ,equals("(EXPR (+ 7 9) fooze fooze int bool)"));         
  });
  
  test('testR15_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("7");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r15();
    expect(ret.tree.toStringTree(), equals("7 7"));         
  });
  
  test('testR16a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r16();
    expect(ret.tree.toStringTree(), equals("(int foo)"));         
  });
  
  test('testR16b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("int foo, bar, gnurz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r16();
    expect(ret.tree.toStringTree(), equals("(int foo) (int bar) (int gnurz)"));         
  });
  
  test('testR17_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("for ( fooze ; 1 + 2 ; fooze ) fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r17();
    expect(ret.tree.toStringTree(), equals("(for fooze (+ 1 2) fooze fooze)"));         
  });
  
  test('testR18_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("for");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r18();
    expect(ret.tree.toStringTree(), equals("BLOCK"));         
  });
  
  test('testR19_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("for");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r19();
    expect(ret.tree.toStringTree(), equals("for"));         
  });
  
  test('testR20_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("for");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r20();
    expect(ret.tree.toStringTree(), equals("FOR"));         
  });
  
  
  test('testR21_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("for");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r21();
    expect(ret.tree.toStringTree(), equals("BLOCK"));         
  });
  
  test('testR22_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("for");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r22();
    expect(ret.tree.toStringTree(), equals("for"));         
  });
  
  test('testR23_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("for");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r23();
    expect(ret.tree.toStringTree(), equals("FOR"));         
  });
  
  test('testR24_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("fooze 1 + 2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r24();
    expect(ret.tree.toStringTree(), equals("(fooze (+ 1 2))"));         
  });
  
  test('testR25_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("fooze, fooze 1 + 2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    var ret = parser.r25();
    expect(ret.tree.toStringTree(), equals("(fooze (+ 1 2))"));         
  });
  
  test('testR26_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("fooze, fooze2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r26();
    expect(ret.tree.toStringTree(), equals("(BLOCK fooze fooze2)"));         
  });
  
  test('testR27_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("fooze 1 + 2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r27();
    expect(ret.tree.toStringTree(), equals("(fooze (fooze (+ 1 2)))"));         
  });
  
  test('testR28_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("foo28a");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r28();
    expect(ret.tree, equals(null));      
  });
  
  test('testR29_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream);     
    expectThrow(parser.r29);
  });
  
  test('testR31a_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("public int gnurz = 1 + 2;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream);   
    
    parser.flag = 0;
    var ret = parser.r31();
    expect(ret.tree.toStringTree()
        ,equals("(VARDEF gnurz public int (+ 1 2))"));      
  });
  
  test('testR31b_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("public int gnurz = 1 + 2;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream);   
    
    parser.flag = 1;
    var ret = parser.r31();
    expect(ret.tree.toStringTree()
        ,equals("(VARIABLE gnurz public int (+ 1 2))"));      
  });
  
  test('testR31c_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("public int gnurz = 1 + 2;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream);   
    
    parser.flag = 2;
    var ret = parser.r31();
    expect(ret.tree.toStringTree()
        , equals("(FIELD gnurz public int (+ 1 2))"));      
  });
  
  test('test32a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz 32");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    parser.flag = 2;
    var ret = parser.r32(1);
    expect(ret.tree.toStringTree(), equals("gnurz"));         
  });
  
  test('test32b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz 32");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    parser.flag = 2;
    var ret = parser.r32(2);
    expect(ret.tree.toStringTree(), equals("32"));         
  });
  
  test('test32c_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz 32");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    parser.flag = 2;
    var ret = parser.r32(3);
    expect(ret.tree, equals(null));       
  });
  
  test('test33_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("public private fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    parser.flag = 2;
    var ret = parser.r33();
    expect(ret.tree.toStringTree(), equals("fooze"));         
  }); 
  
  test('test34a_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("public class gnurz { fooze fooze2 }");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r34();
    expect(ret.tree.toStringTree()
        , equals("(class gnurz public fooze fooze2)"));         
  });
    
  test('test34b_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("public class gnurz "
          "extends bool implements int, bool { fooze fooze2 }");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r34();
    expect(ret.tree.toStringTree()
        , equals("(class gnurz public (extends "
          "bool) (implements int bool) fooze fooze2)"));         
  });
  
  test('testR35_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("{ extends }");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream);     
    expectThrow(parser.r35);
  });
  
  test('test36a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("if ( 1 + 2 ) fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r36();
    expect(ret.tree.toStringTree(), equals("(if (EXPR (+ 1 2)) fooze)"));         
  });
  
  test('test36b_t042ast', () {
    ANTLRStringStream cstream = 
        new ANTLRStringStream("if ( 1 + 2 ) fooze else fooze2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r36();
    expect(ret.tree.toStringTree(), equals("(if (EXPR (+ 1 2)) fooze fooze2)"));         
  });
  
  test('test37_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1 + 2 + 3");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r37();
    expect(ret.tree.toStringTree(), equals("(+ (+ 1 2) 3)"));         
  });
  
  test('test38_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1 + 2 + 3");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r38();
    expect(ret.tree.toStringTree(), equals("(+ (+ 1 2) 3)"));         
  });
  
  test('test39a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz[1]");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r39();
    expect(ret.tree.toStringTree(), equals("(INDEX gnurz 1)"));         
  });
  
  test('test39b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz(2)");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r39();
    expect(ret.tree.toStringTree(), equals("(CALL gnurz 2)"));         
  });
  
  test('test39c_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz.gnurz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r39();
    expect(ret.tree.toStringTree(), equals("(FIELDACCESS gnurz gnurz)"));         
  });
  
  test('test39d_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz.gnarz.gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r39();
    expect(ret.tree.toStringTree()
        , equals("(FIELDACCESS (FIELDACCESS gnurz gnarz) gnorz)"));         
  });
  
  test('test40_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1 + 2 + 3;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r40();
    expect(ret.tree.toStringTree(), equals("(+ 1 2 3)"));         
  });
  
  test('test41_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("1 + 2 + 3;");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r41();
    expect(ret.tree.toStringTree(), equals("(3 (2 1))"));         
  });
  
  test('test42_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r42();
    expect(ret.tree.toStringTree(), equals("gnurz gnarz gnorz"));         
  });
  
  test('test43_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r43();
    expect(ret.res
        , equals(["gnurz", "gnarz", "gnorz"]));         
  });
  
  test('test44_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r44();
    expect(ret.tree.toStringTree(), equals("(gnorz (gnarz gnurz))"));         
  });
  
  test('test45_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r45();
    expect(ret.tree.toStringTree(), equals("gnurz"));         
  });
  
  test('test46_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r46();
    expect(ret.res
        , equals(["gnurz", "gnarz", "gnorz"]));         
  });
  
  test('test47_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r47();
    expect(ret.tree.toStringTree(), equals("gnurz gnarz gnorz"));         
  });
  
  test('test48_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz, gnarz, gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r48();
    expect(ret.tree.toStringTree(), equals("gnurz gnarz gnorz"));         
  });
  
  test('test49_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz gnorz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r49();
    expect(ret.tree.toStringTree(), equals("(gnurz gnorz)"));         
  });
  
  test('test50_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r50();
    expect(ret.tree.toStringTree(), equals("(1.0 gnurz)"));         
  });
  
  test('test51_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurza gnurzb gnurzc");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r51();
    expect(ret.tree.toStringTree(), equals("gnurza gnurzb gnurzc"));         
  });
  
  test('test52_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r52();
    expect(ret.tree.toStringTree(), equals("gnurz"));         
  });
  
  test('test53_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurz");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r53();
    expect(ret.tree.toStringTree(), equals("gnurz"));         
  });
  
  test('test54_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("gnurza 1 + 2 gnurzb");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r54();
    expect(ret.tree.toStringTree(), equals("(+ 1 2)"));         
  });
  
  test('test55a_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("public private 1 + 2");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r55();
    expect(ret.tree.toStringTree(), equals("public private (+ 1 2)"));         
  });
  
  test('test55b_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("public fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r55();
    expect(ret.tree.toStringTree(), equals("public fooze"));         
  });
  
  test('test56_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("a b c d");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r56();
    expect(ret.tree.toStringTree(), equals("foo"));         
  });
  
  test('test57_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("a b c d");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r57();
    expect(ret.tree.toStringTree(), equals("foo"));         
  });
  
  test('test59_t042ast', () {
    ANTLRStringStream cstream = new ANTLRStringStream("a b c fooze");
    t042astLexer lexer = new t042astLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t042astParser parser = new t042astParser(tstream); 
    
    var ret = parser.r59();
    expect(ret.tree.toStringTree(), equals("(a fooze) (b fooze) (c fooze)"));         
  });
}

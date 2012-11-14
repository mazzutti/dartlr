// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library t059debug_test;


import "package:unittest/unittest.dart";
import "package:dartlr/vm_config.dart";
import "package:dartlr/dartlr.dart";

import "../out/t059debug1Lexer.dart";
import "../out/t059debug1Parser.dart";
import "../out/t059debug2Lexer.dart";
import "../out/t059debug2Parser.dart";
import "../out/t059debug3Lexer.dart";
import "../out/t059debug3Parser.dart";
import "../out/t059debug4Lexer.dart";
import "../out/t059debug4Parser.dart";
import "../out/t059debug5Lexer.dart";
import "../out/t059debug5Parser.dart";
import "../out/t059debug6Lexer.dart";
import "../out/t059debug6Parser.dart";
import "../out/t059debug7Lexer.dart";
import "../out/t059debug7Parser.dart";
import "../out/t059debug8Lexer.dart";
import "../out/t059debug8Parser.dart";
import "../out/t059debug9Lexer.dart";
import "../out/t059debug9Parser.dart";
import "../out/t059debug10Lexer.dart";
import "../out/t059debug10Parser.dart";
import "../out/t059debug11Lexer.dart";
import "../out/t059debug11Parser.dart" as d11;
import "../out/t059debug12Lexer.dart";
import "../out/t059debug12Parser.dart" as d12;

main() {   
  useVmConfiguration();
  
  test("testBasicParser_t059debug", () {    
    List<String> expected = [
      "enterRule, t059debug1.g, a",
      "location, 5, 0",
      "enterAlt, 1",
      "location, 5, 5",
      "LT, 1, 4, 0, 1, 0, a",
      "LT, 1, 4, 0, 1, 0, a",
      "consumeToken, 0, 4, 0, 1, 0, a",
      "location, 5, 8", 
      "LT, 1, -1, 0, 1, 1, <EOF>",
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "consumeToken, 1, -1, 0, 1, 1, <EOF>",
      "location, 5, 10", 
      "exitRule, t059debug1.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a");
    t059debug1Lexer lexer = new t059debug1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    RecordDebugEventListener listener = new RecordDebugEventListener();
    t059debug1Parser parser = new t059debug1Parser(tstream, listener);
    parser.a();
    expect(listener.events, equals(expected));
  }); 
  
  asyncTest("testSocketProxy_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug1.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 5, 8", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "consumeToken, 1, -1, 0, 1, 1, <EOF>", 
      "location, 5, 10", 
      "exitRule, t059debug1.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a");
    t059debug1Lexer lexer = new t059debug1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug1Parser parser;
    parser = new t059debug1Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
         expect(listener.events, equals(expected));
         callbackDone();
      });
  }); 
  
  asyncTest("testRecognitionException_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug1.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 5, 99, 1, 1,  ",
      "location, 5, 8", 
      "LT, 1, 4, 0, 1, 2, b", 
      "LT, 1, 4, 0, 1, 2, b", 
      "LT, 2, -1, 0, 1, 3, <EOF>", 
      "LT, 1, 4, 0, 1, 2, b", 
      "LT, 1, 4, 0, 1, 2, b", 
      "beginResync", 
      "consumeToken, 2, 4, 0, 1, 2, b", 
      "endResync", 
      "exception, UnwantedTokenException, 2, 1, 2", 
      "LT, 1, -1, 0, 1, 3, <EOF>", 
      "consumeToken, 3, -1, 0, 1, 3, <EOF>", 
      "location, 5, 10", 
      "exitRule, t059debug1.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a b");
    t059debug1Lexer lexer = new t059debug1Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug1Parser parser;
    parser = new t059debug1Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  }); 
  
  asyncTest("testSemPred_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug2.g, a",
      "location, 5, 0",
      "enterAlt, 1", 
      "location, 5, 5", 
      "semanticPredicate, true, true", 
      "location, 5, 13", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 5, 16", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "consumeToken, 1, -1, 0, 1, 1, <EOF>", 
      "location, 5, 18", 
      "exitRule, t059debug2.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a");
    t059debug2Lexer lexer = new t059debug2Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug2Parser parser;
    parser = new t059debug2Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testPositiveClosureBlock_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug3.g, a", 
      "location, 5, 1", 
      "enterAlt, 1", 
      "location, 5, 6", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 6, 99, 1, 1,  ", 
      "location, 5, 9", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 9", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "consumeToken, 2, 5, 0, 1, 2, 1", 
      "consumeHiddenToken, 3, 6, 99, 1, 3,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 4, b", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 9", 
      "LT, 1, 4, 0, 1, 4, b", 
      "LT, 1, 4, 0, 1, 4, b", 
      "consumeToken, 4, 4, 0, 1, 4, b", 
      "consumeHiddenToken, 5, 6, 99, 1, 5,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 6, c", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 9", 
      "LT, 1, 4, 0, 1, 6, c", 
      "LT, 1, 4, 0, 1, 6, c", 
      "consumeToken, 6, 4, 0, 1, 6, c", 
      "consumeHiddenToken, 7, 6, 99, 1, 7,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 9", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "consumeToken, 8, 5, 0, 1, 8, 3", 
      "enterDecision, 1, false", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "exitDecision, 1", 
      "exitSubRule, 1", 
      "location, 5, 23", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "consumeToken, 9, -1, 0, 1, 9, <EOF>", 
      "location, 5, 25", 
      "exitRule, t059debug3.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a 1 b c 3");
    t059debug3Lexer lexer = new t059debug3Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug3Parser parser;
    parser = new t059debug3Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testClosureBlock_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug4.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 6, 99, 1, 1,  ", 
      "location, 5, 8", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 8", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "consumeToken, 2, 5, 0, 1, 2, 1", 
      "consumeHiddenToken, 3, 6, 99, 1, 3,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 4, b", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 8", 
      "LT, 1, 4, 0, 1, 4, b", 
      "LT, 1, 4, 0, 1, 4, b", 
      "consumeToken, 4, 4, 0, 1, 4, b", 
      "consumeHiddenToken, 5, 6, 99, 1, 5,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 6, c", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 8", 
      "LT, 1, 4, 0, 1, 6, c", 
      "LT, 1, 4, 0, 1, 6, c", 
      "consumeToken, 6, 4, 0, 1, 6, c", 
      "consumeHiddenToken, 7, 6, 99, 1, 7,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 5, 8",
      "LT, 1, 5, 0, 1, 8, 3", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "consumeToken, 8, 5, 0, 1, 8, 3", 
      "enterDecision, 1, false", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "exitDecision, 1", 
      "exitSubRule, 1", 
      "location, 5, 22", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "consumeToken, 9, -1, 0, 1, 9, <EOF>", 
      "location, 5, 24", 
      "exitRule, t059debug4.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a 1 b c 3");
    t059debug4Lexer lexer = new t059debug4Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug4Parser parser;
    parser = new t059debug4Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testMismatchedSetException_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug5.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 5, 8", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "exception, MismatchedSetException, 1, 1, 1", 
      "exception, MismatchedSetException, 1, 1, 1", 
      "beginResync", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "endResync", 
      "location, 5, 23", 
      "exitRule, t059debug5.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a");
    t059debug5Lexer lexer = new t059debug5Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug5Parser parser;
    parser = new t059debug5Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testBlock_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug6.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 6, 99, 1, 1,  ", 
      "location, 5, 8", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "exitDecision, 1", 
      "enterAlt, 2", 
      "location, 5, 14", 
      "enterRule, t059debug6.g, c", 
      "location, 7, 0", 
      "enterAlt, 1", 
      "location, 7, 5", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "consumeToken, 2, 5, 0, 1, 2, 1", 
      "location, 7, 7", 
      "exitRule, t059debug6.g, c", 
      "exitSubRule, 1", 
      "location, 5, 18", 
      "LT, 1, -1, 0, 1, 3, <EOF>", 
      "LT, 1, -1, 0, 1, 3, <EOF>", 
      "consumeToken, 3, -1, 0, 1, 3, <EOF>", 
      "location, 5, 20", 
      "exitRule, t059debug6.g, a", 
      "terminate"      
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a 1");
    t059debug6Lexer lexer = new t059debug6Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug6Parser parser;
    parser = new t059debug6Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {        
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testNoViableAlt_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug7.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "LT, 1, 5, 0, 1, 0, a", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 7, 99, 1, 1,  ", 
      "location, 5, 8", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 2, !", 
      "LT, 1, 4, 0, 1, 2, !", 
      "LT, 1, 4, 0, 1, 2, !", 
      "exception, NoViableAltException, 2, 1, 2", 
      "exitDecision, 1", 
      "exitSubRule, 1", 
      "exception, NoViableAltException, 2, 1, 2", 
      "beginResync", 
      "LT, 1, 4, 0, 1, 2, !", 
      "consumeToken, 2, 4, 0, 1, 2, !", 
      "LT, 1, -1, 0, 1, 3, <EOF>", 
      "endResync", 
      "location, 5, 20", 
      "exitRule, t059debug7.g, a", 
      "terminate"  
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a !");
    t059debug7Lexer lexer = new t059debug7Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug7Parser parser;
    parser = new t059debug7Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testRuleBlock_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug8.g, a", 
      "location, 5, 0", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 0, 1", 
      "exitDecision, 1", 
      "enterAlt, 2", 
      "location, 5, 9", 
      "enterRule, t059debug8.g, c", 
      "location, 7, 0", 
      "enterAlt, 1", 
      "location, 7, 5", 
      "LT, 1, 5, 0, 1, 0, 1", 
      "LT, 1, 5, 0, 1, 0, 1", 
      "consumeToken, 0, 5, 0, 1, 0, 1", 
      "location, 7, 7", 
      "exitRule, t059debug8.g, c", 
      "location, 5, 9", 
      "exitRule, t059debug8.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("1");
    t059debug8Lexer lexer = new t059debug8Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug8Parser parser;
    parser = new t059debug8Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testRuleBlockSingleAlt_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug9.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "enterRule, t059debug9.g, b", 
      "location, 6, 0", 
      "enterAlt, 1",
      "location, 6, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 6, 6", 
      "exitRule, t059debug9.g, b", 
      "location, 5, 5", 
      "exitRule, t059debug9.g, a", 
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a");
    t059debug9Lexer lexer = new t059debug9Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug9Parser parser;
    parser = new t059debug9Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testBlockSingleAlt_t059debug", 1, () { 
    List<String> expected = [
    "enterRule, t059debug10.g, a", 
    "location, 5, 0", 
    "enterAlt, 1", 
    "location, 5, 5", 
    "enterAlt, 1", 
    "location, 5, 7", 
    "enterRule, t059debug10.g, b", 
    "location, 6, 0", 
    "enterAlt, 1", 
    "location, 6, 5", 
    "LT, 1, 4, 0, 1, 0, a", 
    "LT, 1, 4, 0, 1, 0, a",
    "consumeToken, 0, 4, 0, 1, 0, a", 
    "location, 6, 6", 
    "exitRule, t059debug10.g, b", 
    "location, 5, 9", 
    "exitRule, t059debug10.g, a", 
    "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a");
    t059debug10Lexer lexer = new t059debug10Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug10Parser parser;
    parser = new t059debug10Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        //print(listener.events);
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  asyncTest("testDFA_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug11.g, a", 
      "location, 5, 0", 
      "enterAlt, 1", 
      "location, 5, 5", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "mark, 0", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 1, !", 
      "consumeToken, 1, 4, 0, 1, 1, !", 
      "rewind, 0", 
      "exitDecision, 1", 
      "enterAlt, 2", 
      "location, 5, 11", 
      "enterRule, t059debug11.g, c", 
      "location, 7, 0", 
      "enterAlt, 1", 
      "location, 7, 5", 
      "enterSubRule, 3", 
      "enterDecision, 3, false", 
      "LT, 1, 5, 0, 1, 0, a", 
      "exitDecision, 3", 
      "enterAlt, 1", 
      "location, 7, 5", 
      "LT, 1, 5, 0, 1, 0, a", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "enterDecision, 3, false", 
      "LT, 1, 4, 0, 1, 1, !",
      "exitDecision, 3", 
      "exitSubRule, 3", 
      "location, 7, 9", 
      "LT, 1, 4, 0, 1, 1, !", 
      "LT, 1, 4, 0, 1, 1, !", 
      "consumeToken, 1, 4, 0, 1, 1, !",
      "location, 7, 12", 
      "exitRule, t059debug11.g, c", 
      "exitSubRule, 1", 
      "location, 5, 15", 
      "LT, 1, -1, 0, 1, 2, <EOF>", 
      "LT, 1, -1, 0, 1, 2, <EOF>",
      "consumeToken, 2, -1, 0, 1, 2, <EOF>", 
      "location, 5, 17", 
      "exitRule, t059debug11.g, a",
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a!");
    t059debug11Lexer lexer = new t059debug11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    d11.t059debug11Parser parser;
    parser = new d11.t059debug11Parser.async(tstream, callback:() =>  parser.a());
    var listener = new RecordDebugEventListener();
    var remoteListener = new RemoteDebugEventSocketListener(
      listener, "127.0.0.1", callback:() {
        //print(listener.events);
        expect(listener.events, equals(expected));
        callbackDone();
      });
  });
  
  test("testBasicAST_t059debug", () { 
    List<String> expected = [
      "LT, 1, 5, 0, 1, 0, a", 
      "enterRule, t059debug12.g, a", 
      "location, 6, 0", 
      "enterAlt, 1", 
      "location, 6, 5", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "mark, 0", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 1, !", 
      "consumeToken, 1, 4, 0, 1, 1, !", 
      "rewind, 0", 
      "exitDecision, 1", 
      "enterAlt, 2", 
      "location, 6, 11", 
      "LT, 1, 5, 0, 1, 0, a", 
      "enterRule, t059debug12.g, c", 
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "enterSubRule, 3", 
      "enterDecision, 3, false", 
      "LT, 1, 5, 0, 1, 0, a", 
      "exitDecision, 3", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 5, 0, 1, 0, a", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "enterDecision, 3, false", 
      "LT, 1, 4, 0, 1, 1, !", 
      "exitDecision, 3", 
      "exitSubRule, 3", 
      "location, 8, 9", 
      "LT, 1, 4, 0, 1, 1, !", 
      "LT, 1, 4, 0, 1, 1, !", 
      "consumeToken, 1, 4, 0, 1, 1, !", 
      "location, 8, 17", 
      "location, 8, 19", 
      "location, 8, 24", 
      "location, 8, 24", 
      "LT, -1, 4, 0, 1, 1, !", 
      "location, 8, 27", 
      "exitRule, t059debug12.g, c", 
      "exitSubRule, 1", 
      "location, 6, 18", 
      "LT, 1, -1, 0, 1, 2, <EOF>", 
      "LT, 1, -1, 0, 1, 2, <EOF>", 
      "consumeToken, 2, -1, 0, 1, 2, <EOF>",
      "LT, -1, -1, 0, 1, 2, <EOF>", 
      "location, 6, 18", 
      "exitRule, t059debug12.g, a", 
      "terminate"
    ];   
      
    ANTLRStringStream cstream = new ANTLRStringStream("a!");
    t059debug12Lexer lexer = new t059debug12Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    RecordDebugEventListener listener = new RecordDebugEventListener();
    d12.t059debug12Parser parser = new d12.t059debug12Parser(tstream, listener);
    parser.a();
    expect(listener.events, equals(expected));    
  });
}

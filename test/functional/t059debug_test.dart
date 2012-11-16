// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t059debug1Lexer.dart";
part "../out/t059debug1Parser.dart";
part "../out/t059debug2Lexer.dart";
part "../out/t059debug2Parser.dart";
part "../out/t059debug3Lexer.dart";
part "../out/t059debug3Parser.dart";
part "../out/t059debug4Lexer.dart";
part "../out/t059debug4Parser.dart";
part "../out/t059debug5Lexer.dart";
part "../out/t059debug5Parser.dart";
part "../out/t059debug6Lexer.dart";
part "../out/t059debug6Parser.dart";
part "../out/t059debug7Lexer.dart";
part "../out/t059debug7Parser.dart";
part "../out/t059debug8Lexer.dart";
part "../out/t059debug8Parser.dart";
part "../out/t059debug9Lexer.dart";
part "../out/t059debug9Parser.dart";
part "../out/t059debug10Lexer.dart";
part "../out/t059debug10Parser.dart";
part "../out/t059debug11Lexer.dart";
part "../out/t059debug11Parser.dart";
part "../out/t059debug12Lexer.dart";
part "../out/t059debug12Parser.dart";

main() {   
  
  test("testBasicParser_t059debug", () {    
    List<String> expected = [
      "enterRule, t059debug1.g, a",
      "location, 8, 0",
      "enterAlt, 1",
      "location, 8, 5",
      "LT, 1, 4, 0, 1, 0, a",
      "LT, 1, 4, 0, 1, 0, a",
      "consumeToken, 0, 4, 0, 1, 0, a",
      "location, 8, 8", 
      "LT, 1, -1, 0, 1, 1, <EOF>",
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "consumeToken, 1, -1, 0, 1, 1, <EOF>",
      "location, 8, 10", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 8, 8", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "consumeToken, 1, -1, 0, 1, 1, <EOF>", 
      "location, 8, 10", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 5, 99, 1, 1,  ",
      "location, 8, 8", 
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
      "location, 8, 10", 
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
        expect(listener.events, orderedEquals(expected));
        callbackDone();
      });
  }); 
  
  asyncTest("testSemPred_t059debug", 1, () { 
    List<String> expected = [
      "enterRule, t059debug2.g, a",
      "location, 8, 0",
      "enterAlt, 1", 
      "location, 8, 5", 
      "semanticPredicate, true, true", 
      "location, 8, 13", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 8, 16", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "consumeToken, 1, -1, 0, 1, 1, <EOF>", 
      "location, 8, 18", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 6, 99, 1, 1,  ", 
      "location, 8, 8", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "consumeToken, 2, 5, 0, 1, 2, 1", 
      "consumeHiddenToken, 3, 6, 99, 1, 3,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 4, b", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 4, 0, 1, 4, b", 
      "LT, 1, 4, 0, 1, 4, b", 
      "consumeToken, 4, 4, 0, 1, 4, b", 
      "consumeHiddenToken, 5, 6, 99, 1, 5,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 6, c", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 4, 0, 1, 6, c", 
      "LT, 1, 4, 0, 1, 6, c", 
      "consumeToken, 6, 4, 0, 1, 6, c", 
      "consumeHiddenToken, 7, 6, 99, 1, 7,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "consumeToken, 8, 5, 0, 1, 8, 3", 
      "enterDecision, 1, false", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "exitDecision, 1", 
      "exitSubRule, 1", 
      "location, 8, 22", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "consumeToken, 9, -1, 0, 1, 9, <EOF>", 
      "location, 8, 24", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 6, 99, 1, 1,  ", 
      "location, 8, 8", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "consumeToken, 2, 5, 0, 1, 2, 1", 
      "consumeHiddenToken, 3, 6, 99, 1, 3,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 4, b", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 4, 0, 1, 4, b", 
      "LT, 1, 4, 0, 1, 4, b", 
      "consumeToken, 4, 4, 0, 1, 4, b", 
      "consumeHiddenToken, 5, 6, 99, 1, 5,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 4, 0, 1, 6, c", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8", 
      "LT, 1, 4, 0, 1, 6, c", 
      "LT, 1, 4, 0, 1, 6, c", 
      "consumeToken, 6, 4, 0, 1, 6, c", 
      "consumeHiddenToken, 7, 6, 99, 1, 7,  ", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "exitDecision, 1", 
      "enterAlt, 1", 
      "location, 8, 8",
      "LT, 1, 5, 0, 1, 8, 3", 
      "LT, 1, 5, 0, 1, 8, 3", 
      "consumeToken, 8, 5, 0, 1, 8, 3", 
      "enterDecision, 1, false", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "exitDecision, 1", 
      "exitSubRule, 1", 
      "location, 8, 22", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "LT, 1, -1, 0, 1, 9, <EOF>", 
      "consumeToken, 9, -1, 0, 1, 9, <EOF>", 
      "location, 8, 24", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 8, 8", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "exception, MismatchedSetException, 1, 1, 1", 
      "exception, MismatchedSetException, 1, 1, 1", 
      "beginResync", 
      "LT, 1, -1, 0, 1, 1, <EOF>", 
      "endResync", 
      "location, 8, 23", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 6, 99, 1, 1,  ", 
      "location, 8, 8", 
      "enterSubRule, 1", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "exitDecision, 1", 
      "enterAlt, 2", 
      "location, 8, 14", 
      "enterRule, t059debug6.g, c", 
      "location, 10, 0", 
      "enterAlt, 1", 
      "location, 10, 5", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "LT, 1, 5, 0, 1, 2, 1", 
      "consumeToken, 2, 5, 0, 1, 2, 1", 
      "location, 10, 7", 
      "exitRule, t059debug6.g, c", 
      "exitSubRule, 1", 
      "location, 8, 18", 
      "LT, 1, -1, 0, 1, 3, <EOF>", 
      "LT, 1, -1, 0, 1, 3, <EOF>", 
      "consumeToken, 3, -1, 0, 1, 3, <EOF>", 
      "location, 8, 20", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "LT, 1, 5, 0, 1, 0, a", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "consumeHiddenToken, 1, 7, 99, 1, 1,  ", 
      "location, 8, 8", 
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
      "location, 8, 20", 
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
      "location, 8, 0", 
      "enterDecision, 1, false", 
      "LT, 1, 5, 0, 1, 0, 1", 
      "exitDecision, 1", 
      "enterAlt, 2", 
      "location, 8, 9", 
      "enterRule, t059debug8.g, c", 
      "location, 10, 0", 
      "enterAlt, 1", 
      "location, 10, 5", 
      "LT, 1, 5, 0, 1, 0, 1", 
      "LT, 1, 5, 0, 1, 0, 1", 
      "consumeToken, 0, 5, 0, 1, 0, 1", 
      "location, 10, 7", 
      "exitRule, t059debug8.g, c", 
      "location, 8, 9", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
      "enterRule, t059debug9.g, b", 
      "location, 9, 0", 
      "enterAlt, 1",
      "location, 9, 5", 
      "LT, 1, 4, 0, 1, 0, a", 
      "LT, 1, 4, 0, 1, 0, a", 
      "consumeToken, 0, 4, 0, 1, 0, a", 
      "location, 9, 6", 
      "exitRule, t059debug9.g, b", 
      "location, 8, 5", 
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
    "location, 8, 0", 
    "enterAlt, 1", 
    "location, 8, 5", 
    "enterAlt, 1", 
    "location, 8, 7", 
    "enterRule, t059debug10.g, b", 
    "location, 9, 0", 
    "enterAlt, 1", 
    "location, 9, 5", 
    "LT, 1, 4, 0, 1, 0, a", 
    "LT, 1, 4, 0, 1, 0, a",
    "consumeToken, 0, 4, 0, 1, 0, a", 
    "location, 9, 6", 
    "exitRule, t059debug10.g, b", 
    "location, 8, 9", 
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
      "location, 8, 0", 
      "enterAlt, 1", 
      "location, 8, 5", 
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
      "location, 8, 11", 
      "enterRule, t059debug11.g, c", 
      "location, 10, 0", 
      "enterAlt, 1", 
      "location, 10, 5", 
      "enterSubRule, 3", 
      "enterDecision, 3, false", 
      "LT, 1, 5, 0, 1, 0, a", 
      "exitDecision, 3", 
      "enterAlt, 1", 
      "location, 10, 5", 
      "LT, 1, 5, 0, 1, 0, a", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "enterDecision, 3, false", 
      "LT, 1, 4, 0, 1, 1, !",
      "exitDecision, 3", 
      "exitSubRule, 3", 
      "location, 10, 9", 
      "LT, 1, 4, 0, 1, 1, !", 
      "LT, 1, 4, 0, 1, 1, !", 
      "consumeToken, 1, 4, 0, 1, 1, !",
      "location, 10, 12", 
      "exitRule, t059debug11.g, c", 
      "exitSubRule, 1", 
      "location, 8, 15", 
      "LT, 1, -1, 0, 1, 2, <EOF>", 
      "LT, 1, -1, 0, 1, 2, <EOF>",
      "consumeToken, 2, -1, 0, 1, 2, <EOF>", 
      "location, 8, 17", 
      "exitRule, t059debug11.g, a",
      "terminate"
    ];
    
    ANTLRStringStream cstream = new ANTLRStringStream("a!");
    t059debug11Lexer lexer = new t059debug11Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t059debug11Parser parser;
    parser = new t059debug11Parser.async(tstream, callback:() =>  parser.a());
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
      "location, 9, 0", 
      "enterAlt, 1", 
      "location, 9, 5", 
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
      "location, 9, 11", 
      "LT, 1, 5, 0, 1, 0, a", 
      "enterRule, t059debug12.g, c", 
      "location, 11, 0", 
      "enterAlt, 1", 
      "location, 11, 5", 
      "enterSubRule, 3", 
      "enterDecision, 3, false", 
      "LT, 1, 5, 0, 1, 0, a", 
      "exitDecision, 3", 
      "enterAlt, 1", 
      "location, 11, 5", 
      "LT, 1, 5, 0, 1, 0, a", 
      "LT, 1, 5, 0, 1, 0, a", 
      "consumeToken, 0, 5, 0, 1, 0, a", 
      "enterDecision, 3, false", 
      "LT, 1, 4, 0, 1, 1, !", 
      "exitDecision, 3", 
      "exitSubRule, 3", 
      "location, 11, 9", 
      "LT, 1, 4, 0, 1, 1, !", 
      "LT, 1, 4, 0, 1, 1, !", 
      "consumeToken, 1, 4, 0, 1, 1, !", 
      "location, 11, 17", 
      "location, 11, 19", 
      "location, 11, 24", 
      "location, 11, 24", 
      "LT, -1, 4, 0, 1, 1, !", 
      "location, 11, 27", 
      "exitRule, t059debug12.g, c", 
      "exitSubRule, 1", 
      "location, 9, 18", 
      "LT, 1, -1, 0, 1, 2, <EOF>", 
      "LT, 1, -1, 0, 1, 2, <EOF>", 
      "consumeToken, 2, -1, 0, 1, 2, <EOF>",
      "LT, -1, -1, 0, 1, 2, <EOF>", 
      "location, 9, 18", 
      "exitRule, t059debug12.g, a", 
      "terminate"
    ];   
      
    ANTLRStringStream cstream = new ANTLRStringStream("a!");
    t059debug12Lexer lexer = new t059debug12Lexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    RecordDebugEventListener listener = new RecordDebugEventListener();
    t059debug12Parser parser = new t059debug12Parser(tstream, listener);
    parser.a();
    expect(listener.events, equals(expected));    
  });
}

// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_tests;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

part "../out/t012lexerXML.dart";

main() {  
  
  test('testValid_t012lexerXML', () {
    
    String xmlInput =
      "<?xml version='1.0'?>\n"
      "<!DOCTYPE component [\n"
      "<!ELEMENT component (PCDATA|sub)*>\n"
      "<!ATTLIST component\n"
      "          attr CDATA #IMPLIED\n"
      "          attr2 CDATA #IMPLIED\n"
      ">\n"
      "<!ELMENT sub EMPTY>\n"
      "\n"
      "]>\n"
      "<component attr=\"val'ue\" attr2='val\"ue'>\n"
      "<!-- This is a comment -->\n"
      "Text\n"
      "<![CDATA[huhu]]>\n"
      "öäüß\n"
      "&amp;\n"
      "&lt;\n"
      "<?xtal cursor='11'?>\n"
      "<sub/>\n"
      "<sub></sub>\n"
      "</component>\n"
    ;
    
    String xmlOutput = 
      "XML declaration\n"
      "Attr: version='1.0'\n"
      "ROOTELEMENT: component\n"
      "INTERNAL DTD: [\n"
      "<!ELEMENT component (PCDATA|sub)*>\n"
      "<!ATTLIST component\n"
      "          attr CDATA #IMPLIED\n"
      "          attr2 CDATA #IMPLIED\n"
      ">\n"
      "<!ELMENT sub EMPTY>\n"
      "\n"
      "]\n"
      "Start Tag: component\n"
      "Attr: attr=\"val'ue\"\n"
      "Attr: attr2='val\"ue'\n"
      "PCDATA: \"\n"
      "\"\n"
      "Comment: \"<!-- This is a comment -->\"\n"
      "PCDATA: \"\n"
      "Text\n"
      "\"\n"
      "CDATA: \"<![CDATA[huhu]]>\"\n"
      "PCDATA: \"\n"
      "öäüß\n"
      "&amp;\n"
      "&lt;\n"
      "\"\n"
      "PI: xtal\n"
      "Attr: cursor='11'\n"
      "PCDATA: \"\n"
      "\"\n"
      "Empty Element: sub\n"
      "PCDATA: \"\n"
      "\"\n"
      "Start Tag: sub\n"
      "End Tag: sub\n"
      "PCDATA: \"\n"
      "\"\n"
      "End Tag: component\n"
    ;  
    ANTLRStringStream stream = new ANTLRStringStream(xmlInput);
    Lexer lexer = new t012lexerXML(stream);
    Token token;
    while (true) {
      token = lexer.nextToken();
      if (token.type == Token.EOF) break;
    }
    expect(lexer.output, equals(xmlOutput));
  });
  
  test("testMalformedInput1_t012lexerXML", () {
    String input =
        "<?xml version='1.0'?>\n"
        "<document d>\n"
        "</document>\n";
    ANTLRStringStream stream = new ANTLRStringStream(input);
    Lexer lexer = new t012lexerXML(stream);    
    Token token;
    while (true) {
      token = lexer.nextToken();
      if (token.type == Token.EOF)
        break;
    }
    String expected = "line 4:0 no viable alternative at character '<EOF>'";
    expect(lexer.reportedErrors.last, equals(expected));
  });
  
  test("testMalformedInput2_t012lexerXML", () {
    String input = 
        "<?tml version='1.0'?>\n"
        "<document>\n"
        "</document>\n";
    ANTLRStringStream stream = new ANTLRStringStream(input);
    Lexer lexer = new t012lexerXML(stream);
    Token token;
    while (true) {
      token = lexer.nextToken();
      if(token.type == Token.EOF)
        break;
    }
    String expected = "line 1:20 no viable alternative at character '>'";
    expect(lexer.reportedErrors.last, equals(expected));
  });

  test("testMalformedInput3_t012lexerXML", () {
    String input =
    "<?xml version='1.0'?>\n"
    "<docu ment attr=\"foo\">\n"
    "</document>\n";
    ANTLRStringStream stream = new ANTLRStringStream(input);
    Lexer lexer = new t012lexerXML(stream);
    Token token;
    while (true) {
      token = lexer.nextToken();
        if(token.type == Token.EOF)
          break;
    }
    String expected = "line 4:0 no viable alternative at character '<EOF>'";
    expect(lexer.reportedErrors.last, equals(expected));
  });
}
  


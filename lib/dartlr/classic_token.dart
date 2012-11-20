// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class ClassicToken implements Token {
  
  String text;
  int type;
  int line;
  int charPositionInLine;
  int channel = DEFAULT_CHANNEL;
  int tokenIndex;
  
  ClassicToken(this.type, [this.text, this.channel]);

  ClassicToken.fromToken(Token oldToken) {
    text = oldToken.text;
    type = oldToken.type;
    line = oldToken.line;
    charPositionInLine = oldToken.charPositionInLine;
    channel = oldToken.channel;
  }
  
  CharStream get inputStream => null;
  void set inputStream(CharStream input) {}
  
  String toString() {
    String channelStr = "";
    if (channel > 0)
      channelStr = ",channel=${channel}";  
    String txt = text;
    if (txt != null ) {
      txt = txt.replaceAll("\n","\\\\n");
      txt = txt.replaceAll("\r","\\\\r");
      txt = txt.replaceAll("\t","\\\\t");
    }
    else
      txt = "<no text>";   
    return "[@${tokenIndex},'$txt',<${type}>"
      "$channelStr,${line}:${charPositionInLine}]";
  }
  
  int get hashCode => type + line + charPositionInLine;
}

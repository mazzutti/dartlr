// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class ClassicToken implements Token {
  
  String _text;
  int _type;
  int _line;
  int _charPositionInLine;
  int _channel = DEFAULT_CHANNEL;
  
  /** What token number is this from 0..n-1 tokens */
  int _index;

  ClassicToken(this._type, [this._text, this._channel]);

  ClassicToken.fromToken(Token oldToken) {
    _text = oldToken.text;
    _type = oldToken.type;
    _line = oldToken.line;
    _charPositionInLine = oldToken.charPositionInLine;
    _channel = oldToken.channel;
  }

  int get type => _type;
  
  int get line => _line;
  
  int get channel => _channel;
  
  int get tokenIndex => _index;
  
  CharStream get inputStream => null;
  
  String get text => _text;

  void set line(int line) {
    _line = line;
  } 

  void set text(String text) {
    _text = text;
  }  

  int get charPositionInLine => _charPositionInLine;
  
  void set charPositionInLine(int charPositionInLine) {
    _charPositionInLine = charPositionInLine;
  } 

  void set channel(int channel) {
    _channel = channel;
  }

  void set type(int type) {
    _type = type;
  }

  void set tokenIndex(int index) {
    _index = index;
  } 

  void set inputStream(CharStream input) {}
  
  String toString() {
    String channelStr = "";
    if (_channel > 0)
      channelStr = ",channel=${_channel}";  
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
  
  int get hashCode => _type + _line + _charPositionInLine;
}

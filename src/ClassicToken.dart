// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    this._text = oldToken.text;
    this._type = oldToken.type;
    this._line = oldToken.line;
    this._charPositionInLine = oldToken.charPositionInLine;
    this._channel = oldToken.channel;
  }

  int get type() => this._type;
  
  int get line() => this._line;
  
  int get channel() => this._channel;
  
  int get tokenIndex() => this._index;
  
  CharStream get inputStream() => null;
  
  String get text() => this._text;

  void set line(int line) {
    this._line = line;
  } 

  void set text(String text) {
    this._text = text;
  }  

  void set charPositionInLine(int charPositionInLine) {
    this._charPositionInLine = charPositionInLine;
  } 

  void set channel(int channel) {
    this._channel = channel;
  }

  void set type(int type) {
    this._type = type;
  }

  void set tokenIndex(int index) {
    this._index = index;
  } 

  void set inputStream(CharStream input) {}
  
  String toString() {
    String channelStr = "";
    if (this._channel > 0)
      channelStr = ",channel=${this._channel}";  
    String txt = this.text;
    if (txt != null ) {
      txt = txt.replaceAll("\n","\\\\n");
      txt = txt.replaceAll("\r","\\\\r");
      txt = txt.replaceAll("\t","\\\\t");
    }
    else
      txt = "<no text>";   
    return "[@${this.tokenIndex},'$txt',<${this.type}>"
      "$channelStr,${this.line}:${this.charPositionInLine}]";
  }
  
  int hashCode() => this._type + this._line + this._charPositionInLine;
}

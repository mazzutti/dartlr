// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class CommonToken implements Token {
  
  int _type;
  int _line;
  int _charPositionInLine = -1;
  int _channel = Token.DEFAULT_CHANNEL;
  CharStream _input;
  
  /** We need to be able to change the text once in a while.  If
   *  this is non-null, then getText should return this.  Note that
   *  start/stop are not affected by changing this.
    */
  String _text;
  
  /** What token number is this from 0..n-1 tokens; < 0 implies invalid index */
  int _index = -1;
  
  /** The char position into the input buffer where this token starts */
  int _start;
  
  /** The char position into the input buffer where this token stops */
  int _stop;

  CommonToken(this._type, [this._text]);

  CommonToken.fromCharStream
    (this._input, this._type, this._channel, this._start, this._stop);

  CommonToken.fromToken(Token oldToken) {
    this._text = oldToken.text;
    this._type = oldToken.type;
    this._line = oldToken.line;
    this._index = oldToken.tokenIndex;
    this._charPositionInLine = oldToken.charPositionInLine;
    this._channel = oldToken.channel;
    this._input = oldToken.inputStream;
    if (oldToken is CommonToken ) {
      this._start = oldToken.dynamic.start;
      this._stop = oldToken.dynamic.stop;
    }
  }

  int get type() => this._type;
  
  int get line() => this._line;
  
  int get charPositionInLine() => this._charPositionInLine;
  
  int get channel() => this._channel;
  
  int get stopIndex() => this._stop;
  
  int get start() => this._start;
  
  int get stop() => this._stop;
  
  String get text() {
    if (this._text != null ) return this._text;    
    if (this._input == null ) return null;
    int n = this._input.size;
    if (this._start < n && this._stop < n)
      return this._input.substring(this._start, this._stop);    
    else return "<EOF>";
  }

  void set line(int line) {
    this._line = line;
  }
  
  void set input(CharStream inp) {
    this._input = inp; 
  } 
  
  void set index(int i) {
    this._index = i; 
  }
  
  void set start(int s) {
    this._start = s; 
  }
  
  void set stop(int s) {
    this._stop = s; 
  }
  
  /** Override the text for this token.  get text() will return this text
   *  rather than pulling from the buffer.  Note that this does not mean
   *  that start/stop indexes are not valid.  It means that that input
   *  was converted to a new string in the token object.
   */
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

  int get startIndex() => this._start;
  
  void set startIndex(int start) {
    this._start = start;
  }  

  void set stopIndex(int stop) {
    this._stop = stop;
  }

  int get tokenIndex() =>  this._index;

  void set tokenIndex(int index) {
    this._index = index;
  }

  CharStream get inputStream() => this._input;

  void set inputStream(CharStream input) {
    this._input = input;
  }

  String toString() {
    String channelStr = "";
    if ( channel > 0 )
      channelStr = ",channel=$channel";    
    String txt = this.text;
    if (txt != null ) {
      txt = txt.replaceAll("\n","\\\\n");
      txt = txt.replaceAll("\r","\\\\r");
      txt = txt.replaceAll("\t","\\\\t");
    }
    else 
      txt = "<no text>";    
    return "[@${this.tokenIndex},${this.startIndex}:${this.stopIndex}"
      "='$txt',<${this.type}>$channelStr,${this.line}:${this.charPositionInLine}]";
  }
  
  int hashCode() => this._type + this._line + this._charPositionInLine;
  
}

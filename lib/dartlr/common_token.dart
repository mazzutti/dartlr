// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
    _text = oldToken.text;
    _type = oldToken.type;
    _line = oldToken.line;
    _index = oldToken.tokenIndex;
    _charPositionInLine = oldToken.charPositionInLine;
    _channel = oldToken.channel;
    _input = oldToken.inputStream;
    if (oldToken is CommonToken ) {
      _start = oldToken.start;
      _stop = oldToken.stop;
    }
  }

  int get type => _type;
  
  int get line => _line;
  
  int get charPositionInLine => _charPositionInLine;
  
  int get channel => _channel;
  
  int get stopIndex => _stop;
  
  int get start => _start;
  
  int get stop => _stop;
  
  String get text {
    if (_text != null ) return _text;    
    if (_input == null ) return null;
    int n = _input.size;
    if (_start < n && _stop < n)
      return _input.substring(_start, _stop);    
    else return "<EOF>";
  }

  void set line(int line) {
    _line = line;
  }
  
  void set input(CharStream inp) {
    _input = inp; 
  } 
  
  void set index(int i) {
    _index = i; 
  }
  
  void set start(int s) {
    _start = s; 
  }
  
  void set stop(int s) {
    _stop = s; 
  }
  
  /** Override the text for this token.  get text will return this text
   *  rather than pulling from the buffer.  Note that this does not mean
   *  that start/stop indexes are not valid.  It means that that input
   *  was converted to a new string in the token object.
   */
  void set text(String text) {
    _text = text;
  } 

  void set charPositionInLine(int charPositionInLine) {
    _charPositionInLine = charPositionInLine;
  } 

  void set channel(int channel) {
    _channel = channel;
  }

  void set type(int type) {
    _type = type;
  }

  int get startIndex => _start;
  
  void set startIndex(int start) {
    _start = start;
  }  

  void set stopIndex(int stop) {
    _stop = stop;
  }

  int get tokenIndex =>  _index;

  void set tokenIndex(int index) {
    _index = index;
  }

  CharStream get inputStream => _input;

  void set inputStream(CharStream input) {
    _input = input;
  }

  String toString() {
    String channelStr = "";
    if ( channel > 0 )
      channelStr = ",channel=$channel";    
    String txt = text;
    if (txt != null ) {
      txt = txt.replaceAll("\n","\\\\n");
      txt = txt.replaceAll("\r","\\\\r");
      txt = txt.replaceAll("\t","\\\\t");
    }
    else 
      txt = "<no text>";    
    return "[@${tokenIndex},${startIndex}:${stopIndex}"
      "='$txt',<${type}>$channelStr,${line}:${charPositionInLine}]";
  }
  
  int get hashCode => _type + _line + _charPositionInLine;  
}

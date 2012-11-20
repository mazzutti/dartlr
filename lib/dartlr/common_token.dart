// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class CommonToken implements Token {
  
  int type;
  int line;
  int charPositionInLine = -1;
  int channel = Token.DEFAULT_CHANNEL;
  CharStream inputStream;
  int tokenIndex;
  
  /** We need to be able to change the text once in a while.  If
   *  this is non-null, then getText should return this.  Note that
   *  start/stop are not affected by changing this.
    */
  String _text;
  
  /** What token number is this from 0..n-1 tokens; < 0 implies invalid index */
  int _index = -1;
  
  /** The char position into the input buffer where this token starts */
  int start;
  
  /** The char position into the input buffer where this token stops */
  int stop;

  CommonToken(this.type, [this._text]);

  CommonToken.fromCharStream
    (this.inputStream, this.type, this.channel, this.start, this.stop);

  CommonToken.fromToken(Token oldToken) {
    _text = oldToken.text;
    type = oldToken.type;
    line = oldToken.line;
    _index = oldToken.tokenIndex;
    charPositionInLine = oldToken.charPositionInLine;
    channel = oldToken.channel;
    inputStream = oldToken.inputStream;
    if (oldToken is CommonToken ) {
      start = oldToken.start;
      stop = oldToken.stop;
    }
  }

  String get text {
    if (_text != null ) return _text;    
    if (inputStream == null ) return null;
    int n = inputStream.size;
    if (start < n && stop < n)
      return inputStream.substring(start, stop);    
    else return "<EOF>";
  }

  void set index(int i) {
    _index = i; 
  }
  
  
  /** Override the text for this token.  get text will return this text
   *  rather than pulling from the buffer.  Note that this does not mean
   *  that start/stop indexes are not valid.  It means that that input
   *  was converted to a new string in the token object.
   */
  void set text(String text) {
    _text = text;
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
    return "[@${tokenIndex},${start}:${stop}"
      "='$txt',<${type}>$channelStr,${line}:${charPositionInLine}]";
  }
  
  int get hashCode => type + line + charPositionInLine;  
}

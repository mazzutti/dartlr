// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

abstract class Token {
  
  static const int EOR_TOKEN_TYPE = 1;

  /** imaginary tree navigation type; traverse "get child" link */
  static const int DOWN = 2;
  
  /** imaginary tree navigation type; finish with a child list */
  static const int UP = 3;

  static const int MIN_TOKEN_TYPE = UP + 1;

  static const int EOF = CharStream.EOF;
  
  static Token EOF_TOKEN = new CommonToken(EOF);
  
  static Token INVALID_TOKEN = new CommonToken(INVALID_TOKEN_TYPE);
  
  /** In an action, a lexer rule can set token to this _SKIP_TOKEN and ANTLR
  *  will avoid creating a token for this symbol and try to fetch another.
  */
  static Token SKIP_TOKEN = new CommonToken(INVALID_TOKEN_TYPE);
  
  static const int INVALID_TOKEN_TYPE = 0;  

  /** All tokens go to the parser (unless skip() is called in that rule)
   *  on a particular "channel".  The parser tunes to a particular channel
   *  so that whitespace etc... can go to the parser on a "hidden" channel.
   */
  static const int DEFAULT_CHANNEL = 0;
    
  /** Anything on different channel than DEFAULT_CHANNEL is not parsed
   *  by parser.
   */
  static const int HIDDEN_CHANNEL = 99;

  /** Get the text of the token */
   String get text;
   void set text(String text);

   int get type;
   void set type(int ttype);
 
  /**  The line number on which this token was matched; line=1..n */
   int get line;
   void set line(int line);

  /** The index of the first character relative to the beginning of the line 0..n-1 */
   int get charPositionInLine;
   void set charPositionInLine(int pos);

   int get channel;
   void set channel(int channel);

  /** An index from 0..n-1 of the token object in the input stream.
   *  This must be valid in order to use the ANTLRWorks debugger.
   */
   int get tokenIndex;
   void set tokenIndex(int index);

  /** From what character stream was this token created?  You don't have to
   *  implement but it's nice to know where a Token comes from if you have
   *  include files etc... on the input.
   */
   CharStream get inputStream;
   void set inputStream(CharStream input);  
}

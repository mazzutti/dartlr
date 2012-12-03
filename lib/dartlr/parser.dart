// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

/** A parser for TokenStreams.  "parser grammars" result in a subclass
 *  of this.
 */
class Parser extends BaseRecognizer {
  
  TokenStream _input;
  
  Parser(TokenStream input) {   
    tokenStream = input;
  }

  Parser.fromRecognizerSharedState
    (this._input, RecognizerSharedState state) : super(state);  
  
  TokenStream get tokenStream => _input;
  
  TokenStream get input => _input;  

  String get sourceName => _input.sourceName;  

  set tokenStream(TokenStream input) {
    _input = null;
    reset();
    _input = input;
  }
  
  set input(TokenStream input) {
    _input = null;
    reset();
    _input = input;
  }
  
  reset() {
    super.reset();
    if (_input != null ) {
      _input.seek(0);
    }
  }
  
  String get recognizerClassName => "Parser";

  _getCurrentInputSymbol(IntStream input) => _input.LT(1);

  _getMissingSymbol(IntStream input, 
      RecognitionException e, int expectedTokenType, BitSet follow) {
    String tokenText = null;
    if (expectedTokenType == Token.EOF) 
      tokenText = "<missing EOF>";
    else       
      tokenText = "<missing ${tokenNames[expectedTokenType]}>";
    CommonToken t = new CommonToken(expectedTokenType, tokenText);
    Token current = _input.LT(1);
    if (current.type == Token.EOF)
      current = _input.LT(-1);
    t.line = current.line;
    t.charPositionInLine = current.charPositionInLine;
    t.inputStream = current.inputStream;
    t.channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;    
    return t;
  }
  
  traceIn(String ruleName, int ruleIndex, [inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = _input.LT(1);
    super.traceIn(ruleName, ruleIndex, inputSymbol);
  }

  traceOut(String ruleName, int ruleIndex, [inputSymbol]) {
    if(inputSymbol == null)
      inputSymbol = _input.LT(1);
    super.traceOut(ruleName, ruleIndex, inputSymbol);
  }
}


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A parser for TokenStreams.  "parser grammars" result in a subclass
 *  of this.
 */
class Parser extends BaseRecognizer {
  
  TokenStream _input;
  
  Parser(TokenStream input) {   
    this.tokenStream = input;
  }

  Parser.fromRecognizerSharedState
    (this._input, RecognizerSharedState state) : super(state);  
  
  TokenStream get tokenStream() => this._input;
  
  TokenStream get input() => this._input;  

  String get sourceName() => this._input.sourceName;  

  void set tokenStream(TokenStream input) {
    this._input = null;
    this.reset();
    this._input = input;
  }
  
  void set input(TokenStream input) {
    this._input = null;
    this.reset();
    this._input = input;
  }
  
  void reset() {
    super.reset();
    if (this._input != null ) {
      this._input.seek(0);
    }
  }
  
  String getRecognizerClassName() => "Parser";

  Object _getCurrentInputSymbol(IntStream input) => this._input.LT(1);

  Object _getMissingSymbol(IntStream input, 
      RecognitionException e, int expectedTokenType, BitSet follow) {
    String tokenText = null;
    if (expectedTokenType == Token.EOF) 
      tokenText = "<missing EOF>";
    else       
      tokenText = "<missing ${this.tokenNames[expectedTokenType]}>";
    CommonToken t = new CommonToken(expectedTokenType, tokenText);
    Token current = this._input.LT(1);
    if (current.type == Token.EOF)
      current = this._input.LT(-1);
    t.line = current.line;
    t.charPositionInLine = current.charPositionInLine;
    t.input = current.inputStream;
    t.channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;    
    return t;
  }
  
  void traceIn(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = this._input.LT(1);
    super.traceIn(ruleName, ruleIndex, inputSymbol);
  }

  void traceOut(String ruleName, int ruleIndex, [Object inputSymbol]) {
    if(inputSymbol == null)
      inputSymbol = this._input.LT(1);
    super.traceOut(ruleName, ruleIndex, inputSymbol);
  }
}


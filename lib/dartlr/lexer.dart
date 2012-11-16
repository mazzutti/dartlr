// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A lexer is recognizer that draws input symbols from a character stream.
 *  lexer grammars result in a subclass of this object. A Lexer object
 *  uses simplified match() and error recovery mechanisms in the interest
 *  of speed.
 */
abstract class Lexer extends BaseRecognizer implements TokenSource {
 
  /** Where is the lexer drawing characters from? */
  CharStream _input;
  
  Lexer(this._input);

  Lexer.fromRecognizerSharedState
   (this._input, RecognizerSharedState state) : super(state);
   
  CharStream get input => _input;
  
  int get HIDDEN => Token.HIDDEN_CHANNEL;

  void reset() {
    super.reset();
    if(_input != null) _input.seek(0);
    if(_state == null) return;
    _state.token = null;
    _state.type = Token.INVALID_TOKEN_TYPE;
    _state.channel = Token.DEFAULT_CHANNEL;
    _state.tokenStartCharIndex = -1;
    _state.tokenStartCharPositionInLine = -1;
    _state.tokenStartLine = -1;
    _state.text = null;
  }

  /** Return a token from this source; i.e., match a token on the char
  *  stream.
  */
  Token nextToken() {
    while(true) {
      _state.token = null;
      _state.channel = Token.DEFAULT_CHANNEL;      
      _state.tokenStartCharIndex = _input.index; 
      _state.tokenStartCharPositionInLine = _input.charPositionInLine;     
      _state.tokenStartLine = _input.line;      
      _state.text = null;
      if(_input.LA(1) == CharStream.EOF) {
        Token eof = new CommonToken.fromCharStream(_input,Token.EOF, 
            Token.DEFAULT_CHANNEL, _input.index , _input.index);
        eof.line = line;
        eof.charPositionInLine = charPositionInLine;
        return eof;
      }
      try {
        mTokens();
        if(_state.token == null){          
          emit();       
        }else if(_state.token == Token.SKIP_TOKEN)
          continue;       
        return _state.token;
      } on MismatchedRangeException catch(re) {        
        reportError(re);        
      } on MismatchedTokenException catch(re) {        
        reportError(re);        
      } on RecognitionException catch(re) {        
        reportError(re);
        recover(re);
      }
    }
  }
  
  /** Instruct the lexer to skip creating a token for current lexer rule
  *  and look for another token.  nextToken() knows to keep looking when
  *  a lexer rule finishes with token set to SKIP_TOKEN.  Recall that
  *  if token == null at end of any token rule, it creates one for you
  *  and emits it.
  */
  void skip() {
    _state.token = Token.SKIP_TOKEN;
  }
  
  /** This is the lexer entry point that sets instance var 'token' */
  void mTokens();
 
  /** Set the char stream and reset the lexer */
  void set charStream(CharStream input) {
    _input = null;
    reset();
    _input = input;
  }

  CharStream get charStream => _input;
  
  String get sourceName => _input.sourceName;

  /** Currently does not support multiple emits per nextToken invocation
   *  for efficiency reasons.  Subclass and override this method and
   *  nextToken (to push tokens into a list and pull from that list rather
   *  than a single variable as this implementation does).
   */
  Token emit([Token token]) {
    if(token == null) {
      Token t = new CommonToken.fromCharStream(_input, _state.type, 
        _state.channel, _state.tokenStartCharIndex, charIndex - 1);
      t.line = _state.tokenStartLine;
      t.text = _state.text;
      t.charPositionInLine = _state.tokenStartCharPositionInLine;
      _state.token = t;
      return t;
    }
    _state.token = token;
    return token;
  }

  void match(s) {
    if(s is String) {
      int i = 0;
      while(i < s.length) {
        if(_input.LA(1) != s.charCodeAt(i)) {
          if(_state.backtracking > 0) {
            _state.failed = true;            
            return;
          }
          MismatchedTokenException me =
            new MismatchedTokenException(s.charCodeAt(i), _input);
          recover(me);
          throw me;
        }
        i++;
        _input.consume();
        _state.failed = false;
       }
    } else if(s is int) {
      if(_input.LA(1) != s) {
        if(_state.backtracking > 0) {
          _state.failed = true;
          return;
        }
        MismatchedTokenException mte =
          new MismatchedTokenException(s, _input);
        recover(mte); 
        throw mte;
      }
      _input.consume();
      _state.failed = false;
    }    
  }

  void matchAny([IntStream input]) {
    _input.consume();
  }

  void matchRange(int a, int b) {
    if(_input.LA(1) < a || _input.LA(1) > b) {
      if(_state.backtracking > 0) {
        _state.failed = true;
        return;
      }
      MismatchedRangeException mre =
        new MismatchedRangeException(a,b,_input);
      recover(mre);
      throw mre;
    }
    _input.consume();
    _state.failed = false;
  }

  int get line => _input.line;

  int get charPositionInLine =>  _input.charPositionInLine;
  
  /** What is the index of the current character of lookahead? */
  int get charIndex => _input.index;
  
  /** Return the text matched so far for the current token or any
   *  text override.
   */
  String get text {
    if(_state.text != null)
      return _state.text;
    return _input.substring(_state.tokenStartCharIndex, charIndex - 1);
  }

  void set text(String text) {
    _state.text = text;
  }

  void reportError(RecognitionException e) {
    displayRecognitionError(tokenNames, e);
  }

  String getErrorMessage(RecognitionException e, List<String> tokenNames) {
    String msg = null;
    if(e is MismatchedTokenException) {
      MismatchedTokenException mte = e;
      msg = "mismatched character ${getCharErrorDisplay(e.c)}"
            " expecting ${getCharErrorDisplay(mte.expecting)}";
    }
    else if(e is NoViableAltException) {
      NoViableAltException nvae = e;
      msg = "no viable alternative at character ${getCharErrorDisplay(e.c)}";
    }
    else if(e is EarlyExitException) {
      EarlyExitException eee = e;
      msg = "required(...)+ loop did not match "
          "anything at character ${getCharErrorDisplay(e.c)}";
    }
    else if(e is MismatchedNotSetException) {
      MismatchedNotSetException mse = e;
      msg = "mismatched character "
          "${getCharErrorDisplay(e.c)} expecting set ${mse.expecting}";
    }
    else if(e is MismatchedSetException) {
      MismatchedSetException mse = e;
      msg = "mismatched character "
          "${getCharErrorDisplay(e.c)} expecting set ${mse.expecting}";
    }
    else if(e is MismatchedRangeException) {
      MismatchedRangeException mre = e;
      msg = "mismatched character ${getCharErrorDisplay(e.c)} expecting"
       " set ${getCharErrorDisplay(mre.a)}..${getCharErrorDisplay(mre.b)}";
    }
    else
      msg = super.getErrorMessage(e, tokenNames);   
    return msg;
  }

  static const int _CR = 13; /* \n */
  static const int _TAB = 9; /* \t */
  static const int _LF = 10; /* \r */
  String getCharErrorDisplay(int c) {
    String s = "";    
    switch(c) {
      case Token.EOF : s = "<EOF>"; break;
      case _CR: s = "\\n"; break;
      case _TAB : s = "\\t"; break;
      case _LF : s = "\\r"; break;
    }
    return (s == "")? "'${new String.fromCharCodes([c])}'": "'$s'";
  }

  /** Lexers can normally match any char in it's vocabulary after matching
   *  a token, so do the easy thing and just kill a character and hope
   *  it all works out.  You can instead use the rule invocation stack
   *  to do sophisticated error recovery if you are in a fragment rule.
   */
  void recover(RecognitionException re, [IntStream input]) {
    if(input != null)
      super.recover(re, input);
    _input.consume();
  }

  void traceIn(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = "${_input.LT(1)} line=${line}:${charPositionInLine}";
    super.traceIn(ruleName, ruleIndex, inputSymbol);
  }

  void traceOut(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = "${_input.LT(1)} line=${line}:${charPositionInLine}";
    super.traceOut(ruleName, ruleIndex, inputSymbol);
  }
}


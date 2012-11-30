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

  reset() {
    super.reset();
    if(_input != null) _input.seek(0);
    if(state == null) return;
    state.token = null;
    state.type = Token.INVALID_TOKEN_TYPE;
    state.channel = Token.DEFAULT_CHANNEL;
    state.tokenStartCharIndex = -1;
    state.tokenStartCharPositionInLine = -1;
    state.tokenStartLine = -1;
    state.text = null;
  }

  /** Return a token from this source; i.e., match a token on the char
  *  stream.
  */
  Token nextToken() {
    while(true) {
      state.token = null;
      state.channel = Token.DEFAULT_CHANNEL;      
      state.tokenStartCharIndex = _input.index; 
      state.tokenStartCharPositionInLine = _input.charPositionInLine;     
      state.tokenStartLine = _input.line;      
      state.text = null;
      if(_input.LA(1) == CharStream.EOF) {
        Token eof = new CommonToken.fromCharStream(_input,Token.EOF, 
            Token.DEFAULT_CHANNEL, _input.index , _input.index);
        eof.line = line;
        eof.charPositionInLine = charPositionInLine;
        return eof;
      }
      try {
        mTokens();
        if(state.token == null){          
          emit();       
        }else if(state.token == Token.SKIP_TOKEN)
          continue;       
        return state.token;
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
  skip() {
    state.token = Token.SKIP_TOKEN;
  }
  
  /** This is the lexer entry point that sets instance var 'token' */
  mTokens();
 
  /** Set the char stream and reset the lexer */
  set charStream(CharStream input) {
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
      Token t = new CommonToken.fromCharStream(_input, state.type, 
        state.channel, state.tokenStartCharIndex, charIndex - 1);
      t.line = state.tokenStartLine;
      t.text = state.text;
      t.charPositionInLine = state.tokenStartCharPositionInLine;
      state.token = t;
      return t;
    }
    state.token = token;
    return token;
  }

  match(s) {
    if(s is String) {
      int i = 0;
      while(i < s.length) {
        if(_input.LA(1) != s.charCodeAt(i)) {
          if(state.backtracking > 0) {
            state.failed = true;            
            return;
          }
          MismatchedTokenException me =
            new MismatchedTokenException(s.charCodeAt(i), _input);
          recover(me);
          throw me;
        }
        i++;
        _input.consume();
        state.failed = false;
       }
    } else if(s is int) {
      if(_input.LA(1) != s) {
        if(state.backtracking > 0) {
          state.failed = true;
          return;
        }
        MismatchedTokenException mte =
          new MismatchedTokenException(s, _input);
        recover(mte); 
        throw mte;
      }
      _input.consume();
      state.failed = false;
    }    
  }

  matchAny([IntStream input]) {
    _input.consume();
  }

  matchRange(int a, int b) {
    if(_input.LA(1) < a || _input.LA(1) > b) {
      if(state.backtracking > 0) {
        state.failed = true;
        return;
      }
      MismatchedRangeException mre =
        new MismatchedRangeException(a,b,_input);
      recover(mre);
      throw mre;
    }
    _input.consume();
    state.failed = false;
  }

  int get line => _input.line;

  int get charPositionInLine =>  _input.charPositionInLine;
  
  /** What is the index of the current character of lookahead? */
  int get charIndex => _input.index;
  
  /** Return the text matched so far for the current token or any
   *  text override.
   */
  String get text {
    if(state.text != null)
      return state.text;
    return _input.substring(state.tokenStartCharIndex, charIndex - 1);
  }

  set text(String text) {
    state.text = text;
  }

  @override
  reportError(RecognitionException e, [st=null]) {
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
  recover(RecognitionException re, [IntStream input]) {
    if(input != null)
      super.recover(re, input);
    _input.consume();
  }

  traceIn(String ruleName, int ruleIndex, [inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = "${_input.LT(1)} line=${line}:${charPositionInLine}";
    super.traceIn(ruleName, ruleIndex, inputSymbol);
  }

  traceOut(String ruleName, int ruleIndex, [inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = "${_input.LT(1)} line=${line}:${charPositionInLine}";
    super.traceOut(ruleName, ruleIndex, inputSymbol);
  }
}


// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A lexer is recognizer that draws input symbols from a character stream.
 *  lexer grammars result in a subclass of this object. A Lexer object
 *  uses simplified match() and error recovery mechanisms in the interest
 *  of speed.
 */
class Lexer extends BaseRecognizer implements TokenSource {
 
  /** Where is the lexer drawing characters from? */
  CharStream _input;
  
  Lexer(this._input);

  Lexer.fromRecognizerSharedState
   (this._input, RecognizerSharedState state) : super(state);
   
  CharStream get input() => this._input;
  
  int get HIDDEN() => Token.HIDDEN_CHANNEL;

  void reset() {
    super.reset();
    if(this._input != null) this._input.seek(0);
    if(this._state == null) return;
    this._state.token = null;
    this._state.type = Token.INVALID_TOKEN_TYPE;
    this._state.channel = Token.DEFAULT_CHANNEL;
    this._state.tokenStartCharIndex = -1;
    this._state.tokenStartCharPositionInLine = -1;
    this._state.tokenStartLine = -1;
    this._state.text = null;
  }

  /** Return a token from this source; i.e., match a token on the char
  *  stream.
  */
  Token nextToken() {
    while(true) {
      this._state.token = null;
      this._state.channel = Token.DEFAULT_CHANNEL;      
      this._state.tokenStartCharIndex = this._input.index; 
      this._state.tokenStartCharPositionInLine = this._input.charPositionInLine;     
      this._state.tokenStartLine = this._input.line;      
      this._state.text = null;
      if(this._input.LA(1) == CharStream.EOF) {
        Token eof = new CommonToken.fromCharStream(this._input,Token.EOF, 
            Token.DEFAULT_CHANNEL, this._input.index , this._input.index);
        eof.line = this.line;
        eof.charPositionInLine = this.charPositionInLine;
        return eof;
      }
      try {
        this.mTokens();
        if(this._state.token == null){          
          this.emit();       
        }else if(this._state.token == Token.SKIP_TOKEN)
          continue;       
        return this._state.token;
      }
      catch(MismatchedRangeException re) {        
        this.reportError(re);        
      }
      catch(MismatchedTokenException re) {        
        this.reportError(re);        
      }
      catch(RecognitionException re) {        
        this.reportError(re);
        this.recover(re);
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
    this._state.token = Token.SKIP_TOKEN;
  }
  
  /** This is the lexer entry point that sets instance var 'token' */
  abstract void mTokens();
 
  /** Set the char stream and reset the lexer */
  void set charStream(CharStream input) {
    this._input = null;
    this.reset();
    this._input = input;
  }

  CharStream get charStream() => this._input;
  
  String get sourceName() => this._input.sourceName;

  /** Currently does not support multiple emits per nextToken invocation
   *  for efficiency reasons.  Subclass and override this method and
   *  nextToken (to push tokens into a list and pull from that list rather
   *  than a single variable as this implementation does).
   */
  Token emit([Token token]) {
    if(token == null) {
      Token t = new CommonToken.fromCharStream(this._input, this._state.type, 
        this._state.channel, this._state.tokenStartCharIndex, this.charIndex - 1);
      t.line = this._state.tokenStartLine;
      t.text = this._state.text;
      t.charPositionInLine = this._state.tokenStartCharPositionInLine;
      this._state.token = t;
      return t;
    }
    this._state.token = token;
    return token;
  }

  void match(Dynamic s) {
    if(s is String) {
      int i = 0;
      while(i < s.length) {
        if(this._input.LA(1) != s.charCodeAt(i)) {
          if(this._state.backtracking > 0) {
            this._state.failed = true;            
            return;
          }
          MismatchedTokenException me =
            new MismatchedTokenException(s.charCodeAt(i), this._input);
          this.recover(me);
          throw me;
        }
        i++;
        this._input.consume();
        this._state.failed = false;
       }
    } else if(s is int) {
      if(this._input.LA(1) != s) {
        if(this._state.backtracking > 0) {
          this._state.failed = true;
          return;
        }
        MismatchedTokenException mte =
          new MismatchedTokenException(s, this._input);
        recover(mte); 
        throw mte;
      }
      this._input.consume();
      this._state.failed = false;
    }    
  }

  void matchAny([IntStream input]) {
    this._input.consume();
  }

  void matchRange(int a, int b) {
    if(this._input.LA(1) < a || this._input.LA(1) > b) {
      if(this._state.backtracking > 0) {
        this._state.failed = true;
        return;
      }
      MismatchedRangeException mre =
        new MismatchedRangeException(a,b,this._input);
      this.recover(mre);
      throw mre;
    }
    this._input.consume();
    this._state.failed = false;
  }

  int get line() => this._input.line;

  int get charPositionInLine() =>  this._input.charPositionInLine;
  
  /** What is the index of the current character of lookahead? */
  int get charIndex() => this._input.index;
  
  /** Return the text matched so far for the current token or any
   *  text override.
   */
  String get text() {
    if(this._state.text != null)
      return this._state.text;
    return this._input.substring(this._state.tokenStartCharIndex, this.charIndex - 1);
  }

  void set text(String text) {
    this._state.text = text;
  }

  void reportError(RecognitionException e) {
    this.displayRecognitionError(this.tokenNames, e);
  }

  String getErrorMessage(RecognitionException e, List<String> tokenNames) {
    String msg = null;
    if(e is MismatchedTokenException) {
      MismatchedTokenException mte = e;
      msg = "mismatched character ${this.getCharErrorDisplay(e.c)}"
            " expecting ${this.getCharErrorDisplay(mte.expecting)}";
    }
    else if(e is NoViableAltException) {
      NoViableAltException nvae = e;
      msg = "no viable alternative at character ${this.getCharErrorDisplay(e.c)}";
    }
    else if(e is EarlyExitException) {
      EarlyExitException eee = e;
      msg = "required(...)+ loop did not match "
          "anything at character ${this.getCharErrorDisplay(e.c)}";
    }
    else if(e is MismatchedNotSetException) {
      MismatchedNotSetException mse = e;
      msg = "mismatched character "
          "${this.getCharErrorDisplay(e.c)} expecting set ${mse.expecting}";
    }
    else if(e is MismatchedSetException) {
      MismatchedSetException mse = e;
      msg = "mismatched character "
          "${this.getCharErrorDisplay(e.c)} expecting set ${mse.expecting}";
    }
    else if(e is MismatchedRangeException) {
      MismatchedRangeException mre = e;
      msg = "mismatched character ${this.getCharErrorDisplay(e.c)} expecting"
       " set ${this.getCharErrorDisplay(mre.a)}..${this.getCharErrorDisplay(mre.b)}";
    }
    else
      msg = super.getErrorMessage(e, tokenNames);   
    return msg;
  }

  String getCharErrorDisplay(int c) {
    String s = "";
    switch(c) {
      case Token.EOF : s = "<EOF>"; break;
      case '\n'.charCodeAt(0) : s = "\\n"; break;
      case '\t'.charCodeAt(0) : s = "\\t"; break;
      case '\r'.charCodeAt(0) : s = "\\r"; break;
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
    this._input.consume();
  }

  void traceIn(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = "${this._input.LT(1)} line=${this.line}:${this.charPositionInLine}";
    super.traceIn(ruleName, ruleIndex, inputSymbol);
  }

  void traceOut(String ruleName, int ruleIndex, [Object inputSymbol])  {
    if(inputSymbol == null)
      inputSymbol = "${this._input.LT(1)} line=${this.line}:${this.charPositionInLine}";
    super.traceOut(ruleName, ruleIndex, inputSymbol);
  }
}


// $ANTLR 3.4 t056lexer7Lexer.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer7Lexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int I = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer7Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer7Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer7.g";

  String getRecognizerClassName() => "t056lexer7Lexer";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken v = null;

  	  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	   4:3: ( 'hi' WS (v= I )? )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	   4:5: 'hi' WS (v= I )?*/
  	  {
  	  	this.match("hi"); 




  	  	this.mWS(); 


  	  	/* ../runtime/dart/tests/grammars/t056lexer7.g:
  	  	 4:13: (v= I )?*/
  	  	int alt1 = 2;
  	  	int LA1_0 = this.input.LA(1);

  	  	if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/))) {
  	  	  alt1 = 1;
  	  	}
  	  	switch (alt1) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	  	     4:14: v= I*/
  	  	    {
  	  	    	int vStart32 = this.charIndex;
  	  	    	int vStartLine32 = this.line;
  	  	    	int vStartCharPos32 = this.charPositionInLine;
  	  	    	this.mI(); 
  	  	    	v = new CommonToken.fromCharStream(this.input, 
  	  	    	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, vStart32, this.charIndex-1);
  	  	    	v.line = vStartLine32;
  	  	    	v.charPositionInLine = vStartCharPos32;


  	  	    }
  	  	    break;

  	  	}


  	  	_channel=0; this.capture("${(v != null) ? v.text : null}");


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "I"
  void mI() {
    try {
  	  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	   5:12: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	   5:14: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t056lexer7.g:
  	  	 5:14: ( '0' .. '9' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if(((LA2_0 >= 48 /*'0'*/ && LA2_0 <= 57 /*'9'*/))) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)) {
  	  			  	  this.input.consume();
  	  			  	}
  	  			  	else {
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt2 >= 1) break loop2;
  	  	        EarlyExitException eee = new EarlyExitException(2, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt2++;
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "I"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	   6:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer7.g:
  	   6:6: ( ' ' | '\\n' )*/
  	  {
  	  	if(this.input.LA(1) == 10 /*'\n'*/
  	  	  || this.input.LA(1) == 32 /*' '*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	_channel = HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t056lexer7.g: 
     1:8: ( A | WS )*/
    int alt3 = 2;
    int LA3_0 = this.input.LA(1);

    if((LA3_0 == 104/*104 /*'h'*/*/)) {
      alt3 = 1;
    }
    else if((LA3_0 == 10/*10 /*'\n'*/*/
      || LA3_0 == 32/*32 /*' '*/*/)) {
      alt3 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 3, 0, this.input);

      throw nvae;

    }
    switch (alt3) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t056lexer7.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t056lexer7.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



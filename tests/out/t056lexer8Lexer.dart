// $ANTLR 3.4 t056lexer8Lexer.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer8Lexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int I = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer8Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer8Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer8.g";

  String getRecognizerClassName() => "t056lexer8Lexer";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken I1 = null;

  	  /* ../runtime/dart/tests/grammars/t056lexer8.g:
  	   4:3: ( I )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer8.g:
  	   4:5: I*/
  	  {
  	  	int I1Start25 = this.charIndex;
  	  	int I1StartLine25 = this.line;
  	  	int I1StartCharPos25 = this.charPositionInLine;
  	  	this.mI(); 
  	  	I1 = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, I1Start25, this.charIndex-1);
  	  	I1.line = I1StartLine25;
  	  	I1.charPositionInLine = I1StartCharPos25;


  	  	this.capture("${(I1!=null?I1.text:null)}");


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
  	  /* ../runtime/dart/tests/grammars/t056lexer8.g:
  	   5:12: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer8.g:
  	   5:14: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t056lexer8.g:
  	  	 5:14: ( '0' .. '9' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t056lexer8.g:
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
  	  		    if(cnt1 >= 1) break loop1;
  	  	        EarlyExitException eee = new EarlyExitException(1, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt1++;
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
  	  /* ../runtime/dart/tests/grammars/t056lexer8.g:
  	   6:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer8.g:
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
    /* ../runtime/dart/tests/grammars/t056lexer8.g: 
     1:8: ( A | WS )*/
    int alt2 = 2;
    int LA2_0 = this.input.LA(1);

    if(((LA2_0 >= 48 /*'0'*/ && LA2_0 <= 57 /*'9'*/))) {
      alt2 = 1;
    }
    else if((LA2_0 == 10/*10 /*'\n'*/*/
      || LA2_0 == 32/*32 /*' '*/*/)) {
      alt2 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 2, 0, this.input);

      throw nvae;

    }
    switch (alt2) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t056lexer8.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t056lexer8.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



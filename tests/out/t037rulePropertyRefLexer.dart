// $ANTLR 3.4 t037rulePropertyRefLexer.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t037rulePropertyRefLexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t037rulePropertyRefLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t037rulePropertyRefLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t037rulePropertyRef.g";

  String getRecognizerClassName() => "t037rulePropertyRefLexer";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
  	   13:2: ( 'a' .. 'z' )*/
  	  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
  	  */
  	  {
  	  	if((this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
  	   15:3: ( ( ' ' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
  	   15:5: ( ' ' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
  	  	 15:5: ( ' ' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if((LA1_0 == 32/*32 /*' '*/*/)) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
  	  			   15:5: ' '*/
  	  			  {
  	  			  	this.match(32 /*' '*/); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt1 >= 1) break loop1;
  	  	        EarlyExitException eee = new EarlyExitException(1, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt1++;
  	  	} while(true);


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
    /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g: 
     1:8: ( A | WS )*/
    int alt2 = 2;
    int LA2_0 = this.input.LA(1);

    if(((LA2_0 >= 97 /*'a'*/ && LA2_0 <= 122 /*'z'*/))) {
      alt2 = 1;
    }
    else if((LA2_0 == 32/*32 /*' '*/*/)) {
      alt2 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 2, 0, this.input);

      throw nvae;

    }
    switch (alt2) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



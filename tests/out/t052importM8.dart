// $ANTLR 3.4 t052importM8.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM8_t052importS8.dart');
class t052importM8 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int Tokens = 5;
  static final int WS = 6;  
  


  // delegates
  t052importM8_t052importS8 gt052importS8;
  // delegators
  List<Lexer> get delegates() => <Lexer>[gt052importS8];

  t052importM8([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.gt052importS8 = new t052importM8_t052importS8
            .fromRecognizerSharedState(this.input, this.state, this);
  }

  t052importM8.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
    this.gt052importS8 = new t052importM8_t052importS8
            .fromRecognizerSharedState(this.input, this.state, this);
  }

  String get grammarFileName() => "t052importM8.g";

  String getRecognizerClassName() => "t052importM8";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM8.g:
  	   6:3: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t052importM8.g:
  	   6:5: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 


  	  	this.capture("M.A ");


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
  	  /* ../runtime/dart/tests/grammars/t052importM8.g:
  	   7:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t052importM8.g:
  	   7:6: ( ' ' | '\\n' )*/
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


  	  	this.skip();


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
    /* ../runtime/dart/tests/grammars/t052importM8.g: 
     1:8: ( A | WS | t052importS8. Tokens )*/
    int alt1 = 3;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 97/*97 /*'a'*/*/)) {
      alt1 = 1;
    }
    else if((LA1_0 == 10/*10 /*'\n'*/*/
      || LA1_0 == 32/*32 /*' '*/*/)) {
      alt1 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }
    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t052importM8.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t052importM8.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t052importM8.g:
         1:15: t052importS8. Tokens*/
        {
        	gt052importS8.mTokens(); 


        }
        break;

    }

  }  

  
}



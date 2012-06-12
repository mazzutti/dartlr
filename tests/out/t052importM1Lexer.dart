// $ANTLR 3.4 t052importM1Lexer.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importM1Lexer extends Lexer {

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t052importM1Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t052importM1Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t052importM1.g";

  String getRecognizerClassName() => "t052importM1Lexer";
  
  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM1.g:
  	   7:3: ( 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t052importM1.g:
  	   7:5: 'b'*/
  	  {
  	  	this.match(98 /*'b'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "B"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM1.g:
  	   8:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t052importM1.g:
  	   8:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t052importM1.g: 
     1:8: ( B | WS )*/
    int alt1 = 2;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 98/*98 /*'b'*/*/)) {
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
        /* ../runtime/dart/tests/grammars/t052importM1.g:
         1:10: B*/
        {
        	this.mB(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t052importM1.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



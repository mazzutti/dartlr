// $ANTLR 3.4 t009lexer.g 2012-06-07 21:59:39
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t009lexer extends Lexer {

  static final int EOF = -1;
  static final int DIGIT = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t009lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t009lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t009lexer.g";

  String getRecognizerClassName() => "t009lexer";
  
  // $ANTLR start "DIGIT"
  void mDIGIT() {
    try {
  	  int _type = DIGIT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t009lexer.g:
  	   6:6: ( '0' .. '9' )*/
  	  /* ../runtime/dart/tests/grammars/t009lexer.g:
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

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "DIGIT"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t009lexer.g:
     1:8: ( DIGIT )*/
    /* ../runtime/dart/tests/grammars/t009lexer.g:
     1:10: DIGIT*/
    {
    	this.mDIGIT(); 


    }


  }  

  
}



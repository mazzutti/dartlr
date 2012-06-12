// $ANTLR 3.4 t001lexer.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t001lexer extends Lexer {

  static final int EOF = -1;
  static final int ZERO = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t001lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t001lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t001lexer.g";

  String getRecognizerClassName() => "t001lexer";
  
  // $ANTLR start "ZERO"
  void mZERO() {
    try {
  	  int _type = ZERO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t001lexer.g:
  	   6:5: ( '0' )*/
  	  /* ../runtime/dart/tests/grammars/t001lexer.g:
  	   6:7: '0'*/
  	  {
  	  	this.match(48 /*'0'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ZERO"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t001lexer.g:
     1:8: ( ZERO )*/
    /* ../runtime/dart/tests/grammars/t001lexer.g:
     1:10: ZERO*/
    {
    	this.mZERO(); 


    }


  }  

  
}



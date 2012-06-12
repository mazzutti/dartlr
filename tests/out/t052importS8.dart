// $ANTLR 3.4 t052importS8.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importS8 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;  

  void capture(String t) {
    this.gt052importM8.capture(t);
  }
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t052importS8([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t052importS8.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t052importS8.g";

  String getRecognizerClassName() => "t052importS8";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importS8.g:
  	   10:3: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t052importS8.g:
  	   10:5: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 


  	  	this.capture("S.A");


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t052importS8.g:
     1:8: ( A )*/
    /* ../runtime/dart/tests/grammars/t052importS8.g:
     1:10: A*/
    {
    	this.mA(); 


    }


  }  

  
}



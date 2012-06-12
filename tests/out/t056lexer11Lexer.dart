// $ANTLR 3.4 t056lexer11Lexer.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer11Lexer extends Lexer {

  static final int EOF = -1;
  static final int B = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer11Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer11Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer11.g";

  String getRecognizerClassName() => "t056lexer11Lexer";
  
  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  int x;

  	  /* ../runtime/dart/tests/grammars/t056lexer11.g:
  	   4:3: (x= 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer11.g:
  	   4:5: x= 'a'*/
  	  {
  	  	x = this.input.LA(1);

  	  	this.match(97 /*'a'*/); 


  	  	this.capture("${new String.fromCharCodes([x])}");


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "B"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t056lexer11.g:
     1:8: ( B )*/
    /* ../runtime/dart/tests/grammars/t056lexer11.g:
     1:10: B*/
    {
    	this.mB(); 


    }


  }  

  
}



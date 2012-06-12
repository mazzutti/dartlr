// $ANTLR 3.4 t056lexer12.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer12 extends Lexer {

  static final int EOF = -1;
  static final int B = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer12([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer12.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer12.g";

  String getRecognizerClassName() => "t056lexer12";
  
  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  int x;

  	  /* ../runtime/dart/tests/grammars/t056lexer12.g:
  	   3:3: (x= 'a' x= 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer12.g:
  	   3:5: x= 'a' x= 'b'*/
  	  {
  	  	x = this.input.LA(1);

  	  	this.match(97 /*'a'*/); 


  	  	x = this.input.LA(1);

  	  	this.match(98 /*'b'*/); 


  	  	this.capture("ab");


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
    /* ../runtime/dart/tests/grammars/t056lexer12.g:
     1:8: ( B )*/
    /* ../runtime/dart/tests/grammars/t056lexer12.g:
     1:10: B*/
    {
    	this.mB(); 


    }


  }  

  
}



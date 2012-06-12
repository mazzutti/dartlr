// $ANTLR 3.4 t056lexer13.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer13 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer13([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer13.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer13.g";

  String getRecognizerClassName() => "t056lexer13";
  
  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken x = null;

  	  /* ../runtime/dart/tests/grammars/t056lexer13.g:
  	   3:3: (x= A x= A )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer13.g:
  	   3:5: x= A x= A*/
  	  {
  	  	int xStart20 = this.charIndex;
  	  	int xStartLine20 = this.line;
  	  	int xStartCharPos20 = this.charPositionInLine;
  	  	this.mA(); 
  	  	x = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart20, this.charIndex-1);
  	  	x.line = xStartLine20;
  	  	x.charPositionInLine = xStartCharPos20;


  	  	int xStart24 = this.charIndex;
  	  	int xStartLine24 = this.line;
  	  	int xStartCharPos24 = this.charPositionInLine;
  	  	this.mA(); 
  	  	x = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart24, this.charIndex-1);
  	  	x.line = xStartLine24;
  	  	x.charPositionInLine = xStartCharPos24;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "B"

  // $ANTLR start "A"
  void mA() {
    try {
  	  /* ../runtime/dart/tests/grammars/t056lexer13.g:
  	   4:12: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer13.g:
  	   4:14: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 


  	  	this.capture("a");


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t056lexer13.g:
     1:8: ( B )*/
    /* ../runtime/dart/tests/grammars/t056lexer13.g:
     1:10: B*/
    {
    	this.mB(); 


    }


  }  

  
}



// $ANTLR 3.4 t056lexer14.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer14 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer14([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer14.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer14.g";

  String getRecognizerClassName() => "t056lexer14";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t056lexer14.g:
  	   3:3: ( '\\\"' )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer14.g:
  	   3:5: '\\\"'*/
  	  {
  	  	this.match(34 /*'\"'*/); 


  	  	this.capture('"');


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t056lexer14.g:
  	   4:3: ( '\\\\\\\"' )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer14.g:
  	   4:5: '\\\\\\\"'*/
  	  {
  	  	this.match("\\\""); 




  	  	this.capture(@'\"');


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
    /* ../runtime/dart/tests/grammars/t056lexer14.g: 
     1:8: ( A | B )*/
    int alt1 = 2;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 34/*34 /*'\"'*/*/)) {
      alt1 = 1;
    }
    else if((LA1_0 == 92/*92 /*'\\'*/*/)) {
      alt1 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }
    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t056lexer14.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t056lexer14.g:
         1:12: B*/
        {
        	this.mB(); 


        }
        break;

    }

  }  

  
}



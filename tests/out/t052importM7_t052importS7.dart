// $ANTLR 3.4 t052importM7_t052importS7.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM7.dart');
class t052importM7_t052importS7 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int Tokens = 7;
  static final int WS = 8;  

  void capture(String t) {
    this.gt052importM7.capture(t);
  }
  


  // delegates
  // delegators
  t052importM7 gt052importM7;
  t052importM7 gParent;
  List<Lexer> get delegates() => <Lexer>[];

  t052importM7_t052importS7([CharStream input, t052importM7 gt052importM7]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.gt052importM7 = gt052importM7;
    this.gParent = gt052importM7;
  }

  t052importM7_t052importS7.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state, t052importM7 gt052importM7) 
      : super.fromRecognizerSharedState(input,state) {
    this.gt052importM7 = gt052importM7;
    this.gParent = gt052importM7;
  }

  String get grammarFileName() => "t052importS7.g";

  String getRecognizerClassName() => "t052importM7_t052importS7";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* t052importS7.g:
  	   10:3: ( 'a' )*/
  	  /* t052importS7.g:
  	   10:5: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 


  	  	this.capture("S.A ");


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "C"
  void mC() {
    try {
  	  int _type = C;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* t052importS7.g:
  	   11:3: ( 'c' )*/
  	  /* t052importS7.g:
  	   11:5: 'c'*/
  	  {
  	  	this.match(99 /*'c'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "C"

  void mTokens() {
    /* t052importS7.g: 
     1:8: ( A | C )*/
    int alt1 = 2;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 97/*97 /*'a'*/*/)) {
      alt1 = 1;
    }
    else if((LA1_0 == 99/*99 /*'c'*/*/)) {
      alt1 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }
    switch (alt1) {
      case 1 :
        /* t052importS7.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* t052importS7.g:
         1:12: C*/
        {
        	this.mC(); 


        }
        break;

    }

  }  

  
}



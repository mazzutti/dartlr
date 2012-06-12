// $ANTLR 3.4 t003lexer.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t003lexer extends Lexer {

  static final int EOF = -1;
  static final int FOOZE = 4;
  static final int ONE = 5;
  static final int ZERO = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t003lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t003lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t003lexer.g";

  String getRecognizerClassName() => "t003lexer";
  
  // $ANTLR start "ZERO"
  void mZERO() {
    try {
  	  int _type = ZERO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t003lexer.g:
  	   6:5: ( '0' )*/
  	  /* ../runtime/dart/tests/grammars/t003lexer.g:
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

  // $ANTLR start "ONE"
  void mONE() {
    try {
  	  int _type = ONE;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t003lexer.g:
  	   7:4: ( '1' )*/
  	  /* ../runtime/dart/tests/grammars/t003lexer.g:
  	   7:6: '1'*/
  	  {
  	  	this.match(49 /*'1'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ONE"

  // $ANTLR start "FOOZE"
  void mFOOZE() {
    try {
  	  int _type = FOOZE;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t003lexer.g:
  	   8:6: ( 'fooze' )*/
  	  /* ../runtime/dart/tests/grammars/t003lexer.g:
  	   8:8: 'fooze'*/
  	  {
  	  	this.match("fooze"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "FOOZE"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t003lexer.g: 
     1:8: ( ZERO | ONE | FOOZE )*/
    int alt1 = 3;
    switch(this.input.LA(1)) {
    case 48 /*'0'*/:
      {
      alt1 = 1;
      }
      break;
    case 49 /*'1'*/:
      {
      alt1 = 2;
      }
      break;
    case 102 /*'f'*/:
      {
      alt1 = 3;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }

    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t003lexer.g:
         1:10: ZERO*/
        {
        	this.mZERO(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t003lexer.g:
         1:15: ONE*/
        {
        	this.mONE(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t003lexer.g:
         1:19: FOOZE*/
        {
        	this.mFOOZE(); 


        }
        break;

    }

  }  

  
}



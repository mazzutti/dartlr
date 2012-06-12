// $ANTLR 3.4 t002lexer.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t002lexer extends Lexer {

  static final int EOF = -1;
  static final int ONE = 4;
  static final int ZERO = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t002lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t002lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t002lexer.g";

  String getRecognizerClassName() => "t002lexer";
  
  // $ANTLR start "ZERO"
  void mZERO() {
    try {
  	  int _type = ZERO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t002lexer.g:
  	   6:5: ( '0' )*/
  	  /* ../runtime/dart/tests/grammars/t002lexer.g:
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
  	  /* ../runtime/dart/tests/grammars/t002lexer.g:
  	   7:4: ( '1' )*/
  	  /* ../runtime/dart/tests/grammars/t002lexer.g:
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

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t002lexer.g: 
     1:8: ( ZERO | ONE )*/
    int alt1 = 2;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 48/*48 /*'0'*/*/)) {
      alt1 = 1;
    }
    else if((LA1_0 == 49/*49 /*'1'*/*/)) {
      alt1 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }
    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t002lexer.g:
         1:10: ZERO*/
        {
        	this.mZERO(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t002lexer.g:
         1:15: ONE*/
        {
        	this.mONE(); 


        }
        break;

    }

  }  

  
}



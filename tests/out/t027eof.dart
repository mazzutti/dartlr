// $ANTLR 3.4 t027eof.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t027eof extends Lexer {

  static final int EOF = -1;
  static final int END = 4;
  static final int SPACE = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t027eof([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t027eof.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t027eof.g";

  String getRecognizerClassName() => "t027eof";
  
  // $ANTLR start "END"
  void mEND() {
    try {
  	  int _type = END;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t027eof.g:
  	   7:4: ( '\\u0000' )*/
  	  /* ../runtime/dart/tests/grammars/t027eof.g:
  	   7:6: '\\u0000'*/
  	  {
  	  	this.match(0 /*'\u0000'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "END"

  // $ANTLR start "SPACE"
  void mSPACE() {
    try {
  	  int _type = SPACE;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t027eof.g:
  	   8:6: ( ' ' )*/
  	  /* ../runtime/dart/tests/grammars/t027eof.g:
  	   8:8: ' '*/
  	  {
  	  	this.match(32 /*' '*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "SPACE"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t027eof.g: 
     1:8: ( END | SPACE )*/
    int alt1 = 2;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 0/*0 /*'\u0000'*/*/)) {
      alt1 = 1;
    }
    else if((LA1_0 == 32/*32 /*' '*/*/)) {
      alt1 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }
    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t027eof.g:
         1:10: END*/
        {
        	this.mEND(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t027eof.g:
         1:14: SPACE*/
        {
        	this.mSPACE(); 


        }
        break;

    }

  }  

  
}



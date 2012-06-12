// $ANTLR 3.4 t056lexer1Lexer.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer1Lexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t056lexer1Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t056lexer1Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t056lexer1.g";

  String getRecognizerClassName() => "t056lexer1Lexer";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t056lexer1.g:
  	   4:3: ( '\\\\' 't' )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer1.g:
  	   4:5: '\\\\' 't'*/
  	  {
  	  	this.match(92 /*'\\'*/); 


  	  	this.match(116 /*'t'*/); 


  	  	this.text = "  ";


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t056lexer1.g:
  	   5:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t056lexer1.g:
  	   5:6: ( ' ' | '\\n' )*/
  	  {
  	  	if(this.input.LA(1) == 10 /*'\n'*/
  	  	  || this.input.LA(1) == 32 /*' '*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	_channel= HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t056lexer1.g: 
     1:8: ( A | WS )*/
    int alt1 = 2;
    int LA1_0 = this.input.LA(1);

    if((LA1_0 == 92/*92 /*'\\'*/*/)) {
      alt1 = 1;
    }
    else if((LA1_0 == 10/*10 /*'\n'*/*/
      || LA1_0 == 32/*32 /*' '*/*/)) {
      alt1 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }
    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t056lexer1.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t056lexer1.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



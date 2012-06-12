// $ANTLR 3.4 t052importM7.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM7_t052importS7.dart');
class t052importM7 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int Tokens = 7;
  static final int WS = 8;  
  


  // delegates
  t052importM7_t052importS7 gt052importS7;
  // delegators
  List<Lexer> get delegates() => <Lexer>[gt052importS7];

  t052importM7([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.gt052importS7 = new t052importM7_t052importS7
            .fromRecognizerSharedState(this.input, this.state, this);
  }

  t052importM7.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
    this.gt052importS7 = new t052importM7_t052importS7
            .fromRecognizerSharedState(this.input, this.state, this);
  }

  String get grammarFileName() => "t052importM7.g";

  String getRecognizerClassName() => "t052importM7";
  
  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM7.g:
  	   6:3: ( 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t052importM7.g:
  	   6:5: 'b'*/
  	  {
  	  	this.match(98 /*'b'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "B"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM7.g:
  	   7:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t052importM7.g:
  	   7:6: ( ' ' | '\\n' )*/
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


  	  	this.skip();


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
    /* ../runtime/dart/tests/grammars/t052importM7.g: 
     1:8: ( B | WS | t052importS7. Tokens )*/
    int alt1 = 3;
    switch(this.input.LA(1)) {
    case 98 /*'b'*/:
      {
      alt1 = 1;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt1 = 2;
      }
      break;
    case 97 /*'a'*/:
    case 99 /*'c'*/:
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
        /* ../runtime/dart/tests/grammars/t052importM7.g:
         1:10: B*/
        {
        	this.mB(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t052importM7.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t052importM7.g:
         1:15: t052importS7. Tokens*/
        {
        	gt052importS7.mTokens(); 


        }
        break;

    }

  }  

  
}



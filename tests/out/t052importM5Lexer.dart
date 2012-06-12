// $ANTLR 3.4 t052importM5Lexer.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importM5Lexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int WS = 7;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t052importM5Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t052importM5Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t052importM5.g";

  String getRecognizerClassName() => "t052importM5Lexer";
  
  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   7:3: ( 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   7:5: 'b'*/
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

  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   8:3: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   8:5: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   9:3: ( 'c' )*/
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   9:5: 'c'*/
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

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   10:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t052importM5.g:
  	   10:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t052importM5.g: 
     1:8: ( B | A | C | WS )*/
    int alt1 = 4;
    switch(this.input.LA(1)) {
    case 98 /*'b'*/:
      {
      alt1 = 1;
      }
      break;
    case 97 /*'a'*/:
      {
      alt1 = 2;
      }
      break;
    case 99 /*'c'*/:
      {
      alt1 = 3;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt1 = 4;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }

    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t052importM5.g:
         1:10: B*/
        {
        	this.mB(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t052importM5.g:
         1:12: A*/
        {
        	this.mA(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t052importM5.g:
         1:14: C*/
        {
        	this.mC(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t052importM5.g:
         1:16: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



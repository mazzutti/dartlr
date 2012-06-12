// $ANTLR 3.4 t048rewrite.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t048rewrite extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t048rewrite([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t048rewrite.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t048rewrite.g";

  String getRecognizerClassName() => "t048rewrite";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t048rewrite.g:
  	   6:2: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t048rewrite.g:
  	   6:4: 'a'*/
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

  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t048rewrite.g:
  	   7:2: ( 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t048rewrite.g:
  	   7:4: 'b'*/
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

  // $ANTLR start "C"
  void mC() {
    try {
  	  int _type = C;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t048rewrite.g:
  	   8:2: ( 'c' )*/
  	  /* ../runtime/dart/tests/grammars/t048rewrite.g:
  	   8:4: 'c'*/
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
    /* ../runtime/dart/tests/grammars/t048rewrite.g: 
     1:8: ( A | B | C )*/
    int alt1 = 3;
    switch(this.input.LA(1)) {
    case 97 /*'a'*/:
      {
      alt1 = 1;
      }
      break;
    case 98 /*'b'*/:
      {
      alt1 = 2;
      }
      break;
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
        /* ../runtime/dart/tests/grammars/t048rewrite.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t048rewrite.g:
         1:12: B*/
        {
        	this.mB(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t048rewrite.g:
         1:14: C*/
        {
        	this.mC(); 


        }
        break;

    }

  }  

  
}



// $ANTLR 3.4 t043synpredLexer.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t043synpredLexer extends Lexer {

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int E = 4;
  static final int P = 5;
  static final int S = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t043synpredLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t043synpredLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t043synpred.g";

  String getRecognizerClassName() => "t043synpredLexer";
  
  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   7:6: ( 'foo' )*/
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   7:8: 'foo'*/
  	  {
  	  	this.match("foo"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__7"

  // $ANTLR start "S"
  void mS() {
    try {
  	  int _type = S;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   12:2: ( ' ' )*/
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   12:4: ' '*/
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
  // $ANTLR end "S"

  // $ANTLR start "P"
  void mP() {
    try {
  	  int _type = P;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   13:2: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   13:4: '+'*/
  	  {
  	  	this.match(43 /*'+'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "P"

  // $ANTLR start "E"
  void mE() {
    try {
  	  int _type = E;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   14:2: ( '>' )*/
  	  /* ../runtime/dart/tests/grammars/t043synpred.g:
  	   14:4: '>'*/
  	  {
  	  	this.match(62 /*'>'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "E"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t043synpred.g: 
     1:8: ( T__7 | S | P | E )*/
    int alt1 = 4;
    switch(this.input.LA(1)) {
    case 102 /*'f'*/:
      {
      alt1 = 1;
      }
      break;
    case 32 /*' '*/:
      {
      alt1 = 2;
      }
      break;
    case 43 /*'+'*/:
      {
      alt1 = 3;
      }
      break;
    case 62 /*'>'*/:
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
        /* ../runtime/dart/tests/grammars/t043synpred.g:
         1:10: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t043synpred.g:
         1:15: S*/
        {
        	this.mS(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t043synpred.g:
         1:17: P*/
        {
        	this.mP(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t043synpred.g:
         1:19: E*/
        {
        	this.mE(); 


        }
        break;

    }

  }  

  
}



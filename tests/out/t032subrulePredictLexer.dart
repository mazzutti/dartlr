// $ANTLR 3.4 t032subrulePredictLexer.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t032subrulePredictLexer extends Lexer {

  static final int EOF = -1;
  static final int T__5 = 5;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int WS = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t032subrulePredictLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t032subrulePredictLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t032subrulePredict.g";

  String getRecognizerClassName() => "t032subrulePredictLexer";
  
  // $ANTLR start "T__5"
  void mT__5() {
    try {
  	  int _type = T__5;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   7:6: ( 'A' )*/
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   7:8: 'A'*/
  	  {
  	  	this.match(65 /*'A'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__5"

  // $ANTLR start "T__6"
  void mT__6() {
    try {
  	  int _type = T__6;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   8:6: ( 'BEGIN' )*/
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   8:8: 'BEGIN'*/
  	  {
  	  	this.match("BEGIN"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__6"

  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   9:6: ( 'END' )*/
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   9:8: 'END'*/
  	  {
  	  	this.match("END"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__7"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   8:3: ( ' ' )*/
  	  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
  	   8:5: ' '*/
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
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t032subrulePredict.g: 
     1:8: ( T__5 | T__6 | T__7 | WS )*/
    int alt1 = 4;
    switch(this.input.LA(1)) {
    case 65 /*'A'*/:
      {
      alt1 = 1;
      }
      break;
    case 66 /*'B'*/:
      {
      alt1 = 2;
      }
      break;
    case 69 /*'E'*/:
      {
      alt1 = 3;
      }
      break;
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
        /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
         1:10: T__5*/
        {
        	this.mT__5(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
         1:15: T__6*/
        {
        	this.mT__6(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
         1:20: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
         1:25: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



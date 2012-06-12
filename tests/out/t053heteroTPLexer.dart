// $ANTLR 3.4 t053heteroTPLexer.g 2012-05-25 13:57:23
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');






class t053heteroTPLexer extends Lexer {

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int ID = 4;
  static final int ROOT = 5;
  static final int T__7 = 7;
  static final int INT = 5;
  static final int WS = 6;  



  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t053heteroTPLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t053heteroTPLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t053heteroTPLexer.g";

  String getRecognizerClassName() => "t053heteroTPLexer";
  
  // $ANTLR start "T__6"
  void mT__6() {
    try {
      int _type = T__6;
      int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
      // t053heteroTP__.g:8:6: ( ';' )
      // t053heteroTP__.g:8:8: ';'
      {
      match(59 /*';'*/); 

      }

      this.state.type = _type;
      this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__6"

  void mTokens() {
    // t053heteroTP__.g:1:8: ( T__6 )
    // t053heteroTP__.g:1:10: T__6
    {
    mT__6(); 


    }


  }  

  
}



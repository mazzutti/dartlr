// $ANTLR 3.4 t052importM6Parser.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM6_t052importS6.dart');
class t052importM6Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B", "WS", "'b'", "'c'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int B = 4;
  static final int WS = 5;
  t052importM6_t052importS6 gt052importS6;  
  List<Parser> get delegates() => <Parser>[gt052importS6]; 
  
      



  t052importM6Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importS6 = new t052importM6_t052importS6.fromRecognizerSharedState(input, state, this);
  }



  t052importM6Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importS6 = new t052importM6_t052importS6.fromRecognizerSharedState(input, state, this);
  }    

  List<String> get tokenNames() => t052importM6Parser._tokenNames;

  String get grammarFileName() => "t052importM6.g";

  String getRecognizerClassName() => "t052importM6Parser";


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t052importM6.g:
   6:1: b : ( 'b' | 'c' );*/
  void b() {
    try {
      /* ../runtime/dart/tests/grammars/t052importM6.g:
       6:3: ( 'b' | 'c' )*/
      /* ../runtime/dart/tests/grammars/t052importM6.g:
      */
      {
      	if((this.input.LA(1) >= 6 && this.input.LA(1) <= 7)) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "b"

      void a() { gt052importS6.a(); }


 


 }





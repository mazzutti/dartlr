// $ANTLR 3.4 t052importM1Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM1_t052importS1.dart');
class t052importM1Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B", "WS"
  ];

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  t052importM1_t052importS1 gt052importS1;  
  List<Parser> get delegates() => <Parser>[gt052importS1]; 
  
      



  t052importM1Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importS1 = new t052importM1_t052importS1.fromRecognizerSharedState(input, state, this);
  }



  t052importM1Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importS1 = new t052importM1_t052importS1.fromRecognizerSharedState(input, state, this);
  }    

  List<String> get tokenNames() => t052importM1Parser._tokenNames;

  String get grammarFileName() => "t052importM1.g";

  String getRecognizerClassName() => "t052importM1Parser";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t052importM1.g:
   6:1: s : a ;*/
  void s() {
    try {
      /* ../runtime/dart/tests/grammars/t052importM1.g:
       6:3: ( a )*/
      /* ../runtime/dart/tests/grammars/t052importM1.g:
       6:5: a*/
      {
      	this.pushFollow(FOLLOW_a_in_s27);
      	this.a();

      	this.state.fsp--;


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
  // $ANTLR end "s"

      void a() { gt052importS1.a(); }


 

  static BitSet _FOLLOW_a_in_s27 = null;
  static BitSet get FOLLOW_a_in_s27() {
    if(_FOLLOW_a_in_s27 == null) 
      _FOLLOW_a_in_s27 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_s27;
  }



 }





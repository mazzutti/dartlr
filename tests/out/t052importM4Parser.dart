// $ANTLR 3.4 t052importM4Parser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM4_t052importS4.dart');
#import('t052importM4_t052importT4.dart');
class t052importM4Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B", "WS"
  ];

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  t052importM4_t052importS4 gt052importS4;
  t052importM4_t052importT4 gt052importT4;  
  List<Parser> get delegates() => <Parser>[gt052importS4, gt052importT4]; 
  
      



  t052importM4Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importS4 = new t052importM4_t052importS4.fromRecognizerSharedState(input, state, this);
	  this.gt052importT4 = new t052importM4_t052importT4.fromRecognizerSharedState(input, state, this);
  }



  t052importM4Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importS4 = new t052importM4_t052importS4.fromRecognizerSharedState(input, state, this);
    this.gt052importT4 = new t052importM4_t052importT4.fromRecognizerSharedState(input, state, this);
  }    

  List<String> get tokenNames() => t052importM4Parser._tokenNames;

  String get grammarFileName() => "t052importM4.g";

  String getRecognizerClassName() => "t052importM4Parser";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t052importM4.g:
   6:1: s : a ;*/
  void s() {
    try {
      /* ../runtime/dart/tests/grammars/t052importM4.g:
       6:3: ( a )*/
      /* ../runtime/dart/tests/grammars/t052importM4.g:
       6:5: a*/
      {
      	this.pushFollow(FOLLOW_a_in_s30);
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

      void a() { gt052importS4.a(); }

      void b() { gt052importS4.b(); }


 

  static BitSet _FOLLOW_a_in_s30 = null;
  static BitSet get FOLLOW_a_in_s30() {
    if(_FOLLOW_a_in_s30 == null) 
      _FOLLOW_a_in_s30 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_s30;
  }



 }





// $ANTLR 3.4 t052importM6_t052importS6.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM6Parser.dart');
class t052importM6_t052importS6 extends Parser {

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int B = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  t052importM6Parser gt052importM6;  
  t052importM6Parser gParent;      



  t052importM6_t052importS6(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importM6 = gt052importM6;
	  this.gParent = gt052importM6;
  }



  t052importM6_t052importS6.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state, t052importM6Parser gt052importM6) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importM6 = gt052importM6;
    this.gParent = gt052importM6;
  }    

  List<String> get tokenNames() => t052importM6Parser._tokenNames;

  String get grammarFileName() => "t052importS6.g";

  String getRecognizerClassName() => "t052importM6_t052importS6";


  void capture(String t) {
    this.gt052importM6.capture(t);
  }


  // $ANTLR start "a"
  /* t052importS6.g:
   10:1: a : b ;*/
  void a() {
    try {
      /* t052importS6.g:
       10:3: ( b )*/
      /* t052importS6.g:
       10:5: b*/
      {
      	this.pushFollow(FOLLOW_b_in_a29);
      	gt052importM6.b();

      	this.state.fsp--;


      	 this.capture("S.a"); 


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
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_b_in_a29 = null;
  static BitSet get FOLLOW_b_in_a29() {
    if(_FOLLOW_b_in_a29 == null) 
      _FOLLOW_b_in_a29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a29;
  }



 }





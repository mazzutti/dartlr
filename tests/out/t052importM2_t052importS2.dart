// $ANTLR 3.4 t052importM2_t052importS2.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM2Parser.dart');
class t052importM2_t052importS2 extends Parser {

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  t052importM2Parser gt052importM2;  
  t052importM2Parser gParent;      



  t052importM2_t052importS2(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importM2 = gt052importM2;
	  this.gParent = gt052importM2;
  }



  t052importM2_t052importS2.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state, t052importM2Parser gt052importM2) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importM2 = gt052importM2;
    this.gParent = gt052importM2;
  }    

  List<String> get tokenNames() => t052importM2Parser._tokenNames;

  String get grammarFileName() => "t052importS2.g";

  String getRecognizerClassName() => "t052importM2_t052importS2";


  void capture(String t) {
    this.gt052importM2.capture(t);
  }


  // $ANTLR start "a"
  /* t052importS2.g:
   10:1: a[x] returns [String y] : B ;*/
  String a(x) {
    String y = null;


    try {
      /* t052importS2.g:
       10:25: ( B )*/
      /* t052importS2.g:
       10:27: B*/
      {
      	this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a34); 


      	this.capture("S.a"); y = "1000";


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return y;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_B_in_a34 = null;
  static BitSet get FOLLOW_B_in_a34() {
    if(_FOLLOW_B_in_a34 == null) 
      _FOLLOW_B_in_a34 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_B_in_a34;
  }



 }





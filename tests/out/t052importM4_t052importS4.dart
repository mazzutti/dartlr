// $ANTLR 3.4 t052importM4_t052importS4.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM4Parser.dart');
class t052importM4_t052importS4 extends Parser {

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  t052importM4Parser gt052importM4;  
  t052importM4Parser gParent;      



  t052importM4_t052importS4(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importM4 = gt052importM4;
	  this.gParent = gt052importM4;
  }



  t052importM4_t052importS4.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state, t052importM4Parser gt052importM4) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importM4 = gt052importM4;
    this.gParent = gt052importM4;
  }    

  List<String> get tokenNames() => t052importM4Parser._tokenNames;

  String get grammarFileName() => "t052importS4.g";

  String getRecognizerClassName() => "t052importM4_t052importS4";


  void capture(String t) {
    this.gt052importM4.capture(t);
  }


  // $ANTLR start "a"
  /* t052importS4.g:
   10:1: a : b ;*/
  void a() {
    try {
      /* t052importS4.g:
       10:3: ( b )*/
      /* t052importS4.g:
       10:5: b*/
      {
      	this.pushFollow(FOLLOW_b_in_a29);
      	this.b();

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


  // $ANTLR start "b"
  /* t052importS4.g:
   11:1: b : B ;*/
  void b() {
    try {
      /* t052importS4.g:
       11:3: ( B )*/
      /* t052importS4.g:
       11:5: B*/
      {
      	this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_b39); 


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



 

  static BitSet _FOLLOW_b_in_a29 = null;
  static BitSet get FOLLOW_b_in_a29() {
    if(_FOLLOW_b_in_a29 == null) 
      _FOLLOW_b_in_a29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a29;
  }

  static BitSet _FOLLOW_B_in_b39 = null;
  static BitSet get FOLLOW_B_in_b39() {
    if(_FOLLOW_B_in_b39 == null) 
      _FOLLOW_B_in_b39 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_B_in_b39;
  }



 }





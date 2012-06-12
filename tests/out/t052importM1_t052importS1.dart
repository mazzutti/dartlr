// $ANTLR 3.4 t052importM1_t052importS1.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM1Parser.dart');
class t052importM1_t052importS1 extends Parser {

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  t052importM1Parser gt052importM1;  
  t052importM1Parser gParent;      



  t052importM1_t052importS1(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importM1 = gt052importM1;
	  this.gParent = gt052importM1;
  }



  t052importM1_t052importS1.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state, t052importM1Parser gt052importM1) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importM1 = gt052importM1;
    this.gParent = gt052importM1;
  }    

  List<String> get tokenNames() => t052importM1Parser._tokenNames;

  String get grammarFileName() => "t052importS1.g";

  String getRecognizerClassName() => "t052importM1_t052importS1";


  void capture(String t) {
    this.gt052importM1.capture(t);
  }


  // $ANTLR start "a"
  /* t052importS1.g:
   11:1: a : B ;*/
  void a() {
    try {
      /* t052importS1.g:
       11:3: ( B )*/
      /* t052importS1.g:
       11:5: B*/
      {
      	this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a30); 


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



 

  static BitSet _FOLLOW_B_in_a30 = null;
  static BitSet get FOLLOW_B_in_a30() {
    if(_FOLLOW_B_in_a30 == null) 
      _FOLLOW_B_in_a30 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_B_in_a30;
  }



 }





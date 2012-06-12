// $ANTLR 3.4 t052importM3_t052importS3.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM3Parser.dart');
class t052importM3_t052importS3 extends Parser {

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int B = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  t052importM3Parser gt052importM3;  
  t052importM3Parser gParent;      



  t052importM3_t052importS3(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importM3 = gt052importM3;
	  this.gParent = gt052importM3;
  }



  t052importM3_t052importS3.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state, t052importM3Parser gt052importM3) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importM3 = gt052importM3;
    this.gParent = gt052importM3;
  }    

  List<String> get tokenNames() => t052importM3Parser._tokenNames;

  String get grammarFileName() => "t052importS3.g";

  String getRecognizerClassName() => "t052importM3_t052importS3";


  void capture(String t) {
    this.gt052importM3.capture(t);
  }
  void foo() {
    this.capture("foo");
  }


  // $ANTLR start "a"
  /* t052importS3.g:
   14:1: a : B ;*/
  void a() {
    try {
      /* t052importS3.g:
       14:3: ( B )*/
      /* t052importS3.g:
       14:5: B*/
      {
      	this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a38); 


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



 

  static BitSet _FOLLOW_B_in_a38 = null;
  static BitSet get FOLLOW_B_in_a38() {
    if(_FOLLOW_B_in_a38 == null) 
      _FOLLOW_B_in_a38 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_B_in_a38;
  }



 }





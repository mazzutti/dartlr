// $ANTLR 3.4 t052importS2.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importS2 extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B"
  ];

  static final int EOF = -1;
  static final int B = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t052importS2(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t052importS2.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t052importS2._tokenNames;

  String get grammarFileName() => "t052importS2.g";

  String getRecognizerClassName() => "t052importS2";


  void capture(String t) {
    this.gt052importM2.capture(t);
  }


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t052importS2.g:
   10:1: a[x] returns [String y] : B ;*/
  String a(x) {
    String y = null;


    try {
      /* ../runtime/dart/tests/grammars/t052importS2.g:
       10:25: ( B )*/
      /* ../runtime/dart/tests/grammars/t052importS2.g:
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





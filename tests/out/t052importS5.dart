// $ANTLR 3.4 t052importS5.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importS5 extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "B", "C"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t052importS5(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t052importS5.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t052importS5._tokenNames;

  String get grammarFileName() => "t052importS5.g";

  String getRecognizerClassName() => "t052importS5";


  void capture(String t) {
    this.gt052importM5.capture(t);
  }


  // $ANTLR start "x"
  /* ../runtime/dart/tests/grammars/t052importS5.g:
   12:1: x : A ;*/
  void x() {
    try {
      /* ../runtime/dart/tests/grammars/t052importS5.g:
       12:3: ( A )*/
      /* ../runtime/dart/tests/grammars/t052importS5.g:
       12:5: A*/
      {
      	this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_x43); 


      	this.capture("S.x ");


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
  // $ANTLR end "x"



 

  static BitSet _FOLLOW_A_in_x43 = null;
  static BitSet get FOLLOW_A_in_x43() {
    if(_FOLLOW_A_in_x43 == null) 
      _FOLLOW_A_in_x43 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_A_in_x43;
  }



 }





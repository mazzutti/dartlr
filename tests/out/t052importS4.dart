// $ANTLR 3.4 t052importS4.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importS4 extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B"
  ];

  static final int EOF = -1;
  static final int B = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t052importS4(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t052importS4.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t052importS4._tokenNames;

  String get grammarFileName() => "t052importS4.g";

  String getRecognizerClassName() => "t052importS4";


  void capture(String t) {
    this.gt052importM4.capture(t);
  }


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t052importS4.g:
   10:1: a : b ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t052importS4.g:
       10:3: ( b )*/
      /* ../runtime/dart/tests/grammars/t052importS4.g:
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
  /* ../runtime/dart/tests/grammars/t052importS4.g:
   11:1: b : B ;*/
  void b() {
    try {
      /* ../runtime/dart/tests/grammars/t052importS4.g:
       11:3: ( B )*/
      /* ../runtime/dart/tests/grammars/t052importS4.g:
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





// $ANTLR 3.4 t052importS1.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importS1 extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B"
  ];

  static final int EOF = -1;
  static final int B = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t052importS1(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t052importS1.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t052importS1._tokenNames;

  String get grammarFileName() => "t052importS1.g";

  String getRecognizerClassName() => "t052importS1";


  void capture(String t) {
    this.gt052importM1.capture(t);
  }


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t052importS1.g:
   11:1: a : B ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t052importS1.g:
       11:3: ( B )*/
      /* ../runtime/dart/tests/grammars/t052importS1.g:
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





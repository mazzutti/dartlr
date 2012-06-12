// $ANTLR 3.4 t052importT5.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importT5 extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "B", "C"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t052importT5(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t052importT5.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t052importT5._tokenNames;

  String get grammarFileName() => "t052importT5.g";

  String getRecognizerClassName() => "t052importT5";


  void capture(String t) {
    this.gt052importM5.capture(t);
  }


  // $ANTLR start "y"
  /* ../runtime/dart/tests/grammars/t052importT5.g:
   11:1: y : A ;*/
  void y() {
    try {
      /* ../runtime/dart/tests/grammars/t052importT5.g:
       11:3: ( A )*/
      /* ../runtime/dart/tests/grammars/t052importT5.g:
       11:5: A*/
      {
      	this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_y43); 


      	this.capture("T.y");


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
  // $ANTLR end "y"



 

  static BitSet _FOLLOW_A_in_y43 = null;
  static BitSet get FOLLOW_A_in_y43() {
    if(_FOLLOW_A_in_y43 == null) 
      _FOLLOW_A_in_y43 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_A_in_y43;
  }



 }





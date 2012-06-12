// $ANTLR 3.4 t052importT4.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t052importT4 extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B"
  ];

  static final int EOF = -1;
  static final int B = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t052importT4(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t052importT4.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t052importT4._tokenNames;

  String get grammarFileName() => "t052importT4.g";

  String getRecognizerClassName() => "t052importT4";


  void capture(String t) {
    this.gt052importM4.capture(t);
  }


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t052importT4.g:
   10:1: a : B ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t052importT4.g:
       10:3: ( B )*/
      /* ../runtime/dart/tests/grammars/t052importT4.g:
       10:5: B*/
      {
      	this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a29); 


      	this.capture("T.a");


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



 

  static BitSet _FOLLOW_B_in_a29 = null;
  static BitSet get FOLLOW_B_in_a29() {
    if(_FOLLOW_B_in_a29 == null) 
      _FOLLOW_B_in_a29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_B_in_a29;
  }



 }





// $ANTLR 3.4 t052importM2Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM2_t052importS2.dart');
class t052importM2Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B", "WS"
  ];

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  t052importM2_t052importS2 gt052importS2;  
  List<Parser> get delegates() => <Parser>[gt052importS2]; 
  
      



  t052importM2Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importS2 = new t052importM2_t052importS2.fromRecognizerSharedState(input, state, this);
  }



  t052importM2Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importS2 = new t052importM2_t052importS2.fromRecognizerSharedState(input, state, this);
  }    

  List<String> get tokenNames() => t052importM2Parser._tokenNames;

  String get grammarFileName() => "t052importM2.g";

  String getRecognizerClassName() => "t052importM2Parser";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t052importM2.g:
   6:1: s : label= a[3] ;*/
  void s() {
    String label =null;


    try {
      /* ../runtime/dart/tests/grammars/t052importM2.g:
       6:3: (label= a[3] )*/
      /* ../runtime/dart/tests/grammars/t052importM2.g:
       6:5: label= a[3]*/
      {
      	this.pushFollow(FOLLOW_a_in_s29);
      	label = this.a(3);

      	this.state.fsp--;


      	this.capture("${label}");


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
  // $ANTLR end "s"

      String a(x) { return gt052importS2.a(x); }


 

  static BitSet _FOLLOW_a_in_s29 = null;
  static BitSet get FOLLOW_a_in_s29() {
    if(_FOLLOW_a_in_s29 == null) 
      _FOLLOW_a_in_s29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_s29;
  }



 }





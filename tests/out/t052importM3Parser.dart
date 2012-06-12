// $ANTLR 3.4 t052importM3Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM3_t052importS3.dart');
class t052importM3Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B", "WS", "'b'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int B = 4;
  static final int WS = 5;
  t052importM3_t052importS3 gt052importS3;  
  List<Parser> get delegates() => <Parser>[gt052importS3]; 
  
      



  t052importM3Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importS3 = new t052importM3_t052importS3.fromRecognizerSharedState(input, state, this);
  }



  t052importM3Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importS3 = new t052importM3_t052importS3.fromRecognizerSharedState(input, state, this);
  }    

  List<String> get tokenNames() => t052importM3Parser._tokenNames;

  String get grammarFileName() => "t052importM3.g";

  String getRecognizerClassName() => "t052importM3Parser";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t052importM3.g:
   6:1: s : 'b' ;*/
  void s() {
    try {
      /* ../runtime/dart/tests/grammars/t052importM3.g:
       6:3: ( 'b' )*/
      /* ../runtime/dart/tests/grammars/t052importM3.g:
       6:5: 'b'*/
      {
      	this.matchSymbol(this.input,
      	    6,FOLLOW_6_in_s27); 


      	this.gt052importS3.foo();


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

      void a() { gt052importS3.a(); }


 

  static BitSet _FOLLOW_6_in_s27 = null;
  static BitSet get FOLLOW_6_in_s27() {
    if(_FOLLOW_6_in_s27 == null) 
      _FOLLOW_6_in_s27 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_6_in_s27;
  }



 }





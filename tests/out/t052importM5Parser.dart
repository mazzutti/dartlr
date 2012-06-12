// $ANTLR 3.4 t052importM5Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM5_t052importS5.dart');
#import('t052importM5_t052importT5.dart');
class t052importM5Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "B", "C", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int WS = 7;
  t052importM5_t052importS5 gt052importS5;
  t052importM5_t052importT5 gt052importT5;  
  List<Parser> get delegates() => <Parser>[gt052importS5, gt052importT5]; 
  
      



  t052importM5Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importS5 = new t052importM5_t052importS5.fromRecognizerSharedState(input, state, this);
	  this.gt052importT5 = new t052importM5_t052importT5.fromRecognizerSharedState(input, state, this);
  }



  t052importM5Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importS5 = new t052importM5_t052importS5.fromRecognizerSharedState(input, state, this);
    this.gt052importT5 = new t052importM5_t052importT5.fromRecognizerSharedState(input, state, this);
  }    

  List<String> get tokenNames() => t052importM5Parser._tokenNames;

  String get grammarFileName() => "t052importM5.g";

  String getRecognizerClassName() => "t052importM5Parser";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t052importM5.g:
   6:1: s : x y ;*/
  void s() {
    try {
      /* ../runtime/dart/tests/grammars/t052importM5.g:
       6:3: ( x y )*/
      /* ../runtime/dart/tests/grammars/t052importM5.g:
       6:5: x y*/
      {
      	this.pushFollow(FOLLOW_x_in_s30);
      	this.x();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_y_in_s32);
      	this.y();

      	this.state.fsp--;


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

      void y() { gt052importT5.y(); }

      void x() { gt052importS5.x(); }


 

  static BitSet _FOLLOW_x_in_s30 = null;
  static BitSet get FOLLOW_x_in_s30() {
    if(_FOLLOW_x_in_s30 == null) 
      _FOLLOW_x_in_s30 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_x_in_s30;
  }

  static BitSet _FOLLOW_y_in_s32 = null;
  static BitSet get FOLLOW_y_in_s32() {
    if(_FOLLOW_y_in_s32 == null) 
      _FOLLOW_y_in_s32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_y_in_s32;
  }



 }





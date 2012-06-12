// $ANTLR 3.4 t052importM8_t052importS8.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM8.dart');
class t052importM8_t052importS8 extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int Tokens = 5;
  static final int WS = 6;  

  void capture(String t) {
    this.gt052importM8.capture(t);
  }
  


  // delegates
  // delegators
  t052importM8 gt052importM8;
  t052importM8 gParent;
  List<Lexer> get delegates() => <Lexer>[];

  t052importM8_t052importS8([CharStream input, t052importM8 gt052importM8]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.gt052importM8 = gt052importM8;
    this.gParent = gt052importM8;
  }

  t052importM8_t052importS8.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state, t052importM8 gt052importM8) 
      : super.fromRecognizerSharedState(input,state) {
    this.gt052importM8 = gt052importM8;
    this.gParent = gt052importM8;
  }

  String get grammarFileName() => "t052importS8.g";

  String getRecognizerClassName() => "t052importM8_t052importS8";
  
  void mTokens() {
    /* t052importS8.g:
     1:8: ( A )*/
    /* t052importS8.g:
     1:10: A*/
    {
    	gt052importM8.mA(); 


    }


  }  

  
}



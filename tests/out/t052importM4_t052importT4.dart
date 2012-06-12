// $ANTLR 3.4 t052importM4_t052importT4.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#import('t052importM4Parser.dart');
class t052importM4_t052importT4 extends Parser {

  static final int EOF = -1;
  static final int B = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  t052importM4Parser gt052importM4;  
  t052importM4Parser gParent;      



  t052importM4_t052importT4(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.gt052importM4 = gt052importM4;
	  this.gParent = gt052importM4;
  }



  t052importM4_t052importT4.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state, t052importM4Parser gt052importM4) 
      : super.fromRecognizerSharedState(input, state) {
    
    this.gt052importM4 = gt052importM4;
    this.gParent = gt052importM4;
  }    

  List<String> get tokenNames() => t052importM4Parser._tokenNames;

  String get grammarFileName() => "t052importT4.g";

  String getRecognizerClassName() => "t052importM4_t052importT4";


  void capture(String t) {
    this.gt052importM4.capture(t);
  }





 


 }





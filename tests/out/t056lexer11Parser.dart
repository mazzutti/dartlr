// $ANTLR 3.4 t056lexer11Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer11Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "B"
  ];

  static final int EOF = -1;
  static final int B = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t056lexer11Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t056lexer11Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t056lexer11Parser._tokenNames;

  String get grammarFileName() => "t056lexer11.g";

  String getRecognizerClassName() => "t056lexer11Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t056lexer11.g:
   3:1: a : B ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t056lexer11.g:
       3:3: ( B )*/
      /* ../runtime/dart/tests/grammars/t056lexer11.g:
       3:5: B*/
      {
      	this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a16); 


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



 

  static BitSet _FOLLOW_B_in_a16 = null;
  static BitSet get FOLLOW_B_in_a16() {
    if(_FOLLOW_B_in_a16 == null) 
      _FOLLOW_B_in_a16 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_B_in_a16;
  }



 }





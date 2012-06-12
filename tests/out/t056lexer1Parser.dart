// $ANTLR 3.4 t056lexer1Parser.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer1Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t056lexer1Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t056lexer1Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t056lexer1Parser._tokenNames;

  String get grammarFileName() => "t056lexer1.g";

  String getRecognizerClassName() => "t056lexer1Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t056lexer1.g:
   3:1: a : A ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t056lexer1.g:
       3:3: ( A )*/
      /* ../runtime/dart/tests/grammars/t056lexer1.g:
       3:5: A*/
      {
      	this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a16); 


      	this.capture("${this.input}");


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



 

  static BitSet _FOLLOW_A_in_a16 = null;
  static BitSet get FOLLOW_A_in_a16() {
    if(_FOLLOW_A_in_a16 == null) 
      _FOLLOW_A_in_a16 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_A_in_a16;
  }



 }





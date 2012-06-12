// $ANTLR 3.4 t056lexer4Parser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer4Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "I", "WS", "X"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int I = 5;
  static final int WS = 6;
  static final int X = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t056lexer4Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t056lexer4Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t056lexer4Parser._tokenNames;

  String get grammarFileName() => "t056lexer4.g";

  String getRecognizerClassName() => "t056lexer4Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t056lexer4.g:
   4:1: a : X EOF ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t056lexer4.g:
       4:3: ( X EOF )*/
      /* ../runtime/dart/tests/grammars/t056lexer4.g:
       4:5: X EOF*/
      {
      	this.matchSymbol(this.input,
      	    X,FOLLOW_X_in_a21); 


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a23); 


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



 

  static BitSet _FOLLOW_X_in_a21 = null;
  static BitSet get FOLLOW_X_in_a21() {
    if(_FOLLOW_X_in_a21 == null) 
      _FOLLOW_X_in_a21 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_X_in_a21;
  }

  static BitSet _FOLLOW_EOF_in_a23 = null;
  static BitSet get FOLLOW_EOF_in_a23() {
    if(_FOLLOW_EOF_in_a23 == null) 
      _FOLLOW_EOF_in_a23 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a23;
  }



 }





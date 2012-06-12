// $ANTLR 3.4 t056lexer3Parser.g 2012-06-07 21:59:40
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t056lexer3Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "I", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int I = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t056lexer3Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t056lexer3Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t056lexer3Parser._tokenNames;

  String get grammarFileName() => "t056lexer3.g";

  String getRecognizerClassName() => "t056lexer3Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t056lexer3.g:
   3:1: a : A EOF ;*/
  void a() {
    Token A1 = null;

    try {
      /* ../runtime/dart/tests/grammars/t056lexer3.g:
       3:3: ( A EOF )*/
      /* ../runtime/dart/tests/grammars/t056lexer3.g:
       3:5: A EOF*/
      {
      	A1 = this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a16); 


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a18); 


      	this.capture("${(A1 != null) ? A1.text : null}, channel=${(A1!=null) ? A1.channel : 0}");


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
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_A_in_a16;
  }

  static BitSet _FOLLOW_EOF_in_a18 = null;
  static BitSet get FOLLOW_EOF_in_a18() {
    if(_FOLLOW_EOF_in_a18 == null) 
      _FOLLOW_EOF_in_a18 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a18;
  }



 }





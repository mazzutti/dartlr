// $ANTLR 3.4 t023scopesParser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t023scopesParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  List prog_stack;


  t023scopesParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.prog_stack = new List();

  }



  t023scopesParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.prog_stack = new List();

    
  }    

  List<String> get tokenNames() => t023scopesParser._tokenNames;

  String get grammarFileName() => "t023scopes.g";

  String getRecognizerClassName() => "t023scopesParser";


  // $ANTLR start "prog"
  /* ../runtime/dart/tests/grammars/t023scopes.g:
   7:1: prog : ID ;*/
  void prog() {
    this.prog_stack.add(new _prog_scope());
    Token ID1 = null;

    try {
      /* ../runtime/dart/tests/grammars/t023scopes.g:
       11:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t023scopes.g:
       11:9: ID*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_prog34); 


      	this.prog_stack.last().name =(ID1 != null) ? ID1.text : null;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.prog_stack.removeLast();
  	}
  	return ;
  }
  // $ANTLR end "prog"



 

  static BitSet _FOLLOW_ID_in_prog34 = null;
  static BitSet get FOLLOW_ID_in_prog34() {
    if(_FOLLOW_ID_in_prog34 == null) 
      _FOLLOW_ID_in_prog34 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_prog34;
  }



 }



class _prog_scope {
    String name;
}




// $ANTLR 3.4 t049treeparserfWalker.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparserfWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t049treeparserfWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t049treeparserfWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t049treeparserfWalker._tokenNames;

  String get grammarFileName() => "t049treeparserfWalker.g";

  String getRecognizerClassName() => "t049treeparserfWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserfWalker.g:
   7:1: a : ^( ID ( INT )? ) ;*/
  void a() {
    this.traceIn("a", 1);
    CommonTree ID1 = null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserfWalker.g:
       7:3: ( ^( ID ( INT )? ) )*/
      /* ../runtime/dart/tests/grammars/t049treeparserfWalker.g:
       7:5: ^( ID ( INT )? )*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a35); 


      	if(this.input.LA(1) == Token.DOWN) {
      	  this.matchSymbol(input, Token.DOWN, null); 
      	  /* ../runtime/dart/tests/grammars/t049treeparserfWalker.g:
      	   7:10: ( INT )?*/
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 5/*INT*/)) {
      	    alt1 = 1;
      	  }
      	  switch (alt1) {
      	    case 1 :
      	      /* ../runtime/dart/tests/grammars/t049treeparserfWalker.g:
      	       7:10: INT*/
      	      {
      	      	this.matchSymbol(this.input,
      	      	    INT,FOLLOW_INT_in_a37); 


      	      }
      	      break;

      	  }


      	  this.matchSymbol(this.input, Token.UP, null); 
      	}


      	this.capture("${ID1}");


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("a", 1);
  	}
  	return ;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a35 = null;
  static BitSet get FOLLOW_ID_in_a35() {
    if(_FOLLOW_ID_in_a35 == null) 
      _FOLLOW_ID_in_a35 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a35;
  }

  static BitSet _FOLLOW_INT_in_a37 = null;
  static BitSet get FOLLOW_INT_in_a37() {
    if(_FOLLOW_INT_in_a37 == null) 
      _FOLLOW_INT_in_a37 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a37;
  }



 }





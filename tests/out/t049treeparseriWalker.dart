// $ANTLR 3.4 t049treeparseriWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparseriWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t049treeparseriWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t049treeparseriWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t049treeparseriWalker._tokenNames;

  String get grammarFileName() => "t049treeparseriWalker.g";

  String getRecognizerClassName() => "t049treeparseriWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparseriWalker.g:
   6:1: a : ^( ID ( INT )? ) ;*/
  void a() {
    this.traceIn("a", 1);
    CommonTree ID1 = null;

    var x=0;
    try {
      /* ../runtime/dart/tests/grammars/t049treeparseriWalker.g:
       6:20: ( ^( ID ( INT )? ) )*/
      /* ../runtime/dart/tests/grammars/t049treeparseriWalker.g:
       6:22: ^( ID ( INT )? )*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a39); 


      	x=1;


      	x=2;


      	if(this.input.LA(1) == Token.DOWN) {
      	  this.matchSymbol(input, Token.DOWN, null); 
      	  /* ../runtime/dart/tests/grammars/t049treeparseriWalker.g:
      	   6:41: ( INT )?*/
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 5/*INT*/)) {
      	    alt1 = 1;
      	  }
      	  switch (alt1) {
      	    case 1 :
      	      /* ../runtime/dart/tests/grammars/t049treeparseriWalker.g:
      	       6:41: INT*/
      	      {
      	      	this.matchSymbol(this.input,
      	      	    INT,FOLLOW_INT_in_a45); 


      	      }
      	      break;

      	  }


      	  this.matchSymbol(this.input, Token.UP, null); 
      	}


      	this.capture("${ID1}, ${x}");


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



 

  static BitSet _FOLLOW_ID_in_a39 = null;
  static BitSet get FOLLOW_ID_in_a39() {
    if(_FOLLOW_ID_in_a39 == null) 
      _FOLLOW_ID_in_a39 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a39;
  }

  static BitSet _FOLLOW_INT_in_a45 = null;
  static BitSet get FOLLOW_INT_in_a45() {
    if(_FOLLOW_INT_in_a45 == null) 
      _FOLLOW_INT_in_a45 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a45;
  }



 }





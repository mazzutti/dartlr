// $ANTLR 3.4 t049treeparserhWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparserhWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "SEMI"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int SEMI = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t049treeparserhWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t049treeparserhWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t049treeparserhWalker._tokenNames;

  String get grammarFileName() => "t049treeparserhWalker.g";

  String getRecognizerClassName() => "t049treeparserhWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
   7:1: a : ^( ID ( INT )? b ) SEMI ;*/
  void a() {
    this.traceIn("a", 1);
    CommonTree ID1 = null;
    t049treeparserhWalker_b_return b2 =null;


    try {
      /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
       7:3: ( ^( ID ( INT )? b ) SEMI )*/
      /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
       7:5: ^( ID ( INT )? b ) SEMI*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a35); 


      	if(this.input.LA(1) == Token.DOWN) {
      	  this.matchSymbol(input, Token.DOWN, null); 
      	  /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
      	   7:10: ( INT )?*/
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 5/*INT*/)) {
      	    alt1 = 1;
      	  }
      	  switch (alt1) {
      	    case 1 :
      	      /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
      	       7:10: INT*/
      	      {
      	      	this.matchSymbol(this.input,
      	      	    INT,FOLLOW_INT_in_a37); 


      	      }
      	      break;

      	  }


      	  this.pushFollow(FOLLOW_b_in_a40);
      	  b2 = this.b();

      	  this.state.fsp--;


      	  this.matchSymbol(this.input, Token.UP, null); 
      	}


      	this.matchSymbol(this.input,
      	    SEMI,FOLLOW_SEMI_in_a43); 


      	this.capture("${ID1}, ${(b2 != null) ? this.input.tokenStream.toRangeString(this.input.treeAdaptor.getTokenStartIndex(b2.start),this.input.treeAdaptor.getTokenStopIndex(b2.start)):null}");


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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
   10:1: b : ( ID )? ;*/
  t049treeparserhWalker_b_return b() {
    this.traceIn("b", 2);
    t049treeparserhWalker_b_return retval = new t049treeparserhWalker_b_return();
    retval.start = this.input.LT(1);


    try {
      /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
       10:3: ( ( ID )? )*/
      /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
       10:5: ( ID )?*/
      {
      	/* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
      	 10:5: ( ID )?*/
      	int alt2 = 2;
      	int LA2_0 = this.input.LA(1);

      	if((LA2_0 == 4/*ID*/)) {
      	  alt2 = 1;
      	}
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t049treeparserhWalker.g:
      	     10:5: ID*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_b59); 


      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("b", 2);
  	}
  	return retval;
  }
  // $ANTLR end "b"



 

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
        new BitSet.fromList([0x0000000000000018]);
    return _FOLLOW_INT_in_a37;
  }

  static BitSet _FOLLOW_b_in_a40 = null;
  static BitSet get FOLLOW_b_in_a40() {
    if(_FOLLOW_b_in_a40 == null) 
      _FOLLOW_b_in_a40 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_b_in_a40;
  }

  static BitSet _FOLLOW_SEMI_in_a43 = null;
  static BitSet get FOLLOW_SEMI_in_a43() {
    if(_FOLLOW_SEMI_in_a43 == null) 
      _FOLLOW_SEMI_in_a43 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_SEMI_in_a43;
  }

  static BitSet _FOLLOW_ID_in_b59 = null;
  static BitSet get FOLLOW_ID_in_b59() {
    if(_FOLLOW_ID_in_b59 == null) 
      _FOLLOW_ID_in_b59 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b59;
  }



 }




class t049treeparserhWalker_b_return extends TreeRuleReturnScope {
}

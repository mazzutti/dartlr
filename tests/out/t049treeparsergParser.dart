// $ANTLR 3.4 t049treeparsergParser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparsergParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "SEMI", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int SEMI = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t049treeparsergParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t049treeparsergParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t049treeparsergParser._tokenNames;

  String get grammarFileName() => "t049treeparserg.g";

  String getRecognizerClassName() => "t049treeparsergParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserg.g:
   6:1: a : ID ( INT )? SEMI -> ^( ID ( INT )? ) SEMI ;*/
  t049treeparsergParser_a_return a() {
    t049treeparsergParser_a_return retval = new t049treeparsergParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;
    Token SEMI3 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    Object SEMI3_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_SEMI=new RewriteRuleTokenStream(this._adaptor,"token SEMI");

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserg.g:
       6:3: ( ID ( INT )? SEMI -> ^( ID ( INT )? ) SEMI )*/
      /* ../runtime/dart/tests/grammars/t049treeparserg.g:
       6:5: ID ( INT )? SEMI*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a31); 
      	 
      	stream_ID.add(ID1);


      	/* ../runtime/dart/tests/grammars/t049treeparserg.g:
      	 6:8: ( INT )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 5/*INT*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t049treeparserg.g:
      	     6:8: INT*/
      	    {
      	    	INT2 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_a33); 
      	    	 
      	    	stream_INT.add(INT2);


      	    }
      	    break;

      	}


      	SEMI3 = this.matchSymbol(this.input,
      	    SEMI,FOLLOW_SEMI_in_a36); 
      	 
      	stream_SEMI.add(SEMI3);


      	// AST REWRITE
      	// elements: INT, ID, SEMI
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 6:18: -> ^( ID ( INT )? ) SEMI*/
      	{
      	    /* ../runtime/dart/tests/grammars/t049treeparserg.g:
      	     6:21: ^( ID ( INT )? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_ID.nextNode()
      	    	, root_1);

      	    	/* ../runtime/dart/tests/grammars/t049treeparserg.g:
      	    	 6:26: ( INT )?*/
      	    	if(stream_INT.hasNext()) {
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_INT.nextNode()
      	    	    );

      	    	}
      	    	stream_INT.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	    this._adaptor.addChild(root_0, 
      	    stream_SEMI.nextNode()
      	    );

      	}


      	retval.tree = root_0;

      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_INT_in_a33 = null;
  static BitSet get FOLLOW_INT_in_a33() {
    if(_FOLLOW_INT_in_a33 == null) 
      _FOLLOW_INT_in_a33 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_INT_in_a33;
  }

  static BitSet _FOLLOW_SEMI_in_a36 = null;
  static BitSet get FOLLOW_SEMI_in_a36() {
    if(_FOLLOW_SEMI_in_a36 == null) 
      _FOLLOW_SEMI_in_a36 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_SEMI_in_a36;
  }



 }




class t049treeparsergParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

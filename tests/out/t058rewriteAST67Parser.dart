// $ANTLR 3.4 t058rewriteAST67Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST67Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST67Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST67Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST67Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST67.g";

  String getRecognizerClassName() => "t058rewriteAST67Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
   4:1: a : ( INT | ID ) -> ( INT )? ( ID )? ;*/
  t058rewriteAST67Parser_a_return a() {
    t058rewriteAST67Parser_a_return retval = new t058rewriteAST67Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT1 = null;
    Token ID2 = null;

    Object INT1_tree=null;
    Object ID2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
       4:2: ( ( INT | ID ) -> ( INT )? ( ID )? )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
       4:4: ( INT | ID )*/
      {
      	/* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
      	 4:4: ( INT | ID )*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 5/*INT*/)) {
      	  alt1 = 1;
      	}
      	else if((LA1_0 == 4/*ID*/)) {
      	  alt1 = 2;
      	}
      	else {
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 1, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
      	     4:5: INT*/
      	    {
      	    	INT1 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_a22); 
      	    	 
      	    	stream_INT.add(INT1);


      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
      	     4:9: ID*/
      	    {
      	    	ID2 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_a24); 
      	    	 
      	    	stream_ID.add(ID2);


      	    }
      	    break;

      	}


      	// AST REWRITE
      	// elements: ID, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:13: -> ( INT )? ( ID )?*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
      	     4:16: ( INT )?*/
      	    if(stream_INT.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_INT.nextNode()
      	        );

      	    }
      	    stream_INT.reset();

      	    /* ../runtime/dart/tests/grammars/t058rewriteAST67.g:
      	     4:21: ( ID )?*/
      	    if(stream_ID.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_ID.nextNode()
      	        );

      	    }
      	    stream_ID.reset();

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



 

  static BitSet _FOLLOW_INT_in_a22 = null;
  static BitSet get FOLLOW_INT_in_a22() {
    if(_FOLLOW_INT_in_a22 == null) 
      _FOLLOW_INT_in_a22 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a22;
  }

  static BitSet _FOLLOW_ID_in_a24 = null;
  static BitSet get FOLLOW_ID_in_a24() {
    if(_FOLLOW_ID_in_a24 == null) 
      _FOLLOW_ID_in_a24 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a24;
  }



 }




class t058rewriteAST67Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t058rewriteAST74Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST74Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'", "'-'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST74Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST74Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST74Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST74.g";

  String getRecognizerClassName() => "t058rewriteAST74Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
   4:1: a : ( ID )? INT -> ( ID )+ INT ;*/
  t058rewriteAST74Parser_a_return a() {
    t058rewriteAST74Parser_a_return retval = new t058rewriteAST74Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
       4:3: ( ( ID )? INT -> ( ID )+ INT )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
       4:5: ( ID )? INT*/
      {
      	/* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
      	 4:5: ( ID )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 4/*ID*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
      	     4:5: ID*/
      	    {
      	    	ID1 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_a21); 
      	    	 
      	    	stream_ID.add(ID1);


      	    }
      	    break;

      	}


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a24); 
      	 
      	stream_INT.add(INT2);


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
      	/* 4:13: -> ( ID )+ INT*/
      	{
      	    if(!(stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_ID.nextNode()
      	        );

      	    }
      	    stream_ID.reset();

      	    this._adaptor.addChild(root_0, 
      	    stream_INT.nextNode()
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


  // $ANTLR start "op"
  /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
   5:1: op : ( '+' | '-' );*/
  t058rewriteAST74Parser_op_return op() {
    t058rewriteAST74Parser_op_return retval = new t058rewriteAST74Parser_op_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set3 = null;

    Object set3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
       5:4: ( '+' | '-' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST74.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set3 = this.input.LT(1);

      	if((this.input.LA(1) >= 7 && this.input.LA(1) <= 8)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set3));
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


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
  // $ANTLR end "op"



 

  static BitSet _FOLLOW_ID_in_a21 = null;
  static BitSet get FOLLOW_ID_in_a21() {
    if(_FOLLOW_ID_in_a21 == null) 
      _FOLLOW_ID_in_a21 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a21;
  }

  static BitSet _FOLLOW_INT_in_a24 = null;
  static BitSet get FOLLOW_INT_in_a24() {
    if(_FOLLOW_INT_in_a24 == null) 
      _FOLLOW_INT_in_a24 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a24;
  }



 }




class t058rewriteAST74Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST74Parser_op_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

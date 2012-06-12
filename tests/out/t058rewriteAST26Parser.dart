// $ANTLR 3.4 t058rewriteAST26Parser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST26Parser extends Parser {

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


  t058rewriteAST26Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST26Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST26Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST26.g";

  String getRecognizerClassName() => "t058rewriteAST26Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
   4:1: a : op INT -> ^( op INT ) ;*/
  t058rewriteAST26Parser_a_return a() {
    t058rewriteAST26Parser_a_return retval = new t058rewriteAST26Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT2 = null;
    t058rewriteAST26Parser_op_return op1 =null;


    Object INT2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleSubtreeStream stream_op=new RewriteRuleSubtreeStream(this._adaptor,"rule op");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
       4:3: ( op INT -> ^( op INT ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
       4:5: op INT*/
      {
      	this.pushFollow(FOLLOW_op_in_a21);
      	op1 = this.op();

      	this.state.fsp--;

      	stream_op.add(op1.tree);

      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a23); 
      	 
      	stream_INT.add(INT2);


      	// AST REWRITE
      	// elements: INT, op
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:12: -> ^( op INT )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
      	     4:15: ^( op INT )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_op.nextNode(), root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_INT.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
   5:1: op : ( '+' | '-' );*/
  t058rewriteAST26Parser_op_return op() {
    t058rewriteAST26Parser_op_return retval = new t058rewriteAST26Parser_op_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set3 = null;

    Object set3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
       5:4: ( '+' | '-' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST26.g:
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



 

  static BitSet _FOLLOW_op_in_a21 = null;
  static BitSet get FOLLOW_op_in_a21() {
    if(_FOLLOW_op_in_a21 == null) 
      _FOLLOW_op_in_a21 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_op_in_a21;
  }

  static BitSet _FOLLOW_INT_in_a23 = null;
  static BitSet get FOLLOW_INT_in_a23() {
    if(_FOLLOW_INT_in_a23 == null) 
      _FOLLOW_INT_in_a23 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a23;
  }



 }




class t058rewriteAST26Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST26Parser_op_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

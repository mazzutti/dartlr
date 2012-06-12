// $ANTLR 3.4 t058rewriteAST61Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST61Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "WS"
  ];

  static final int EOF = -1;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST61Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST61Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST61Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST61.g";

  String getRecognizerClassName() => "t058rewriteAST61Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
   5:1: a : x= ID (y= b )? -> $x ( $y)? ;*/
  t058rewriteAST61Parser_a_return a() {
    t058rewriteAST61Parser_a_return retval = new t058rewriteAST61Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token x = null;
    t058rewriteAST61Parser_b_return y =null;


    Object x_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
       5:3: (x= ID (y= b )? -> $x ( $y)? )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
       5:5: x= ID (y= b )?*/
      {
      	x = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a28); 
      	 
      	stream_ID.add(x);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
      	 5:10: (y= b )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 5/*ID*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
      	     5:11: y= b*/
      	    {
      	    	this.pushFollow(FOLLOW_b_in_a33);
      	    	y = this.b();

      	    	this.state.fsp--;

      	    	stream_b.add(y.tree);

      	    }
      	    break;

      	}


      	// AST REWRITE
      	// elements: x, y
      	// token labels: x
      	// rule labels: retval, y
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleTokenStream stream_x = new RewriteRuleTokenStream(this._adaptor,"token x",x);
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_y = new RewriteRuleSubtreeStream(this._adaptor,"rule y",y!=null?y.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:17: -> $x ( $y)?*/
      	{
      	    this._adaptor.addChild(root_0, stream_x.nextNode());

      	    /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
      	     5:24: ( $y)?*/
      	    if(stream_y.hasNext()) {
      	        this._adaptor.addChild(root_0, stream_y.nextTree());

      	    }
      	    stream_y.reset();

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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
   6:1: b : ID ;*/
  t058rewriteAST61Parser_b_return b() {
    t058rewriteAST61Parser_b_return retval = new t058rewriteAST61Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
       6:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST61.g:
       6:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b51); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


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
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_ID_in_a28 = null;
  static BitSet get FOLLOW_ID_in_a28() {
    if(_FOLLOW_ID_in_a28 == null) 
      _FOLLOW_ID_in_a28 = 
        new BitSet.fromList([0x0000000000000022]);
    return _FOLLOW_ID_in_a28;
  }

  static BitSet _FOLLOW_b_in_a33 = null;
  static BitSet get FOLLOW_b_in_a33() {
    if(_FOLLOW_b_in_a33 == null) 
      _FOLLOW_b_in_a33 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a33;
  }

  static BitSet _FOLLOW_ID_in_b51 = null;
  static BitSet get FOLLOW_ID_in_b51() {
    if(_FOLLOW_ID_in_b51 == null) 
      _FOLLOW_ID_in_b51 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b51;
  }



 }




class t058rewriteAST61Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST61Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

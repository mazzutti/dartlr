// $ANTLR 3.4 t058rewriteAST35Parser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST35Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST35Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST35Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST35Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST35.g";

  String getRecognizerClassName() => "t058rewriteAST35Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
   5:1: a : b b ;*/
  t058rewriteAST35Parser_a_return a() {
    t058rewriteAST35Parser_a_return retval = new t058rewriteAST35Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST35Parser_b_return b1 =null;

    t058rewriteAST35Parser_b_return b2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
       5:3: ( b b )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
       5:5: b b*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a26);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

      	this.pushFollow(FOLLOW_b_in_a28);
      	b2 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b2.tree);

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
   6:1: b : ( ID INT -> INT ID | INT INT -> ( INT )+ ) ;*/
  t058rewriteAST35Parser_b_return b() {
    t058rewriteAST35Parser_b_return retval = new t058rewriteAST35Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;
    Token INT4 = null;
    Token INT5 = null;
    Token INT6 = null;

    Object ID3_tree=null;
    Object INT4_tree=null;
    Object INT5_tree=null;
    Object INT6_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
       6:3: ( ( ID INT -> INT ID | INT INT -> ( INT )+ ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
       6:5: ( ID INT -> INT ID | INT INT -> ( INT )+ )*/
      {
      	/* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
      	 6:5: ( ID INT -> INT ID | INT INT -> ( INT )+ )*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 5/*ID*/)) {
      	  alt1 = 1;
      	}
      	else if((LA1_0 == 6/*INT*/)) {
      	  alt1 = 2;
      	}
      	else {
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 1, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
      	     6:6: ID INT*/
      	    {
      	    	ID3 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_b37); 
      	    	 
      	    	stream_ID.add(ID3);


      	    	INT4 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_b39); 
      	    	 
      	    	stream_INT.add(INT4);


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
      	    	/* 6:13: -> INT ID*/
      	    	{
      	    	    this._adaptor.addChild(root_0, 
      	    	    stream_INT.nextNode()
      	    	    );

      	    	    this._adaptor.addChild(root_0, 
      	    	    stream_ID.nextNode()
      	    	    );

      	    	}


      	    	retval.tree = root_0;

      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST35.g:
      	     6:25: INT INT*/
      	    {
      	    	INT5 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_b49); 
      	    	 
      	    	stream_INT.add(INT5);


      	    	INT6 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_b51); 
      	    	 
      	    	stream_INT.add(INT6);


      	    	// AST REWRITE
      	    	// elements: INT
      	    	// token labels: 
      	    	// rule labels: retval
      	    	// token list labels: 
      	    	// rule list labels: 
      	    	// wildcard labels: 
      	    	retval.tree = root_0;
      	    	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	    	root_0 = this._adaptor.nil();
      	    	/* 6:33: -> ( INT )+*/
      	    	{
      	    	    if(!(stream_INT.hasNext())) {
      	    	        throw new RewriteEarlyExitException();
      	    	    }
      	    	    while ( stream_INT.hasNext()) {
      	    	        this._adaptor.addChild(root_0, 
      	    	        stream_INT.nextNode()
      	    	        );

      	    	    }
      	    	    stream_INT.reset();

      	    	}


      	    	retval.tree = root_0;

      	    }
      	    break;

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
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a26 = null;
  static BitSet get FOLLOW_b_in_a26() {
    if(_FOLLOW_b_in_a26 == null) 
      _FOLLOW_b_in_a26 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_b_in_a26;
  }

  static BitSet _FOLLOW_b_in_a28 = null;
  static BitSet get FOLLOW_b_in_a28() {
    if(_FOLLOW_b_in_a28 == null) 
      _FOLLOW_b_in_a28 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a28;
  }

  static BitSet _FOLLOW_ID_in_b37 = null;
  static BitSet get FOLLOW_ID_in_b37() {
    if(_FOLLOW_ID_in_b37 == null) 
      _FOLLOW_ID_in_b37 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_ID_in_b37;
  }

  static BitSet _FOLLOW_INT_in_b39 = null;
  static BitSet get FOLLOW_INT_in_b39() {
    if(_FOLLOW_INT_in_b39 == null) 
      _FOLLOW_INT_in_b39 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b39;
  }

  static BitSet _FOLLOW_INT_in_b49 = null;
  static BitSet get FOLLOW_INT_in_b49() {
    if(_FOLLOW_INT_in_b49 == null) 
      _FOLLOW_INT_in_b49 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_INT_in_b49;
  }

  static BitSet _FOLLOW_INT_in_b51 = null;
  static BitSet get FOLLOW_INT_in_b51() {
    if(_FOLLOW_INT_in_b51 == null) 
      _FOLLOW_INT_in_b51 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b51;
  }



 }




class t058rewriteAST35Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST35Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

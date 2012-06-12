// $ANTLR 3.4 t058rewriteAST83Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST83Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "S", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int S = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST83Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST83Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST83Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST83.g";

  String getRecognizerClassName() => "t058rewriteAST83Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
   4:1: a : ( b -> b | c -> c );*/
  t058rewriteAST83Parser_a_return a() {
    t058rewriteAST83Parser_a_return retval = new t058rewriteAST83Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST83Parser_b_return b1 =null;

    t058rewriteAST83Parser_c_return c2 =null;


    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    RewriteRuleSubtreeStream stream_c=new RewriteRuleSubtreeStream(this._adaptor,"rule c");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST83.g: 
       4:3: ( b -> b | c -> c )*/
      int alt1 = 2;
      int LA1_0 = this.input.LA(1);

      if((LA1_0 == 4/*ID*/)) {
        alt1 = 1;
      }
      else if((LA1_0 == 5/*INT*/)) {
        alt1 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 1, 0, this.input);

        throw nvae;

      }
      switch (alt1) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
           4:5: b*/
          {
          	this.pushFollow(FOLLOW_b_in_a21);
          	b1 = this.b();

          	this.state.fsp--;

          	stream_b.add(b1.tree);

          	// AST REWRITE
          	// elements: b
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 4:7: -> b*/
          	{
          	    this._adaptor.addChild(root_0, stream_b.nextTree());

          	}


          	retval.tree = root_0;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
           4:14: c*/
          {
          	this.pushFollow(FOLLOW_c_in_a29);
          	c2 = this.c();

          	this.state.fsp--;

          	stream_c.add(c2.tree);

          	// AST REWRITE
          	// elements: c
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 4:16: -> c*/
          	{
          	    this._adaptor.addChild(root_0, stream_c.nextTree());

          	}


          	retval.tree = root_0;

          }
          break;

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
   5:1: b : ID -> ID ;*/
  t058rewriteAST83Parser_b_return b() {
    t058rewriteAST83Parser_b_return retval = new t058rewriteAST83Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;

    Object ID3_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
       5:3: ( ID -> ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
       5:5: ID*/
      {
      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b40); 
      	 
      	stream_ID.add(ID3);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:8: -> ID*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_ID.nextNode()
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
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
   6:1: c : INT -> INT ;*/
  t058rewriteAST83Parser_c_return c() {
    t058rewriteAST83Parser_c_return retval = new t058rewriteAST83Parser_c_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT4 = null;

    Object INT4_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
       6:3: ( INT -> INT )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST83.g:
       6:5: INT*/
      {
      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c52); 
      	 
      	stream_INT.add(INT4);


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
      	/* 6:9: -> INT*/
      	{
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
  // $ANTLR end "c"



 

  static BitSet _FOLLOW_b_in_a21 = null;
  static BitSet get FOLLOW_b_in_a21() {
    if(_FOLLOW_b_in_a21 == null) 
      _FOLLOW_b_in_a21 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a21;
  }

  static BitSet _FOLLOW_c_in_a29 = null;
  static BitSet get FOLLOW_c_in_a29() {
    if(_FOLLOW_c_in_a29 == null) 
      _FOLLOW_c_in_a29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_c_in_a29;
  }

  static BitSet _FOLLOW_ID_in_b40 = null;
  static BitSet get FOLLOW_ID_in_b40() {
    if(_FOLLOW_ID_in_b40 == null) 
      _FOLLOW_ID_in_b40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b40;
  }

  static BitSet _FOLLOW_INT_in_c52 = null;
  static BitSet get FOLLOW_INT_in_c52() {
    if(_FOLLOW_INT_in_c52 == null) 
      _FOLLOW_INT_in_c52 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c52;
  }



 }




class t058rewriteAST83Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST83Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST83Parser_c_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

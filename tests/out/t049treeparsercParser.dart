// $ANTLR 3.4 t049treeparsercParser.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparsercParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t049treeparsercParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t049treeparsercParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t049treeparsercParser._tokenNames;

  String get grammarFileName() => "t049treeparserc.g";

  String getRecognizerClassName() => "t049treeparsercParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserc.g:
   6:1: a : b c ;*/
  t049treeparsercParser_a_return a() {
    t049treeparsercParser_a_return retval = new t049treeparsercParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t049treeparsercParser_b_return b1 =null;

    t049treeparsercParser_c_return c2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t049treeparserc.g:
       6:3: ( b c )*/
      /* ../runtime/dart/tests/grammars/t049treeparserc.g:
       6:5: b c*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a31);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

      	this.pushFollow(FOLLOW_c_in_a33);
      	c2 = this.c();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, c2.tree);

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
  /* ../runtime/dart/tests/grammars/t049treeparserc.g:
   7:1: b : ID INT -> ^( ID INT ) ;*/
  t049treeparsercParser_b_return b() {
    t049treeparsercParser_b_return retval = new t049treeparsercParser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;
    Token INT4 = null;

    Object ID3_tree=null;
    Object INT4_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserc.g:
       7:3: ( ID INT -> ^( ID INT ) )*/
      /* ../runtime/dart/tests/grammars/t049treeparserc.g:
       7:5: ID INT*/
      {
      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b41); 
      	 
      	stream_ID.add(ID3);


      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_b43); 
      	 
      	stream_INT.add(INT4);


      	// AST REWRITE
      	// elements: INT, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 7:12: -> ^( ID INT )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t049treeparserc.g:
      	     7:15: ^( ID INT )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_ID.nextNode()
      	    	, root_1);

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
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t049treeparserc.g:
   8:1: c : ID INT ;*/
  t049treeparsercParser_c_return c() {
    t049treeparsercParser_c_return retval = new t049treeparsercParser_c_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID5 = null;
    Token INT6 = null;

    Object ID5_tree=null;
    Object INT6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserc.g:
       8:3: ( ID INT )*/
      /* ../runtime/dart/tests/grammars/t049treeparserc.g:
       8:5: ID INT*/
      {
      	root_0 = this._adaptor.nil();


      	ID5 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_c58); 

      	ID5_tree = this._adaptor.createTreeNode(ID5);
      	this._adaptor.addChild(root_0, ID5_tree);


      	INT6 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c60); 

      	INT6_tree = this._adaptor.createTreeNode(INT6);
      	this._adaptor.addChild(root_0, INT6_tree);


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



 

  static BitSet _FOLLOW_b_in_a31 = null;
  static BitSet get FOLLOW_b_in_a31() {
    if(_FOLLOW_b_in_a31 == null) 
      _FOLLOW_b_in_a31 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_b_in_a31;
  }

  static BitSet _FOLLOW_c_in_a33 = null;
  static BitSet get FOLLOW_c_in_a33() {
    if(_FOLLOW_c_in_a33 == null) 
      _FOLLOW_c_in_a33 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_c_in_a33;
  }

  static BitSet _FOLLOW_ID_in_b41 = null;
  static BitSet get FOLLOW_ID_in_b41() {
    if(_FOLLOW_ID_in_b41 == null) 
      _FOLLOW_ID_in_b41 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b41;
  }

  static BitSet _FOLLOW_INT_in_b43 = null;
  static BitSet get FOLLOW_INT_in_b43() {
    if(_FOLLOW_INT_in_b43 == null) 
      _FOLLOW_INT_in_b43 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b43;
  }

  static BitSet _FOLLOW_ID_in_c58 = null;
  static BitSet get FOLLOW_ID_in_c58() {
    if(_FOLLOW_ID_in_c58 == null) 
      _FOLLOW_ID_in_c58 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_c58;
  }

  static BitSet _FOLLOW_INT_in_c60 = null;
  static BitSet get FOLLOW_INT_in_c60() {
    if(_FOLLOW_INT_in_c60 == null) 
      _FOLLOW_INT_in_c60 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c60;
  }



 }




class t049treeparsercParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t049treeparsercParser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t049treeparsercParser_c_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

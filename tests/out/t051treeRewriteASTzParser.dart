// $ANTLR 3.4 t051treeRewriteASTzParser.g 2012-06-07 21:59:40
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTzParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'boo'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTzParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTzParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTzParser._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTz.g";

  String getRecognizerClassName() => "t051treeRewriteASTzParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTz.g:
   6:1: a : 'boo' ID INT -> ^( 'boo' ^( ID INT ) ) ;*/
  t051treeRewriteASTzParser_a_return a() {
    t051treeRewriteASTzParser_a_return retval = new t051treeRewriteASTzParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token ID2 = null;
    Token INT3 = null;

    Object string_literal1_tree=null;
    Object ID2_tree=null;
    Object INT3_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTz.g:
       6:3: ( 'boo' ID INT -> ^( 'boo' ^( ID INT ) ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTz.g:
       6:5: 'boo' ID INT*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a31); 
      	 
      	stream_7.add(string_literal1);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a33); 
      	 
      	stream_ID.add(ID2);


      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a35); 
      	 
      	stream_INT.add(INT3);


      	// AST REWRITE
      	// elements: 7, INT, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 6:18: -> ^( 'boo' ^( ID INT ) )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTz.g:
      	     6:21: ^( 'boo' ^( ID INT ) )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_7.nextNode()
      	    	, root_1);

      	    	/* ../runtime/dart/tests/grammars/t051treeRewriteASTz.g:
      	    	 6:29: ^( ID INT )*/
      	    	{
      	    		Object root_2 = this._adaptor.nil();
      	    		root_2 = this._adaptor.becomeRoot(
      	    		stream_ID.nextNode()
      	    		, root_2);

      	    		this._adaptor.addChild(root_2, 
      	    		stream_INT.nextNode()
      	    		);

      	    		this._adaptor.addChild(root_1, root_2);
      	    	}

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



 

  static BitSet _FOLLOW_7_in_a31 = null;
  static BitSet get FOLLOW_7_in_a31() {
    if(_FOLLOW_7_in_a31 == null) 
      _FOLLOW_7_in_a31 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_a31;
  }

  static BitSet _FOLLOW_ID_in_a33 = null;
  static BitSet get FOLLOW_ID_in_a33() {
    if(_FOLLOW_ID_in_a33 == null) 
      _FOLLOW_ID_in_a33 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a33;
  }

  static BitSet _FOLLOW_INT_in_a35 = null;
  static BitSet get FOLLOW_INT_in_a35() {
    if(_FOLLOW_INT_in_a35 == null) 
      _FOLLOW_INT_in_a35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a35;
  }



 }




class t051treeRewriteASTzParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

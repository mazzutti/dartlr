// $ANTLR 3.4 t051treeRewriteASToParser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASToParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASToParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASToParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASToParser._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTo.g";

  String getRecognizerClassName() => "t051treeRewriteASToParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTo.g:
   6:1: a : x= ID y= ID INT -> ^( $x ^( $y INT ) ) ;*/
  t051treeRewriteASToParser_a_return a() {
    t051treeRewriteASToParser_a_return retval = new t051treeRewriteASToParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token x = null;
    Token y = null;
    Token INT1 = null;

    Object x_tree=null;
    Object y_tree=null;
    Object INT1_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTo.g:
       6:3: (x= ID y= ID INT -> ^( $x ^( $y INT ) ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTo.g:
       6:5: x= ID y= ID INT*/
      {
      	x = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a33); 
      	 
      	stream_ID.add(x);


      	y = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a37); 
      	 
      	stream_ID.add(y);


      	INT1 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a39); 
      	 
      	stream_INT.add(INT1);


      	// AST REWRITE
      	// elements: y, x, INT
      	// token labels: y, x
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleTokenStream stream_y = new RewriteRuleTokenStream(this._adaptor,"token y",y);
      	RewriteRuleTokenStream stream_x = new RewriteRuleTokenStream(this._adaptor,"token x",x);
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 6:19: -> ^( $x ^( $y INT ) )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTo.g:
      	     6:22: ^( $x ^( $y INT ) )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_x.nextNode(), root_1);

      	    	/* ../runtime/dart/tests/grammars/t051treeRewriteASTo.g:
      	    	 6:27: ^( $y INT )*/
      	    	{
      	    		Object root_2 = this._adaptor.nil();
      	    		root_2 = this._adaptor.becomeRoot(stream_y.nextNode(), root_2);

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



 

  static BitSet _FOLLOW_ID_in_a33 = null;
  static BitSet get FOLLOW_ID_in_a33() {
    if(_FOLLOW_ID_in_a33 == null) 
      _FOLLOW_ID_in_a33 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_ID_in_a33;
  }

  static BitSet _FOLLOW_ID_in_a37 = null;
  static BitSet get FOLLOW_ID_in_a37() {
    if(_FOLLOW_ID_in_a37 == null) 
      _FOLLOW_ID_in_a37 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a37;
  }

  static BitSet _FOLLOW_INT_in_a39 = null;
  static BitSet get FOLLOW_INT_in_a39() {
    if(_FOLLOW_INT_in_a39 == null) 
      _FOLLOW_INT_in_a39 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a39;
  }



 }




class t051treeRewriteASToParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

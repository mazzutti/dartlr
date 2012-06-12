// $ANTLR 3.4 t051treeRewriteASTabParser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTabParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTabParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTabParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTabParser._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTab.g";

  String getRecognizerClassName() => "t051treeRewriteASTabParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g:
   6:1: a : ( ID INT -> ^( ID[\"root\"] ^( ID INT ) ) | INT -> ^( ID[\"root\"] INT ) ); */
  t051treeRewriteASTabParser_a_return a() {
    t051treeRewriteASTabParser_a_return retval = new t051treeRewriteASTabParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;
    Token INT3 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    Object INT3_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g: 
       6:3: ( ID INT -> ^( ID[\"root\"] ^( ID INT ) ) | INT -> ^( ID[\"root\"] INT ) )*/
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
          /* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g:
           6:5: ID INT*/
          {
          	ID1 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_a31); 
          	 
          	stream_ID.add(ID1);


          	INT2 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_a33); 
          	 
          	stream_INT.add(INT2);


          	// AST REWRITE
          	// elements: ID, INT, ID
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 6:12: -> ^( ID[\"root\"] ^( ID INT ) )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g:
          	     6:15: ^( ID[\"root\"] ^( ID INT ) )*/
          	    {
          	    	Object root_1 = this._adaptor.nil();
          	    	root_1 = this._adaptor.becomeRoot(
          	    	this._adaptor.create(ID, "root")
          	    	, root_1);

          	    	/* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g:
          	    	 6:28: ^( ID INT )*/
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
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g:
           6:41: INT*/
          {
          	INT3 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_a50); 
          	 
          	stream_INT.add(INT3);


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
          	/* 6:45: -> ^( ID[\"root\"] INT )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTab.g:
          	     6:48: ^( ID[\"root\"] INT )*/
          	    {
          	    	Object root_1 = this._adaptor.nil();
          	    	root_1 = this._adaptor.becomeRoot(
          	    	this._adaptor.create(ID, "root")
          	    	, root_1);

          	    	this._adaptor.addChild(root_1, 
          	    	stream_INT.nextNode()
          	    	);

          	    	this._adaptor.addChild(root_0, root_1);
          	    }

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



 

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_INT_in_a33 = null;
  static BitSet get FOLLOW_INT_in_a33() {
    if(_FOLLOW_INT_in_a33 == null) 
      _FOLLOW_INT_in_a33 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a33;
  }

  static BitSet _FOLLOW_INT_in_a50 = null;
  static BitSet get FOLLOW_INT_in_a50() {
    if(_FOLLOW_INT_in_a50 == null) 
      _FOLLOW_INT_in_a50 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a50;
  }



 }




class t051treeRewriteASTabParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

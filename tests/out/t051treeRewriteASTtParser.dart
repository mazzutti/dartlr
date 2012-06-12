// $ANTLR 3.4 t051treeRewriteASTtParser.g 2012-06-07 21:59:39
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTtParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTtParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTtParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTtParser._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTt.g";

  String getRecognizerClassName() => "t051treeRewriteASTtParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTt.g:
   6:1: a : ( ID INT -> ^( ID INT ) | INT );*/
  t051treeRewriteASTtParser_a_return a() {
    t051treeRewriteASTtParser_a_return retval = new t051treeRewriteASTtParser_a_return();
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
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTt.g: 
       6:3: ( ID INT -> ^( ID INT ) | INT )*/
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
          /* ../runtime/dart/tests/grammars/t051treeRewriteASTt.g:
           6:5: ID INT*/
          {
          	ID1 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_a31); 
          	 
          	stream_ID.add(ID1);


          	INT2 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_a33); 
          	 
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
          	/* 6:12: -> ^( ID INT )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTt.g:
          	     6:15: ^( ID INT )*/
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
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t051treeRewriteASTt.g:
           6:27: INT*/
          {
          	root_0 = this._adaptor.nil();


          	INT3 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_a45); 

          	INT3_tree = this._adaptor.createTreeNode(INT3);
          	this._adaptor.addChild(root_0, INT3_tree);


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

  static BitSet _FOLLOW_INT_in_a45 = null;
  static BitSet get FOLLOW_INT_in_a45() {
    if(_FOLLOW_INT_in_a45 == null) 
      _FOLLOW_INT_in_a45 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a45;
  }



 }




class t051treeRewriteASTtParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

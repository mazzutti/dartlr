// $ANTLR 3.4 t051treeRewriteASTaWalker.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTaWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTaWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTaWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTaWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTaWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTaWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTaWalker.g:
   10:1: a : ID INT -> INT ID ;*/
  t051treeRewriteASTaWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTaWalker_a_return retval = new t051treeRewriteASTaWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    CommonTree INT2 = null;

    CommonTree ID1_tree=null;
    CommonTree INT2_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTaWalker.g:
       10:3: ( ID INT -> INT ID )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTaWalker.g:
       10:5: ID INT*/
      {
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a53); 
      	 
      	stream_ID.add(ID1);


      	_last = this.input.LT(1);
      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a55); 
      	 
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
      	/* 10:12: -> INT ID*/
      	{
      	    this._adaptor.addChild(root_0, stream_INT.nextNode());

      	    this._adaptor.addChild(root_0, stream_ID.nextNode());

      	}


      	retval.tree = root_0;

      }

        retval.tree = this._adaptor.rulePostProcessing(root_0);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("a", 1);
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a53 = null;
  static BitSet get FOLLOW_ID_in_a53() {
    if(_FOLLOW_ID_in_a53 == null) 
      _FOLLOW_ID_in_a53 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a53;
  }

  static BitSet _FOLLOW_INT_in_a55 = null;
  static BitSet get FOLLOW_INT_in_a55() {
    if(_FOLLOW_INT_in_a55 == null) 
      _FOLLOW_INT_in_a55 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a55;
  }



 }




class t051treeRewriteASTaWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

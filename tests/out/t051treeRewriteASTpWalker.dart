// $ANTLR 3.4 t051treeRewriteASTpWalker.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTpWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTpWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTpWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTpWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTpWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTpWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTpWalker.g:
   9:1: a : ID ->;*/
  t051treeRewriteASTpWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTpWalker_a_return retval = new t051treeRewriteASTpWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;

    CommonTree ID1_tree=null;
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTpWalker.g:
       9:3: ( ID ->)*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTpWalker.g:
       9:5: ID*/
      {
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a52); 
      	 
      	stream_ID.add(ID1);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 9:8: ->*/
      	{
      	    root_0 = null;
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



 

  static BitSet _FOLLOW_ID_in_a52 = null;
  static BitSet get FOLLOW_ID_in_a52() {
    if(_FOLLOW_ID_in_a52 == null) 
      _FOLLOW_ID_in_a52 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a52;
  }



 }




class t051treeRewriteASTpWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

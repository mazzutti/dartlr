// $ANTLR 3.4 t051treeRewriteASTuWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTuWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTuWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTuWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTuWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTuWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTuWalker";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTuWalker.g:
   10:1: s : ID a ;*/
  t051treeRewriteASTuWalker_s_return s() {
    this.traceIn("s", 1);
    t051treeRewriteASTuWalker_s_return retval = new t051treeRewriteASTuWalker_s_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    t051treeRewriteASTuWalker_a_return a2 =null;


    CommonTree ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTuWalker.g:
       10:3: ( ID a )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTuWalker.g:
       10:5: ID a*/
      {
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_s61); 

      	 
      	  if(_first_0 == null) 
      	    _first_0 = ID1;


      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_a_in_s63);
      	a2 = this.a();

      	this.state.fsp--;

      	 
      	  if(_first_0 == null) 
      	    _first_0 = a2.tree;


      	  retval.tree = _first_0;
      	    if(this._adaptor.getParent(retval.tree) != null && 
      	      this._adaptor.isNil(this._adaptor.getParent(retval.tree)))
      	  retval.tree = this._adaptor.getParent(retval.tree);

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("s", 1);
  	}
  	return retval;
  }
  // $ANTLR end "s"


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTuWalker.g:
   11:1: a : INT -> INT[\"1\"] ;*/
  t051treeRewriteASTuWalker_a_return a() {
    this.traceIn("a", 2);
    t051treeRewriteASTuWalker_a_return retval = new t051treeRewriteASTuWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree INT3 = null;

    CommonTree INT3_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTuWalker.g:
       11:3: ( INT -> INT[\"1\"] )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTuWalker.g:
       11:5: INT*/
      {
      	_last = this.input.LT(1);
      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a71); 
      	 
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
      	/* 11:9: -> INT[\"1\"]*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(INT, "1")
      	    );

      	}


      	retval.tree = this._adaptor.rulePostProcessing(root_0);
      	input.replaceChildren(this._adaptor.getParent(retval.start),
      	                      this._adaptor.getChildIndex(retval.start),
      	                      this._adaptor.getChildIndex(_last),
      	                      retval.tree);

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("a", 2);
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_s61 = null;
  static BitSet get FOLLOW_ID_in_s61() {
    if(_FOLLOW_ID_in_s61 == null) 
      _FOLLOW_ID_in_s61 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_s61;
  }

  static BitSet _FOLLOW_a_in_s63 = null;
  static BitSet get FOLLOW_a_in_s63() {
    if(_FOLLOW_a_in_s63 == null) 
      _FOLLOW_a_in_s63 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_s63;
  }

  static BitSet _FOLLOW_INT_in_a71 = null;
  static BitSet get FOLLOW_INT_in_a71() {
    if(_FOLLOW_INT_in_a71 == null) 
      _FOLLOW_INT_in_a71 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a71;
  }



 }




class t051treeRewriteASTuWalker_s_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTuWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

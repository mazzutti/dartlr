// $ANTLR 3.4 t051treeRewriteASTvWalker.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTvWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTvWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTvWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTvWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTvWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTvWalker";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
   10:1: s : a ;*/
  t051treeRewriteASTvWalker_s_return s() {
    this.traceIn("s", 1);
    t051treeRewriteASTvWalker_s_return retval = new t051treeRewriteASTvWalker_s_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    t051treeRewriteASTvWalker_a_return a1 =null;



    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
       10:3: ( a )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
       10:5: a*/
      {
      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_a_in_s61);
      	a1 = this.a();

      	this.state.fsp--;

      	 
      	  if(_first_0 == null) 
      	    _first_0 = a1.tree;


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
   11:1: a : b ;*/
  t051treeRewriteASTvWalker_a_return a() {
    this.traceIn("a", 2);
    t051treeRewriteASTvWalker_a_return retval = new t051treeRewriteASTvWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    t051treeRewriteASTvWalker_b_return b2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
       11:3: ( b )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
       11:5: b*/
      {
      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_b_in_a69);
      	b2 = this.b();

      	this.state.fsp--;

      	 
      	  if(_first_0 == null) 
      	    _first_0 = b2.tree;


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
      this.traceOut("a", 2);
  	}
  	return retval;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
   12:1: b : ID INT -> INT ID ;*/
  t051treeRewriteASTvWalker_b_return b() {
    this.traceIn("b", 3);
    t051treeRewriteASTvWalker_b_return retval = new t051treeRewriteASTvWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID3 = null;
    CommonTree INT4 = null;

    CommonTree ID3_tree=null;
    CommonTree INT4_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
       12:3: ( ID INT -> INT ID )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTvWalker.g:
       12:5: ID INT*/
      {
      	_last = this.input.LT(1);
      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b77); 
      	 
      	stream_ID.add(ID3);


      	_last = this.input.LT(1);
      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_b79); 
      	 
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
      	/* 12:12: -> INT ID*/
      	{
      	    this._adaptor.addChild(root_0, stream_INT.nextNode());

      	    this._adaptor.addChild(root_0, stream_ID.nextNode());

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
      this.traceOut("b", 3);
  	}
  	return retval;
  }
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_a_in_s61 = null;
  static BitSet get FOLLOW_a_in_s61() {
    if(_FOLLOW_a_in_s61 == null) 
      _FOLLOW_a_in_s61 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_s61;
  }

  static BitSet _FOLLOW_b_in_a69 = null;
  static BitSet get FOLLOW_b_in_a69() {
    if(_FOLLOW_b_in_a69 == null) 
      _FOLLOW_b_in_a69 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a69;
  }

  static BitSet _FOLLOW_ID_in_b77 = null;
  static BitSet get FOLLOW_ID_in_b77() {
    if(_FOLLOW_ID_in_b77 == null) 
      _FOLLOW_ID_in_b77 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b77;
  }

  static BitSet _FOLLOW_INT_in_b79 = null;
  static BitSet get FOLLOW_INT_in_b79() {
    if(_FOLLOW_INT_in_b79 == null) 
      _FOLLOW_INT_in_b79 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b79;
  }



 }




class t051treeRewriteASTvWalker_s_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTvWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTvWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

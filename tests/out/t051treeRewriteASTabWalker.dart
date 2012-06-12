// $ANTLR 3.4 t051treeRewriteASTabWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTabWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTabWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTabWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTabWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTabWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTabWalker";


  String buf = "";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
   15:1: s : ^( ID a ) ;*/
  t051treeRewriteASTabWalker_s_return s() {
    this.traceIn("s", 1);
    t051treeRewriteASTabWalker_s_return retval = new t051treeRewriteASTabWalker_s_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    t051treeRewriteASTabWalker_a_return a2 =null;


    CommonTree ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
       15:3: ( ^( ID a ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
       15:5: ^( ID a )*/
      {
      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_s69); 



      	  if(_first_0 == null) 
      	    _first_0 = ID1;
      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		this.pushFollow(FOLLOW_a_in_s71);
      		a2 = this.a();

      		this.state.fsp--;

      		 
      		  if(_first_1 == null) 
      		    _first_1 = a2.tree;


      		this.matchSymbol(input, Token.UP, null); 
      	  _last = _save_last_1;
      	}


      	 this.buf = "${this.buf}${retval.start.dynamic.toStringTree()}"; 


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
   16:1: a : ^( ID INT ) -> {true}? ^( ID[\"ick\"] INT ) -> INT ;*/
  t051treeRewriteASTabWalker_a_return a() {
    this.traceIn("a", 2);
    t051treeRewriteASTabWalker_a_return retval = new t051treeRewriteASTabWalker_a_return();
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
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
       16:3: ( ^( ID INT ) -> {true}? ^( ID[\"ick\"] INT ) -> INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
       16:5: ^( ID INT )*/
      {
      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	_last = this.input.LT(1);
      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a82); 
      	 
      	stream_ID.add(ID3);


      	  if(_first_0 == null) 
      	    _first_0 = ID3;
      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		INT4 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_a84); 
      		 
      		stream_INT.add(INT4);


      		this.matchSymbol(input, Token.UP, null); 
      	  _last = _save_last_1;
      	}


      	// AST REWRITE
      	// elements: INT, ID, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 16:15: -> {true}? ^( ID[\"ick\"] INT )*/
      	if(true) {
      	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTabWalker.g:
      	     16:26: ^( ID[\"ick\"] INT )*/
      	    {
      	    	CommonTree root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(ID, "ick")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_INT.nextNode());

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}

      	else /* 17:15: -> INT*/
      	{
      	    this._adaptor.addChild(root_0, stream_INT.nextNode());

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



 

  static BitSet _FOLLOW_ID_in_s69 = null;
  static BitSet get FOLLOW_ID_in_s69() {
    if(_FOLLOW_ID_in_s69 == null) 
      _FOLLOW_ID_in_s69 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_s69;
  }

  static BitSet _FOLLOW_a_in_s71 = null;
  static BitSet get FOLLOW_a_in_s71() {
    if(_FOLLOW_a_in_s71 == null) 
      _FOLLOW_a_in_s71 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_a_in_s71;
  }

  static BitSet _FOLLOW_ID_in_a82 = null;
  static BitSet get FOLLOW_ID_in_a82() {
    if(_FOLLOW_ID_in_a82 == null) 
      _FOLLOW_ID_in_a82 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a82;
  }

  static BitSet _FOLLOW_INT_in_a84 = null;
  static BitSet get FOLLOW_INT_in_a84() {
    if(_FOLLOW_INT_in_a84 == null) 
      _FOLLOW_INT_in_a84 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a84;
  }



 }




class t051treeRewriteASTabWalker_s_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTabWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

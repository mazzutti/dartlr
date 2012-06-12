// $ANTLR 3.4 t051treeRewriteASTxWalker.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTxWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "X"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  static final int X = 7;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTxWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTxWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTxWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTxWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTxWalker";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
   11:1: s : ( a )* b ;*/
  t051treeRewriteASTxWalker_s_return s() {
    this.traceIn("s", 1);
    t051treeRewriteASTxWalker_s_return retval = new t051treeRewriteASTxWalker_s_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    t051treeRewriteASTxWalker_a_return a1 =null;

    t051treeRewriteASTxWalker_b_return b2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
       11:3: ( ( a )* b )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
       11:5: ( a )* b*/
      {
      	/* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
      	 11:5: ( a )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 7/*X*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
      			   11:5: a*/
      			  {
      			  	_last = this.input.LT(1);
      			  	this.pushFollow(FOLLOW_a_in_s68);
      			  	a1 = this.a();

      			  	this.state.fsp--;

      			  	 
      			  	  if(_first_0 == null) 
      			  	    _first_0 = a1.tree;


      			  	  retval.tree = _first_0;
      			  	    if(this._adaptor.getParent(retval.tree) != null && 
      			  	      this._adaptor.isNil(this._adaptor.getParent(retval.tree)))
      			  	  retval.tree = this._adaptor.getParent(retval.tree);

      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_b_in_s71);
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
      this.traceOut("s", 1);
  	}
  	return retval;
  }
  // $ANTLR end "s"


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
   12:1: a : X ;*/
  t051treeRewriteASTxWalker_a_return a() {
    this.traceIn("a", 2);
    t051treeRewriteASTxWalker_a_return retval = new t051treeRewriteASTxWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree X3 = null;

    CommonTree X3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
       12:3: ( X )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
       12:5: X*/
      {
      	_last = this.input.LT(1);
      	X3 = this.matchSymbol(this.input,
      	    X,FOLLOW_X_in_a80); 

      	 
      	  if(_first_0 == null) 
      	    _first_0 = X3;


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
   13:1: b : ^( ID INT ) -> INT ;*/
  t051treeRewriteASTxWalker_b_return b() {
    this.traceIn("b", 3);
    t051treeRewriteASTxWalker_b_return retval = new t051treeRewriteASTxWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID4 = null;
    CommonTree INT5 = null;

    CommonTree ID4_tree=null;
    CommonTree INT5_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
       13:3: ( ^( ID INT ) -> INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTxWalker.g:
       13:5: ^( ID INT )*/
      {
      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	_last = this.input.LT(1);
      	ID4 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b89); 
      	 
      	stream_ID.add(ID4);


      	  if(_first_0 == null) 
      	    _first_0 = ID4;
      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		INT5 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_b91); 
      		 
      		stream_INT.add(INT5);


      		this.matchSymbol(input, Token.UP, null); 
      	  _last = _save_last_1;
      	}


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
      	/* 13:15: -> INT*/
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
      this.traceOut("b", 3);
  	}
  	return retval;
  }
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_a_in_s68 = null;
  static BitSet get FOLLOW_a_in_s68() {
    if(_FOLLOW_a_in_s68 == null) 
      _FOLLOW_a_in_s68 = 
        new BitSet.fromList([0x0000000000000090]);
    return _FOLLOW_a_in_s68;
  }

  static BitSet _FOLLOW_b_in_s71 = null;
  static BitSet get FOLLOW_b_in_s71() {
    if(_FOLLOW_b_in_s71 == null) 
      _FOLLOW_b_in_s71 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_s71;
  }

  static BitSet _FOLLOW_X_in_a80 = null;
  static BitSet get FOLLOW_X_in_a80() {
    if(_FOLLOW_X_in_a80 == null) 
      _FOLLOW_X_in_a80 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_X_in_a80;
  }

  static BitSet _FOLLOW_ID_in_b89 = null;
  static BitSet get FOLLOW_ID_in_b89() {
    if(_FOLLOW_ID_in_b89 == null) 
      _FOLLOW_ID_in_b89 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_b89;
  }

  static BitSet _FOLLOW_INT_in_b91 = null;
  static BitSet get FOLLOW_INT_in_b91() {
    if(_FOLLOW_INT_in_b91 == null) 
      _FOLLOW_INT_in_b91 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_b91;
  }



 }




class t051treeRewriteASTxWalker_s_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTxWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTxWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

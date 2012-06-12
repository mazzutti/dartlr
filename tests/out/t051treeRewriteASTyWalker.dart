// $ANTLR 3.4 t051treeRewriteASTyWalker.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTyWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'boo'", 
    "X"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  static final int X = 8;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTyWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTyWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTyWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTyWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTyWalker";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
   11:1: s : 'boo' ( a )* b ;*/
  t051treeRewriteASTyWalker_s_return s() {
    this.traceIn("s", 1);
    t051treeRewriteASTyWalker_s_return retval = new t051treeRewriteASTyWalker_s_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree string_literal1 = null;
    t051treeRewriteASTyWalker_a_return a2 =null;

    t051treeRewriteASTyWalker_b_return b3 =null;


    CommonTree string_literal1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
       11:3: ( 'boo' ( a )* b )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
       11:5: 'boo' ( a )* b*/
      {
      	_last = this.input.LT(1);
      	string_literal1 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_s68); 

      	 
      	  if(_first_0 == null) 
      	    _first_0 = string_literal1;


      	/* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
      	 11:11: ( a )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 8/*X*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
      			   11:11: a*/
      			  {
      			  	_last = this.input.LT(1);
      			  	this.pushFollow(FOLLOW_a_in_s70);
      			  	a2 = this.a();

      			  	this.state.fsp--;

      			  	 
      			  	  if(_first_0 == null) 
      			  	    _first_0 = a2.tree;


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
      	this.pushFollow(FOLLOW_b_in_s73);
      	b3 = this.b();

      	this.state.fsp--;

      	 
      	  if(_first_0 == null) 
      	    _first_0 = b3.tree;


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
   12:1: a : X ;*/
  t051treeRewriteASTyWalker_a_return a() {
    this.traceIn("a", 2);
    t051treeRewriteASTyWalker_a_return retval = new t051treeRewriteASTyWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree X4 = null;

    CommonTree X4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
       12:3: ( X )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
       12:5: X*/
      {
      	_last = this.input.LT(1);
      	X4 = this.matchSymbol(this.input,
      	    X,FOLLOW_X_in_a82); 

      	 
      	  if(_first_0 == null) 
      	    _first_0 = X4;


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
   13:1: b : ^( ID INT ) -> INT ;*/
  t051treeRewriteASTyWalker_b_return b() {
    this.traceIn("b", 3);
    t051treeRewriteASTyWalker_b_return retval = new t051treeRewriteASTyWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID5 = null;
    CommonTree INT6 = null;

    CommonTree ID5_tree=null;
    CommonTree INT6_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
       13:3: ( ^( ID INT ) -> INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTyWalker.g:
       13:5: ^( ID INT )*/
      {
      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	_last = this.input.LT(1);
      	ID5 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b91); 
      	 
      	stream_ID.add(ID5);


      	  if(_first_0 == null) 
      	    _first_0 = ID5;
      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		INT6 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_b93); 
      		 
      		stream_INT.add(INT6);


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



 

  static BitSet _FOLLOW_7_in_s68 = null;
  static BitSet get FOLLOW_7_in_s68() {
    if(_FOLLOW_7_in_s68 == null) 
      _FOLLOW_7_in_s68 = 
        new BitSet.fromList([0x0000000000000110]);
    return _FOLLOW_7_in_s68;
  }

  static BitSet _FOLLOW_a_in_s70 = null;
  static BitSet get FOLLOW_a_in_s70() {
    if(_FOLLOW_a_in_s70 == null) 
      _FOLLOW_a_in_s70 = 
        new BitSet.fromList([0x0000000000000110]);
    return _FOLLOW_a_in_s70;
  }

  static BitSet _FOLLOW_b_in_s73 = null;
  static BitSet get FOLLOW_b_in_s73() {
    if(_FOLLOW_b_in_s73 == null) 
      _FOLLOW_b_in_s73 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_s73;
  }

  static BitSet _FOLLOW_X_in_a82 = null;
  static BitSet get FOLLOW_X_in_a82() {
    if(_FOLLOW_X_in_a82 == null) 
      _FOLLOW_X_in_a82 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_X_in_a82;
  }

  static BitSet _FOLLOW_ID_in_b91 = null;
  static BitSet get FOLLOW_ID_in_b91() {
    if(_FOLLOW_ID_in_b91 == null) 
      _FOLLOW_ID_in_b91 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_b91;
  }

  static BitSet _FOLLOW_INT_in_b93 = null;
  static BitSet get FOLLOW_INT_in_b93() {
    if(_FOLLOW_INT_in_b93 == null) 
      _FOLLOW_INT_in_b93 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_b93;
  }



 }




class t051treeRewriteASTyWalker_s_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTyWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTyWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

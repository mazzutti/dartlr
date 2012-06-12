// $ANTLR 3.4 t051treeRewriteASTtWalker.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTtWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTtWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTtWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTtWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTtWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTtWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTtWalker.g:
   10:1: a : ( ^( ID INT ) -> ^( ID[\"ick\"] INT ) | INT );*/
  t051treeRewriteASTtWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTtWalker_a_return retval = new t051treeRewriteASTtWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    CommonTree INT2 = null;
    CommonTree INT3 = null;

    CommonTree ID1_tree=null;
    CommonTree INT2_tree=null;
    CommonTree INT3_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTtWalker.g: 
       10:3: ( ^( ID INT ) -> ^( ID[\"ick\"] INT ) | INT )*/
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
          /* ../runtime/dart/tests/grammars/t051treeRewriteASTtWalker.g:
           10:5: ^( ID INT )*/
          {
          	_last = this.input.LT(1);
          	{
          	CommonTree _save_last_1 = _last;
          	CommonTree _first_1 = null;
          	_last = this.input.LT(1);
          	ID1 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_a62); 
          	 
          	stream_ID.add(ID1);


          	  if(_first_0 == null) 
          	    _first_0 = ID1;
          		this.matchSymbol(input, Token.DOWN, null); 
          		_last = this.input.LT(1);
          		INT2 = this.matchSymbol(this.input,
          		    INT,FOLLOW_INT_in_a64); 
          		 
          		stream_INT.add(INT2);


          		this.matchSymbol(input, Token.UP, null); 
          	  _last = _save_last_1;
          	}


          	// AST REWRITE
          	// elements: INT, ID
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 10:15: -> ^( ID[\"ick\"] INT )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t051treeRewriteASTtWalker.g:
          	     10:18: ^( ID[\"ick\"] INT )*/
          	    {
          	    	CommonTree root_1 = this._adaptor.nil();
          	    	root_1 = this._adaptor.becomeRoot(
          	    	this._adaptor.create(ID, "ick")
          	    	, root_1);

          	    	this._adaptor.addChild(root_1, stream_INT.nextNode());

          	    	this._adaptor.addChild(root_0, root_1);
          	    }

          	}


          	retval.tree = this._adaptor.rulePostProcessing(root_0);
          	input.replaceChildren(this._adaptor.getParent(retval.start),
          	                      this._adaptor.getChildIndex(retval.start),
          	                      this._adaptor.getChildIndex(_last),
          	                      retval.tree);

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t051treeRewriteASTtWalker.g:
           11:5: INT*/
          {
          	_last = this.input.LT(1);
          	INT3 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_a80); 

          	 
          	  if(_first_0 == null) 
          	    _first_0 = INT3;


          	  retval.tree = _first_0;
          	    if(this._adaptor.getParent(retval.tree) != null && 
          	      this._adaptor.isNil(this._adaptor.getParent(retval.tree)))
          	  retval.tree = this._adaptor.getParent(retval.tree);

          }
          break;

      }
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



 

  static BitSet _FOLLOW_ID_in_a62 = null;
  static BitSet get FOLLOW_ID_in_a62() {
    if(_FOLLOW_ID_in_a62 == null) 
      _FOLLOW_ID_in_a62 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a62;
  }

  static BitSet _FOLLOW_INT_in_a64 = null;
  static BitSet get FOLLOW_INT_in_a64() {
    if(_FOLLOW_INT_in_a64 == null) 
      _FOLLOW_INT_in_a64 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a64;
  }

  static BitSet _FOLLOW_INT_in_a80 = null;
  static BitSet get FOLLOW_INT_in_a80() {
    if(_FOLLOW_INT_in_a80 == null) 
      _FOLLOW_INT_in_a80 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a80;
  }



 }




class t051treeRewriteASTtWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

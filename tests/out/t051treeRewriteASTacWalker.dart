// $ANTLR 3.4 t051treeRewriteASTacWalker.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTacWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTacWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTacWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTacWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTacWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTacWalker";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTacWalker.g:
   9:1: s : ^( ID c= . ) -> $c;*/
  t051treeRewriteASTacWalker_s_return s() {
    this.traceIn("s", 1);
    t051treeRewriteASTacWalker_s_return retval = new t051treeRewriteASTacWalker_s_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    CommonTree c = null;

    CommonTree ID1_tree=null;
    CommonTree c_tree=null;
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTacWalker.g:
       9:3: ( ^( ID c= . ) -> $c)*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTacWalker.g:
       9:5: ^( ID c= . )*/
      {
      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	CommonTree root_1 = this._adaptor.nil();
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_s53); 
      	 
      	stream_ID.add(ID1);


      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		c = this.input.LT(1);

      		this.matchAny(this.input); 

      		  c_tree = this._adaptor.dupTree(c);
      		  this._adaptor.addChild(root_1, c_tree);


      		this.matchSymbol(input, Token.UP, null); 
      	  this._adaptor.addChild(root_0, root_1);
      	  _last = _save_last_1;
      	}


      	// AST REWRITE
      	// elements: c
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: c
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_c = new RewriteRuleSubtreeStream(this._adaptor,"wildcard c",c);
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 9:15: -> $c*/
      	{
      	    this._adaptor.addChild(root_0, stream_c.nextTree());

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
      this.traceOut("s", 1);
  	}
  	return retval;
  }
  // $ANTLR end "s"



 

  static BitSet _FOLLOW_ID_in_s53 = null;
  static BitSet get FOLLOW_ID_in_s53() {
    if(_FOLLOW_ID_in_s53 == null) 
      _FOLLOW_ID_in_s53 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_s53;
  }



 }




class t051treeRewriteASTacWalker_s_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

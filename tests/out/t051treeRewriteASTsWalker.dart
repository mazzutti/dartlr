// $ANTLR 3.4 t051treeRewriteASTsWalker.g 2012-06-07 21:59:34
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTsWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTsWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTsWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTsWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTsWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTsWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTsWalker.g:
   9:1: a : ^( ( ID | INT ) INT ) ;*/
  t051treeRewriteASTsWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTsWalker_a_return retval = new t051treeRewriteASTsWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree set1 = null;
    CommonTree INT2 = null;

    CommonTree set1_tree=null;
    CommonTree INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTsWalker.g:
       9:3: ( ^( ( ID | INT ) INT ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTsWalker.g:
       9:5: ^( ( ID | INT ) INT )*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	CommonTree root_1 = this._adaptor.nil();
      	set1 = this.input.LT(1);

      	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      	  this.input.consume();
      	    set1_tree = this._adaptor.dupNode(set1);


      	    root_1 = this._adaptor.becomeRoot(set1_tree, root_1);

      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		INT2 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_a61); 

      		  INT2_tree = this._adaptor.dupNode(INT2);


      		  this._adaptor.addChild(root_1, INT2_tree);


      		this.matchSymbol(input, Token.UP, null); 
      	  this._adaptor.addChild(root_0, root_1);
      	  _last = _save_last_1;
      	}


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



 

  static BitSet _FOLLOW_set_in_a53 = null;
  static BitSet get FOLLOW_set_in_a53() {
    if(_FOLLOW_set_in_a53 == null) 
      _FOLLOW_set_in_a53 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_set_in_a53;
  }

  static BitSet _FOLLOW_INT_in_a61 = null;
  static BitSet get FOLLOW_INT_in_a61() {
    if(_FOLLOW_INT_in_a61 == null) 
      _FOLLOW_INT_in_a61 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a61;
  }



 }




class t051treeRewriteASTsWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

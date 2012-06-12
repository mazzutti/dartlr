// $ANTLR 3.4 t051treeRewriteASTqWalker.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTqWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTqWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTqWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTqWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTqWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTqWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTqWalker.g:
   9:1: a : b INT ;*/
  t051treeRewriteASTqWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTqWalker_a_return retval = new t051treeRewriteASTqWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree INT2 = null;
    t051treeRewriteASTqWalker_b_return b1 =null;


    CommonTree INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTqWalker.g:
       9:3: ( b INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTqWalker.g:
       9:5: b INT*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_b_in_a52);
      	b1 = this.b();

      	this.state.fsp--;

      	  this._adaptor.addChild(root_0, b1.tree);


      	_last = this.input.LT(1);
      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a54); 

      	  INT2_tree = this._adaptor.dupNode(INT2);


      	  this._adaptor.addChild(root_0, INT2_tree);


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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTqWalker.g:
   10:1: b : ( ID | INT );*/
  t051treeRewriteASTqWalker_b_return b() {
    this.traceIn("b", 2);
    t051treeRewriteASTqWalker_b_return retval = new t051treeRewriteASTqWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree set3 = null;

    CommonTree set3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTqWalker.g:
       10:3: ( ID | INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTqWalker.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	set3 = this.input.LT(1);

      	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      	  this.input.consume();
      	    set3_tree = this._adaptor.dupNode(set3);


      	    this._adaptor.addChild(root_0, set3_tree);

      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
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
      this.traceOut("b", 2);
  	}
  	return retval;
  }
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a52 = null;
  static BitSet get FOLLOW_b_in_a52() {
    if(_FOLLOW_b_in_a52 == null) 
      _FOLLOW_b_in_a52 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_b_in_a52;
  }

  static BitSet _FOLLOW_INT_in_a54 = null;
  static BitSet get FOLLOW_INT_in_a54() {
    if(_FOLLOW_INT_in_a54 == null) 
      _FOLLOW_INT_in_a54 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a54;
  }



 }




class t051treeRewriteASTqWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTqWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t051treeRewriteASTfWalker.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTfWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTfWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTfWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTfWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTfWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTfWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTfWalker.g:
   9:1: a : ID ;*/
  t051treeRewriteASTfWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTfWalker_a_return retval = new t051treeRewriteASTfWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;

    CommonTree ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTfWalker.g:
       9:2: ( ID )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTfWalker.g:
       9:4: ID*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a51); 

      	  ID1_tree = this._adaptor.dupNode(ID1);


      	  this._adaptor.addChild(root_0, ID1_tree);


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



 

  static BitSet _FOLLOW_ID_in_a51 = null;
  static BitSet get FOLLOW_ID_in_a51() {
    if(_FOLLOW_ID_in_a51 == null) 
      _FOLLOW_ID_in_a51 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a51;
  }



 }




class t051treeRewriteASTfWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

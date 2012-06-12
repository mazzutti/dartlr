// $ANTLR 3.4 t051treeRewriteASTjWalker.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTjWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTjWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTjWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTjWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTjWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTjWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTjWalker.g:
   9:1: a : ^(x= ID y= INT ) ;*/
  t051treeRewriteASTjWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTjWalker_a_return retval = new t051treeRewriteASTjWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree x = null;
    CommonTree y = null;

    CommonTree x_tree=null;
    CommonTree y_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTjWalker.g:
       9:3: ( ^(x= ID y= INT ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTjWalker.g:
       9:5: ^(x= ID y= INT )*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	CommonTree root_1 = this._adaptor.nil();
      	_last = this.input.LT(1);
      	x = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a55); 

      	  x_tree = this._adaptor.dupNode(x);


      	  root_1 = this._adaptor.becomeRoot(x_tree, root_1);


      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		y = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_a59); 

      		  y_tree = this._adaptor.dupNode(y);


      		  this._adaptor.addChild(root_1, y_tree);


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



 

  static BitSet _FOLLOW_ID_in_a55 = null;
  static BitSet get FOLLOW_ID_in_a55() {
    if(_FOLLOW_ID_in_a55 == null) 
      _FOLLOW_ID_in_a55 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a55;
  }

  static BitSet _FOLLOW_INT_in_a59 = null;
  static BitSet get FOLLOW_INT_in_a59() {
    if(_FOLLOW_INT_in_a59 == null) 
      _FOLLOW_INT_in_a59 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a59;
  }



 }




class t051treeRewriteASTjWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t051treeRewriteASTiWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTiWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTiWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTiWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTiWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTiWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTiWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTiWalker.g:
   9:1: a : ^( ID INT ) ;*/
  t051treeRewriteASTiWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTiWalker_a_return retval = new t051treeRewriteASTiWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    CommonTree INT2 = null;

    CommonTree ID1_tree=null;
    CommonTree INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTiWalker.g:
       9:3: ( ^( ID INT ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTiWalker.g:
       9:5: ^( ID INT )*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	CommonTree root_1 = this._adaptor.nil();
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a53); 

      	  ID1_tree = this._adaptor.dupNode(ID1);


      	  root_1 = this._adaptor.becomeRoot(ID1_tree, root_1);


      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		INT2 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_a55); 

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



 

  static BitSet _FOLLOW_ID_in_a53 = null;
  static BitSet get FOLLOW_ID_in_a53() {
    if(_FOLLOW_ID_in_a53 == null) 
      _FOLLOW_ID_in_a53 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a53;
  }

  static BitSet _FOLLOW_INT_in_a55 = null;
  static BitSet get FOLLOW_INT_in_a55() {
    if(_FOLLOW_INT_in_a55 == null) 
      _FOLLOW_INT_in_a55 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a55;
  }



 }




class t051treeRewriteASTiWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

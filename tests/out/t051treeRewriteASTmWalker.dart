// $ANTLR 3.4 t051treeRewriteASTmWalker.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTmWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTmWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTmWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTmWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTmWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTmWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTmWalker.g:
   9:1: a : ^(x= b INT ) ;*/
  t051treeRewriteASTmWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTmWalker_a_return retval = new t051treeRewriteASTmWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree INT1 = null;
    t051treeRewriteASTmWalker_b_return x =null;


    CommonTree INT1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTmWalker.g:
       9:3: ( ^(x= b INT ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTmWalker.g:
       9:5: ^(x= b INT )*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	{
      	CommonTree _save_last_1 = _last;
      	CommonTree _first_1 = null;
      	CommonTree root_1 = this._adaptor.nil();
      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_b_in_a55);
      	x = this.b();

      	this.state.fsp--;

      	root_1 = this._adaptor.becomeRoot(x.tree, root_1);


      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		INT1 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_a57); 

      		  INT1_tree = this._adaptor.dupNode(INT1);


      		  this._adaptor.addChild(root_1, INT1_tree);


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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTmWalker.g:
   10:1: b : ID ;*/
  t051treeRewriteASTmWalker_b_return b() {
    this.traceIn("b", 2);
    t051treeRewriteASTmWalker_b_return retval = new t051treeRewriteASTmWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID2 = null;

    CommonTree ID2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTmWalker.g:
       10:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTmWalker.g:
       10:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b66); 

      	  ID2_tree = this._adaptor.dupNode(ID2);


      	  this._adaptor.addChild(root_0, ID2_tree);


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



 

  static BitSet _FOLLOW_b_in_a55 = null;
  static BitSet get FOLLOW_b_in_a55() {
    if(_FOLLOW_b_in_a55 == null) 
      _FOLLOW_b_in_a55 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_b_in_a55;
  }

  static BitSet _FOLLOW_INT_in_a57 = null;
  static BitSet get FOLLOW_INT_in_a57() {
    if(_FOLLOW_INT_in_a57 == null) 
      _FOLLOW_INT_in_a57 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a57;
  }

  static BitSet _FOLLOW_ID_in_b66 = null;
  static BitSet get FOLLOW_ID_in_b66() {
    if(_FOLLOW_ID_in_b66 == null) 
      _FOLLOW_ID_in_b66 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b66;
  }



 }




class t051treeRewriteASTmWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTmWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

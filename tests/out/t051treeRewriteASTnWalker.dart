// $ANTLR 3.4 t051treeRewriteASTnWalker.g 2012-06-07 21:59:30
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTnWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTnWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTnWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTnWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTnWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTnWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
   9:1: a : ^(x+= b y+= c ) ;*/
  t051treeRewriteASTnWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTnWalker_a_return retval = new t051treeRewriteASTnWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    List list_x = null;
    List list_y = null;
    RuleReturnScope x = null;
    RuleReturnScope y = null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
       9:3: ( ^(x+= b y+= c ) )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
       9:5: ^(x+= b y+= c )*/
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

      	if(list_x == null) 
      	  list_x = new List();
      	list_x.add(x.tree);


      		this.matchSymbol(input, Token.DOWN, null); 
      		_last = this.input.LT(1);
      		this.pushFollow(FOLLOW_c_in_a59);
      		y = this.c();

      		this.state.fsp--;

      		  this._adaptor.addChild(root_1, y.tree);

      		if(list_y == null) 
      		  list_y = new List();
      		list_y.add(y.tree);


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
   10:1: b : ID ;*/
  t051treeRewriteASTnWalker_b_return b() {
    this.traceIn("b", 2);
    t051treeRewriteASTnWalker_b_return retval = new t051treeRewriteASTnWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;

    CommonTree ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
       10:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
       10:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b68); 

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
      this.traceOut("b", 2);
  	}
  	return retval;
  }
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
   11:1: c : INT ;*/
  t051treeRewriteASTnWalker_c_return c() {
    this.traceIn("c", 3);
    t051treeRewriteASTnWalker_c_return retval = new t051treeRewriteASTnWalker_c_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree INT2 = null;

    CommonTree INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
       11:3: ( INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTnWalker.g:
       11:5: INT*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c76); 

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
      this.traceOut("c", 3);
  	}
  	return retval;
  }
  // $ANTLR end "c"



 

  static BitSet _FOLLOW_b_in_a55 = null;
  static BitSet get FOLLOW_b_in_a55() {
    if(_FOLLOW_b_in_a55 == null) 
      _FOLLOW_b_in_a55 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_b_in_a55;
  }

  static BitSet _FOLLOW_c_in_a59 = null;
  static BitSet get FOLLOW_c_in_a59() {
    if(_FOLLOW_c_in_a59 == null) 
      _FOLLOW_c_in_a59 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_c_in_a59;
  }

  static BitSet _FOLLOW_ID_in_b68 = null;
  static BitSet get FOLLOW_ID_in_b68() {
    if(_FOLLOW_ID_in_b68 == null) 
      _FOLLOW_ID_in_b68 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b68;
  }

  static BitSet _FOLLOW_INT_in_c76 = null;
  static BitSet get FOLLOW_INT_in_c76() {
    if(_FOLLOW_INT_in_c76 == null) 
      _FOLLOW_INT_in_c76 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c76;
  }



 }




class t051treeRewriteASTnWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTnWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTnWalker_c_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

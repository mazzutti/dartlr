// $ANTLR 3.4 t051treeRewriteASTgWalker.g 2012-06-07 21:59:33
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTgWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTgWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTgWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTgWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTgWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTgWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
   9:1: a : b c ;*/
  t051treeRewriteASTgWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTgWalker_a_return retval = new t051treeRewriteASTgWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    t051treeRewriteASTgWalker_b_return b1 =null;

    t051treeRewriteASTgWalker_c_return c2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
       9:3: ( b c )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
       9:5: b c*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_b_in_a52);
      	b1 = this.b();

      	this.state.fsp--;

      	  this._adaptor.addChild(root_0, b1.tree);


      	_last = this.input.LT(1);
      	this.pushFollow(FOLLOW_c_in_a54);
      	c2 = this.c();

      	this.state.fsp--;

      	  this._adaptor.addChild(root_0, c2.tree);


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
   10:1: b : ID ;*/
  t051treeRewriteASTgWalker_b_return b() {
    this.traceIn("b", 2);
    t051treeRewriteASTgWalker_b_return retval = new t051treeRewriteASTgWalker_b_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID3 = null;

    CommonTree ID3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
       10:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
       10:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b62); 

      	  ID3_tree = this._adaptor.dupNode(ID3);


      	  this._adaptor.addChild(root_0, ID3_tree);


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
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
   11:1: c : INT ;*/
  t051treeRewriteASTgWalker_c_return c() {
    this.traceIn("c", 3);
    t051treeRewriteASTgWalker_c_return retval = new t051treeRewriteASTgWalker_c_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree INT4 = null;

    CommonTree INT4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
       11:3: ( INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTgWalker.g:
       11:5: INT*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c70); 

      	  INT4_tree = this._adaptor.dupNode(INT4);


      	  this._adaptor.addChild(root_0, INT4_tree);


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



 

  static BitSet _FOLLOW_b_in_a52 = null;
  static BitSet get FOLLOW_b_in_a52() {
    if(_FOLLOW_b_in_a52 == null) 
      _FOLLOW_b_in_a52 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_b_in_a52;
  }

  static BitSet _FOLLOW_c_in_a54 = null;
  static BitSet get FOLLOW_c_in_a54() {
    if(_FOLLOW_c_in_a54 == null) 
      _FOLLOW_c_in_a54 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_c_in_a54;
  }

  static BitSet _FOLLOW_ID_in_b62 = null;
  static BitSet get FOLLOW_ID_in_b62() {
    if(_FOLLOW_ID_in_b62 == null) 
      _FOLLOW_ID_in_b62 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b62;
  }

  static BitSet _FOLLOW_INT_in_c70 = null;
  static BitSet get FOLLOW_INT_in_c70() {
    if(_FOLLOW_INT_in_c70 == null) 
      _FOLLOW_INT_in_c70 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c70;
  }



 }




class t051treeRewriteASTgWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTgWalker_b_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t051treeRewriteASTgWalker_c_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

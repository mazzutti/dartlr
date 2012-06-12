// $ANTLR 3.4 t051treeRewriteASThWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASThWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASThWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASThWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASThWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASThWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASThWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASThWalker.g:
   9:1: a : ID ID INT ;*/
  t051treeRewriteASThWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASThWalker_a_return retval = new t051treeRewriteASThWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    CommonTree ID2 = null;
    CommonTree INT3 = null;

    CommonTree ID1_tree=null;
    CommonTree ID2_tree=null;
    CommonTree INT3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASThWalker.g:
       9:3: ( ID ID INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASThWalker.g:
       9:5: ID ID INT*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a52); 

      	  ID1_tree = this._adaptor.dupNode(ID1);


      	  this._adaptor.addChild(root_0, ID1_tree);


      	_last = this.input.LT(1);
      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a54); 

      	  ID2_tree = this._adaptor.dupNode(ID2);


      	  this._adaptor.addChild(root_0, ID2_tree);


      	_last = this.input.LT(1);
      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a56); 

      	  INT3_tree = this._adaptor.dupNode(INT3);


      	  this._adaptor.addChild(root_0, INT3_tree);


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



 

  static BitSet _FOLLOW_ID_in_a52 = null;
  static BitSet get FOLLOW_ID_in_a52() {
    if(_FOLLOW_ID_in_a52 == null) 
      _FOLLOW_ID_in_a52 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_ID_in_a52;
  }

  static BitSet _FOLLOW_ID_in_a54 = null;
  static BitSet get FOLLOW_ID_in_a54() {
    if(_FOLLOW_ID_in_a54 == null) 
      _FOLLOW_ID_in_a54 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a54;
  }

  static BitSet _FOLLOW_INT_in_a56 = null;
  static BitSet get FOLLOW_INT_in_a56() {
    if(_FOLLOW_INT_in_a56 == null) 
      _FOLLOW_INT_in_a56 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a56;
  }



 }




class t051treeRewriteASThWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

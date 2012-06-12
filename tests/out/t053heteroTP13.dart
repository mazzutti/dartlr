// $ANTLR 3.4 t053heteroTP13.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("v_common_tree.dart");
#source("w_common_tree.dart");

class t053heteroTP13 extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroTP13(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroTP13.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroTP13._tokenNames;

  String get grammarFileName() => "t053heteroTP13.g";

  String getRecognizerClassName() => "t053heteroTP13";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroTP13.g:
   11:1: a : ID INT -> INT ID ;*/
  t053heteroTP13_a_return a() {
    t053heteroTP13_a_return retval = new t053heteroTP13_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Object _first_0 = null;
    Object _last = null;

    Object ID1 = null;
    Object INT2 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t053heteroTP13.g:
       11:3: ( ID INT -> INT ID )*/
      /* ../runtime/dart/tests/grammars/t053heteroTP13.g:
       11:5: ID INT*/
      {
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a47); 
      	 
      	stream_ID.add(ID1);


      	_last = this.input.LT(1);
      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a49); 
      	 
      	stream_INT.add(INT2);


      	// AST REWRITE
      	// elements: INT, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 11:12: -> INT ID*/
      	{
      	    this._adaptor.addChild(root_0, new V(stream_INT.nextNode()));

      	    this._adaptor.addChild(root_0, new W(stream_ID.nextNode()));

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
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a47 = null;
  static BitSet get FOLLOW_ID_in_a47() {
    if(_FOLLOW_ID_in_a47 == null) 
      _FOLLOW_ID_in_a47 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a47;
  }

  static BitSet _FOLLOW_INT_in_a49 = null;
  static BitSet get FOLLOW_INT_in_a49() {
    if(_FOLLOW_INT_in_a49 == null) 
      _FOLLOW_INT_in_a49 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a49;
  }



 }




class t053heteroTP13_a_return extends TreeRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

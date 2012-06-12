// $ANTLR 3.4 t053heteroTP15.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("v15_common_tree.dart");

class t053heteroTP15 extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "ROOT"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  static final int ROOT = 7;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroTP15(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroTP15.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroTP15._tokenNames;

  String get grammarFileName() => "t053heteroTP15.g";

  String getRecognizerClassName() => "t053heteroTP15";


  static List<String> get namesOfTokens() => _tokenNames;


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroTP15.g:
   17:1: a : ID -> ROOT ID ;*/
  t053heteroTP15_a_return a() {
    t053heteroTP15_a_return retval = new t053heteroTP15_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;

    CommonTree ID1_tree=null;
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t053heteroTP15.g:
       17:3: ( ID -> ROOT ID )*/
      /* ../runtime/dart/tests/grammars/t053heteroTP15.g:
       17:5: ID*/
      {
      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a70); 
      	 
      	stream_ID.add(ID1);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 17:8: -> ROOT ID*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    new V15(ROOT)
      	    );

      	    this._adaptor.addChild(root_0, stream_ID.nextNode());

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



 

  static BitSet _FOLLOW_ID_in_a70 = null;
  static BitSet get FOLLOW_ID_in_a70() {
    if(_FOLLOW_ID_in_a70 == null) 
      _FOLLOW_ID_in_a70 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a70;
  }



 }




class t053heteroTP15_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

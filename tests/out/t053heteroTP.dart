// $ANTLR 3.4 t053heteroTP.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("vx_common_tree.dart");

class t053heteroTP extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "';'", "ROOT"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  static final int ROOT = 8;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroTP(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroTP.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroTP._tokenNames;

  String get grammarFileName() => "t053heteroTP.g";

  String getRecognizerClassName() => "t053heteroTP";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroTP.g:
   11:1: a : ID ';' ;*/
  t053heteroTP_a_return a() {
    t053heteroTP_a_return retval = new t053heteroTP_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Object _first_0 = null;
    Object _last = null;

    Object ID1 = null;
    Object char_literal2 = null;

    Object ID1_tree=null;
    Object char_literal2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t053heteroTP.g:
       11:3: ( ID ';' )*/
      /* ../runtime/dart/tests/grammars/t053heteroTP.g:
       11:5: ID ';'*/
      {
      	root_0 = this._adaptor.nil();


      	_last = this.input.LT(1);
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a54); 

      	  ID1_tree = new VX(ID1);


      	  this._adaptor.addChild(root_0, ID1_tree);


      	_last = this.input.LT(1);
      	char_literal2 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a59); 

      	  char_literal2_tree = new VX(char_literal2);


      	  this._adaptor.addChild(root_0, char_literal2_tree);


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



 

  static BitSet _FOLLOW_ID_in_a54 = null;
  static BitSet get FOLLOW_ID_in_a54() {
    if(_FOLLOW_ID_in_a54 == null) 
      _FOLLOW_ID_in_a54 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_a54;
  }

  static BitSet _FOLLOW_7_in_a59 = null;
  static BitSet get FOLLOW_7_in_a59() {
    if(_FOLLOW_7_in_a59 == null) 
      _FOLLOW_7_in_a59 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a59;
  }



 }




class t053heteroTP_a_return extends TreeRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

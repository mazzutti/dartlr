// $ANTLR 3.4 t051treeRewriteASThParser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASThParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASThParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASThParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASThParser._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTh.g";

  String getRecognizerClassName() => "t051treeRewriteASThParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTh.g:
   6:1: a : ID ID INT ;*/
  t051treeRewriteASThParser_a_return a() {
    t051treeRewriteASThParser_a_return retval = new t051treeRewriteASThParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token ID2 = null;
    Token INT3 = null;

    Object ID1_tree=null;
    Object ID2_tree=null;
    Object INT3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTh.g:
       6:3: ( ID ID INT )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTh.g:
       6:5: ID ID INT*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a31); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a33); 

      	ID2_tree = this._adaptor.createTreeNode(ID2);
      	this._adaptor.addChild(root_0, ID2_tree);


      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a35); 

      	INT3_tree = this._adaptor.createTreeNode(INT3);
      	this._adaptor.addChild(root_0, INT3_tree);


      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_ID_in_a33 = null;
  static BitSet get FOLLOW_ID_in_a33() {
    if(_FOLLOW_ID_in_a33 == null) 
      _FOLLOW_ID_in_a33 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a33;
  }

  static BitSet _FOLLOW_INT_in_a35 = null;
  static BitSet get FOLLOW_INT_in_a35() {
    if(_FOLLOW_INT_in_a35 == null) 
      _FOLLOW_INT_in_a35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a35;
  }



 }




class t051treeRewriteASThParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

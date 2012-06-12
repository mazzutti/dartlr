// $ANTLR 3.4 t057autoAST13Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST13Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST13Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST13Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST13Parser._tokenNames;

  String get grammarFileName() => "t057autoAST13.g";

  String getRecognizerClassName() => "t057autoAST13Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST13.g:
   3:1: a : ID INT ^ ID ^;*/
  t057autoAST13Parser_a_return a() {
    t057autoAST13Parser_a_return retval = new t057autoAST13Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;
    Token ID3 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    Object ID3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST13.g:
       3:3: ( ID INT ^ ID ^)*/
      /* ../runtime/dart/tests/grammars/t057autoAST13.g:
       3:5: ID INT ^ ID ^*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a20); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a22); 

      	INT2_tree = this._adaptor.createTreeNode(INT2);
      	root_0 = this._adaptor.becomeRoot(INT2_tree, root_0);


      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a25); 

      	ID3_tree = this._adaptor.createTreeNode(ID3);
      	root_0 = this._adaptor.becomeRoot(ID3_tree, root_0);


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



 

  static BitSet _FOLLOW_ID_in_a20 = null;
  static BitSet get FOLLOW_ID_in_a20() {
    if(_FOLLOW_ID_in_a20 == null) 
      _FOLLOW_ID_in_a20 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a20;
  }

  static BitSet _FOLLOW_INT_in_a22 = null;
  static BitSet get FOLLOW_INT_in_a22() {
    if(_FOLLOW_INT_in_a22 == null) 
      _FOLLOW_INT_in_a22 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_INT_in_a22;
  }

  static BitSet _FOLLOW_ID_in_a25 = null;
  static BitSet get FOLLOW_ID_in_a25() {
    if(_FOLLOW_ID_in_a25 == null) 
      _FOLLOW_ID_in_a25 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a25;
  }



 }




class t057autoAST13Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t057autoAST29Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST29Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST29Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST29Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST29Parser._tokenNames;

  String get grammarFileName() => "t057autoAST29.g";

  String getRecognizerClassName() => "t057autoAST29Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST29.g:
   3:1: a : x=~ ID '+' INT ;*/
  t057autoAST29Parser_a_return a() {
    t057autoAST29Parser_a_return retval = new t057autoAST29Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token x = null;
    Token char_literal1 = null;
    Token INT2 = null;

    Object x_tree=null;
    Object char_literal1_tree=null;
    Object INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST29.g:
       3:3: (x=~ ID '+' INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST29.g:
       3:5: x=~ ID '+' INT*/
      {
      	root_0 = this._adaptor.nil();


      	x = this.input.LT(1);

      	if((this.input.LA(1) >= INT && this.input.LA(1) <= 7)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(x));
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      	char_literal1 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a25); 

      	char_literal1_tree = this._adaptor.createTreeNode(char_literal1);
      	this._adaptor.addChild(root_0, char_literal1_tree);


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a27); 

      	INT2_tree = this._adaptor.createTreeNode(INT2);
      	this._adaptor.addChild(root_0, INT2_tree);


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



 

  static BitSet _FOLLOW_set_in_a22 = null;
  static BitSet get FOLLOW_set_in_a22() {
    if(_FOLLOW_set_in_a22 == null) 
      _FOLLOW_set_in_a22 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_set_in_a22;
  }

  static BitSet _FOLLOW_7_in_a25 = null;
  static BitSet get FOLLOW_7_in_a25() {
    if(_FOLLOW_7_in_a25 == null) 
      _FOLLOW_7_in_a25 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_7_in_a25;
  }

  static BitSet _FOLLOW_INT_in_a27 = null;
  static BitSet get FOLLOW_INT_in_a27() {
    if(_FOLLOW_INT_in_a27 == null) 
      _FOLLOW_INT_in_a27 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a27;
  }



 }




class t057autoAST29Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t057autoAST32Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST32Parser extends Parser {

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


  t057autoAST32Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST32Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST32Parser._tokenNames;

  String get grammarFileName() => "t057autoAST32.g";

  String getRecognizerClassName() => "t057autoAST32Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST32.g:
   3:1: a :~ '+' ^ INT ;*/
  t057autoAST32Parser_a_return a() {
    t057autoAST32Parser_a_return retval = new t057autoAST32Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set1 = null;
    Token INT2 = null;

    Object set1_tree=null;
    Object INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST32.g:
       3:3: (~ '+' ^ INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST32.g:
       3:5: ~ '+' ^ INT*/
      {
      	root_0 = this._adaptor.nil();


      	set1=input.LT(1);

      	set1 = this.input.LT(1);

      	if((this.input.LA(1) >= ID && this.input.LA(1) <= WS)) {
      	  this.input.consume();
      	  root_0 = this._adaptor.becomeRoot(this._adaptor.createTreeNode(set1), root_0);
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a24); 

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



 

  static BitSet _FOLLOW_set_in_a20 = null;
  static BitSet get FOLLOW_set_in_a20() {
    if(_FOLLOW_set_in_a20 == null) 
      _FOLLOW_set_in_a20 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_set_in_a20;
  }

  static BitSet _FOLLOW_INT_in_a24 = null;
  static BitSet get FOLLOW_INT_in_a24() {
    if(_FOLLOW_INT_in_a24 == null) 
      _FOLLOW_INT_in_a24 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a24;
  }



 }




class t057autoAST32Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

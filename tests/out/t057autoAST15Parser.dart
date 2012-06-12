// $ANTLR 3.4 t057autoAST15Parser.g 2012-06-07 21:59:34
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST15Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "';'", "'null'", 
    "'void'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST15Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST15Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST15Parser._tokenNames;

  String get grammarFileName() => "t057autoAST15.g";

  String getRecognizerClassName() => "t057autoAST15Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST15.g:
   3:1: a : 'void' ( ( ID | INT ) ID | 'null' ) ';' ;*/
  t057autoAST15Parser_a_return a() {
    t057autoAST15Parser_a_return retval = new t057autoAST15Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token set2 = null;
    Token ID3 = null;
    Token string_literal4 = null;
    Token char_literal5 = null;

    Object string_literal1_tree=null;
    Object set2_tree=null;
    Object ID3_tree=null;
    Object string_literal4_tree=null;
    Object char_literal5_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST15.g:
       3:3: ( 'void' ( ( ID | INT ) ID | 'null' ) ';' )*/
      /* ../runtime/dart/tests/grammars/t057autoAST15.g:
       3:5: 'void' ( ( ID | INT ) ID | 'null' ) ';'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal1 = this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_a20); 

      	string_literal1_tree = this._adaptor.createTreeNode(string_literal1);
      	this._adaptor.addChild(root_0, string_literal1_tree);


      	/* ../runtime/dart/tests/grammars/t057autoAST15.g:
      	 3:12: ( ( ID | INT ) ID | 'null' )*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if(((LA1_0 >= ID && LA1_0 <= INT))) {
      	  alt1 = 1;
      	}
      	else if((LA1_0 == 8/*8*/)) {
      	  alt1 = 2;
      	}
      	else {
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 1, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t057autoAST15.g:
      	     3:13: ( ID | INT ) ID*/
      	    {
      	    	set2 = this.input.LT(1);

      	    	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      	    	  this.input.consume();
      	    	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set2));
      	    	  this.state.errorRecovery = false;
      	    	}
      	    	else {
      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	    	  throw mse;
      	    	}


      	    	ID3 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_a29); 

      	    	ID3_tree = this._adaptor.createTreeNode(ID3);
      	    	this._adaptor.addChild(root_0, ID3_tree);


      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t057autoAST15.g:
      	     3:27: 'null'*/
      	    {
      	    	string_literal4 = this.matchSymbol(this.input,
      	    	    8,FOLLOW_8_in_a33); 

      	    	string_literal4_tree = this._adaptor.createTreeNode(string_literal4);
      	    	this._adaptor.addChild(root_0, string_literal4_tree);


      	    }
      	    break;

      	}


      	char_literal5 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a37); 

      	char_literal5_tree = this._adaptor.createTreeNode(char_literal5);
      	this._adaptor.addChild(root_0, char_literal5_tree);


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



 

  static BitSet _FOLLOW_9_in_a20 = null;
  static BitSet get FOLLOW_9_in_a20() {
    if(_FOLLOW_9_in_a20 == null) 
      _FOLLOW_9_in_a20 = 
        new BitSet.fromList([0x0000000000000130]);
    return _FOLLOW_9_in_a20;
  }

  static BitSet _FOLLOW_set_in_a23 = null;
  static BitSet get FOLLOW_set_in_a23() {
    if(_FOLLOW_set_in_a23 == null) 
      _FOLLOW_set_in_a23 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_set_in_a23;
  }

  static BitSet _FOLLOW_ID_in_a29 = null;
  static BitSet get FOLLOW_ID_in_a29() {
    if(_FOLLOW_ID_in_a29 == null) 
      _FOLLOW_ID_in_a29 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_a29;
  }

  static BitSet _FOLLOW_8_in_a33 = null;
  static BitSet get FOLLOW_8_in_a33() {
    if(_FOLLOW_8_in_a33 == null) 
      _FOLLOW_8_in_a33 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_8_in_a33;
  }

  static BitSet _FOLLOW_7_in_a37 = null;
  static BitSet get FOLLOW_7_in_a37() {
    if(_FOLLOW_7_in_a37 == null) 
      _FOLLOW_7_in_a37 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a37;
  }



 }




class t057autoAST15Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

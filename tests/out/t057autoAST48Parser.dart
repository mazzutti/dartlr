// $ANTLR 3.4 t057autoAST48Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST48Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "EXPR", "ID", "INT", "WS", "';'", 
    "'='", "'float'", "'int'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int EXPR = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST48Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST48Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST48Parser._tokenNames;

  String get grammarFileName() => "t057autoAST48.g";

  String getRecognizerClassName() => "t057autoAST48Parser";


  // $ANTLR start "decl"
  /* ../runtime/dart/tests/grammars/t057autoAST48.g:
   4:1: decl : type ^ ID '=' ! INT ';' !;*/
  t057autoAST48Parser_decl_return decl() {
    t057autoAST48Parser_decl_return retval = new t057autoAST48Parser_decl_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID2 = null;
    Token char_literal3 = null;
    Token INT4 = null;
    Token char_literal5 = null;
    t057autoAST48Parser_type_return type1 =null;


    Object ID2_tree=null;
    Object char_literal3_tree=null;
    Object INT4_tree=null;
    Object char_literal5_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST48.g:
       4:6: ( type ^ ID '=' ! INT ';' !)*/
      /* ../runtime/dart/tests/grammars/t057autoAST48.g:
       4:8: type ^ ID '=' ! INT ';' !*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_type_in_decl25);
      	type1 = this.type();

      	this.state.fsp--;

      	root_0 = this._adaptor.becomeRoot(type1.tree, root_0);

      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_decl28); 

      	ID2_tree = this._adaptor.createTreeNode(ID2);
      	this._adaptor.addChild(root_0, ID2_tree);


      	char_literal3 = this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_decl30); 


      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_decl33); 

      	INT4_tree = this._adaptor.createTreeNode(INT4);
      	this._adaptor.addChild(root_0, INT4_tree);


      	char_literal5 = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_decl35); 


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
  // $ANTLR end "decl"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t057autoAST48.g:
   5:1: type : ( 'int' | 'float' );*/
  t057autoAST48Parser_type_return type() {
    t057autoAST48Parser_type_return retval = new t057autoAST48Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set6 = null;

    Object set6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST48.g:
       5:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t057autoAST48.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set6 = this.input.LT(1);

      	if((this.input.LA(1) >= 10 && this.input.LA(1) <= 11)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set6));
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


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
  // $ANTLR end "type"



 

  static BitSet _FOLLOW_type_in_decl25 = null;
  static BitSet get FOLLOW_type_in_decl25() {
    if(_FOLLOW_type_in_decl25 == null) 
      _FOLLOW_type_in_decl25 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_type_in_decl25;
  }

  static BitSet _FOLLOW_ID_in_decl28 = null;
  static BitSet get FOLLOW_ID_in_decl28() {
    if(_FOLLOW_ID_in_decl28 == null) 
      _FOLLOW_ID_in_decl28 = 
        new BitSet.fromList([0x0000000000000200]);
    return _FOLLOW_ID_in_decl28;
  }

  static BitSet _FOLLOW_9_in_decl30 = null;
  static BitSet get FOLLOW_9_in_decl30() {
    if(_FOLLOW_9_in_decl30 == null) 
      _FOLLOW_9_in_decl30 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_9_in_decl30;
  }

  static BitSet _FOLLOW_INT_in_decl33 = null;
  static BitSet get FOLLOW_INT_in_decl33() {
    if(_FOLLOW_INT_in_decl33 == null) 
      _FOLLOW_INT_in_decl33 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_INT_in_decl33;
  }

  static BitSet _FOLLOW_8_in_decl35 = null;
  static BitSet get FOLLOW_8_in_decl35() {
    if(_FOLLOW_8_in_decl35 == null) 
      _FOLLOW_8_in_decl35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_decl35;
  }



 }




class t057autoAST48Parser_decl_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST48Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

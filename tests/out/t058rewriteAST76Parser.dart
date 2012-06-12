// $ANTLR 3.4 t058rewriteAST76Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST76Parser extends Parser {

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


  t058rewriteAST76Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST76Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST76Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST76.g";

  String getRecognizerClassName() => "t058rewriteAST76Parser";


  // $ANTLR start "decl"
  /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
   5:1: decl : type ID '=' INT ';' -> ^( EXPR type ID INT ) ;*/
  t058rewriteAST76Parser_decl_return decl() {
    t058rewriteAST76Parser_decl_return retval = new t058rewriteAST76Parser_decl_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID2 = null;
    Token char_literal3 = null;
    Token INT4 = null;
    Token char_literal5 = null;
    t058rewriteAST76Parser_type_return type1 =null;


    Object ID2_tree=null;
    Object char_literal3_tree=null;
    Object INT4_tree=null;
    Object char_literal5_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_9=new RewriteRuleTokenStream(this._adaptor,"token 9");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
       5:6: ( type ID '=' INT ';' -> ^( EXPR type ID INT ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
       5:8: type ID '=' INT ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_decl26);
      	type1 = this.type();

      	this.state.fsp--;

      	stream_type.add(type1.tree);

      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_decl28); 
      	 
      	stream_ID.add(ID2);


      	char_literal3 = this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_decl30); 
      	 
      	stream_9.add(char_literal3);


      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_decl32); 
      	 
      	stream_INT.add(INT4);


      	char_literal5 = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_decl34); 
      	 
      	stream_8.add(char_literal5);


      	// AST REWRITE
      	// elements: ID, type, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:28: -> ^( EXPR type ID INT )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
      	     5:31: ^( EXPR type ID INT )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(EXPR, "EXPR")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_INT.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
   6:1: type : ( 'int' | 'float' );*/
  t058rewriteAST76Parser_type_return type() {
    t058rewriteAST76Parser_type_return retval = new t058rewriteAST76Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set6 = null;

    Object set6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
       6:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST76.g:
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



 

  static BitSet _FOLLOW_type_in_decl26 = null;
  static BitSet get FOLLOW_type_in_decl26() {
    if(_FOLLOW_type_in_decl26 == null) 
      _FOLLOW_type_in_decl26 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_type_in_decl26;
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

  static BitSet _FOLLOW_INT_in_decl32 = null;
  static BitSet get FOLLOW_INT_in_decl32() {
    if(_FOLLOW_INT_in_decl32 == null) 
      _FOLLOW_INT_in_decl32 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_INT_in_decl32;
  }

  static BitSet _FOLLOW_8_in_decl34 = null;
  static BitSet get FOLLOW_8_in_decl34() {
    if(_FOLLOW_8_in_decl34 == null) 
      _FOLLOW_8_in_decl34 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_decl34;
  }



 }




class t058rewriteAST76Parser_decl_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST76Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

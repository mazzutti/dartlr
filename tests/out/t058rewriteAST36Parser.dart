// $ANTLR 3.4 t058rewriteAST36Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST36Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "TYPE", "WS", "';'", 
    "'='", "'int'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int ID = 4;
  static final int INT = 5;
  static final int TYPE = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST36Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST36Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST36Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST36.g";

  String getRecognizerClassName() => "t058rewriteAST36Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
   5:1: a : b b ;*/
  t058rewriteAST36Parser_a_return a() {
    t058rewriteAST36Parser_a_return retval = new t058rewriteAST36Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST36Parser_b_return b1 =null;

    t058rewriteAST36Parser_b_return b2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
       5:3: ( b b )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
       5:5: b b*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a26);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

      	this.pushFollow(FOLLOW_b_in_a28);
      	b2 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b2.tree);

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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
   6:1: b : 'int' ( ID -> ^( TYPE 'int' ID ) | ID '=' INT -> ^( TYPE 'int' ID INT ) ) ';' ; */
  t058rewriteAST36Parser_b_return b() {
    t058rewriteAST36Parser_b_return retval = new t058rewriteAST36Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal3 = null;
    Token ID4 = null;
    Token ID5 = null;
    Token char_literal6 = null;
    Token INT7 = null;
    Token char_literal8 = null;

    Object string_literal3_tree=null;
    Object ID4_tree=null;
    Object ID5_tree=null;
    Object char_literal6_tree=null;
    Object INT7_tree=null;
    Object char_literal8_tree=null;
    RewriteRuleTokenStream stream_10=new RewriteRuleTokenStream(this._adaptor,"token 10");
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_9=new RewriteRuleTokenStream(this._adaptor,"token 9");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
       6:3: ( 'int' ( ID -> ^( TYPE 'int' ID ) | ID '=' INT -> ^( TYPE 'int' ID INT ) ) ';' ) */
      /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
       6:5: 'int' ( ID -> ^( TYPE 'int' ID ) | ID '=' INT -> ^( TYPE 'int' ID INT ) ) ';' */
      {
      	string_literal3 = this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_b36); 
      	 
      	stream_10.add(string_literal3);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
      	 7:5: ( ID -> ^( TYPE 'int' ID ) | ID '=' INT -> ^( TYPE 'int' ID INT ) )*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 4/*ID*/)) {
      	  int LA1_1 = this.input.LA(2);

      	  if((LA1_1 == 9/*9*/)) {
      	    alt1 = 2;
      	  }
      	  else if((LA1_1 == 8/*8*/)) {
      	    alt1 = 1;
      	  }
      	  else {
      	    NoViableAltException nvae =
      	        new NoViableAltException("", 1, 1, this.input);

      	    throw nvae;

      	  }
      	}
      	else {
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 1, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
      	     7:7: ID*/
      	    {
      	    	ID4 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_b44); 
      	    	 
      	    	stream_ID.add(ID4);


      	    	// AST REWRITE
      	    	// elements: ID, 10
      	    	// token labels: 
      	    	// rule labels: retval
      	    	// token list labels: 
      	    	// rule list labels: 
      	    	// wildcard labels: 
      	    	retval.tree = root_0;
      	    	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	    	root_0 = this._adaptor.nil();
      	    	/* 7:10: -> ^( TYPE 'int' ID )*/
      	    	{
      	    	    /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
      	    	     7:13: ^( TYPE 'int' ID )*/
      	    	    {
      	    	    	Object root_1 = this._adaptor.nil();
      	    	    	root_1 = this._adaptor.becomeRoot(
      	    	    	this._adaptor.create(TYPE, "TYPE")
      	    	    	, root_1);

      	    	    	this._adaptor.addChild(root_1, 
      	    	    	stream_10.nextNode()
      	    	    	);

      	    	    	this._adaptor.addChild(root_1, 
      	    	    	stream_ID.nextNode()
      	    	    	);

      	    	    	this._adaptor.addChild(root_0, root_1);
      	    	    }

      	    	}


      	    	retval.tree = root_0;

      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
      	     8:7: ID '=' INT*/
      	    {
      	    	ID5 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_b62); 
      	    	 
      	    	stream_ID.add(ID5);


      	    	char_literal6 = this.matchSymbol(this.input,
      	    	    9,FOLLOW_9_in_b64); 
      	    	 
      	    	stream_9.add(char_literal6);


      	    	INT7 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_b66); 
      	    	 
      	    	stream_INT.add(INT7);


      	    	// AST REWRITE
      	    	// elements: 10, INT, ID
      	    	// token labels: 
      	    	// rule labels: retval
      	    	// token list labels: 
      	    	// rule list labels: 
      	    	// wildcard labels: 
      	    	retval.tree = root_0;
      	    	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	    	root_0 = this._adaptor.nil();
      	    	/* 8:18: -> ^( TYPE 'int' ID INT )*/
      	    	{
      	    	    /* ../runtime/dart/tests/grammars/t058rewriteAST36.g:
      	    	     8:21: ^( TYPE 'int' ID INT )*/
      	    	    {
      	    	    	Object root_1 = this._adaptor.nil();
      	    	    	root_1 = this._adaptor.becomeRoot(
      	    	    	this._adaptor.create(TYPE, "TYPE")
      	    	    	, root_1);

      	    	    	this._adaptor.addChild(root_1, 
      	    	    	stream_10.nextNode()
      	    	    	);

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
      	    break;

      	}


      	char_literal8 = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_b90); 
      	 
      	stream_8.add(char_literal8);


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
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a26 = null;
  static BitSet get FOLLOW_b_in_a26() {
    if(_FOLLOW_b_in_a26 == null) 
      _FOLLOW_b_in_a26 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_b_in_a26;
  }

  static BitSet _FOLLOW_b_in_a28 = null;
  static BitSet get FOLLOW_b_in_a28() {
    if(_FOLLOW_b_in_a28 == null) 
      _FOLLOW_b_in_a28 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a28;
  }

  static BitSet _FOLLOW_10_in_b36 = null;
  static BitSet get FOLLOW_10_in_b36() {
    if(_FOLLOW_10_in_b36 == null) 
      _FOLLOW_10_in_b36 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_10_in_b36;
  }

  static BitSet _FOLLOW_ID_in_b44 = null;
  static BitSet get FOLLOW_ID_in_b44() {
    if(_FOLLOW_ID_in_b44 == null) 
      _FOLLOW_ID_in_b44 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_ID_in_b44;
  }

  static BitSet _FOLLOW_ID_in_b62 = null;
  static BitSet get FOLLOW_ID_in_b62() {
    if(_FOLLOW_ID_in_b62 == null) 
      _FOLLOW_ID_in_b62 = 
        new BitSet.fromList([0x0000000000000200]);
    return _FOLLOW_ID_in_b62;
  }

  static BitSet _FOLLOW_9_in_b64 = null;
  static BitSet get FOLLOW_9_in_b64() {
    if(_FOLLOW_9_in_b64 == null) 
      _FOLLOW_9_in_b64 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_9_in_b64;
  }

  static BitSet _FOLLOW_INT_in_b66 = null;
  static BitSet get FOLLOW_INT_in_b66() {
    if(_FOLLOW_INT_in_b66 == null) 
      _FOLLOW_INT_in_b66 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_INT_in_b66;
  }

  static BitSet _FOLLOW_8_in_b90 = null;
  static BitSet get FOLLOW_8_in_b90() {
    if(_FOLLOW_8_in_b90 == null) 
      _FOLLOW_8_in_b90 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_b90;
  }



 }




class t058rewriteAST36Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST36Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

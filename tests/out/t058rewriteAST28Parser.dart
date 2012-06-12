// $ANTLR 3.4 t058rewriteAST28Parser.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST28Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "':'", "';'", 
    "'float'", "'int'", "'var'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST28Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST28Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST28Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST28.g";

  String getRecognizerClassName() => "t058rewriteAST28Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
   4:1: a : 'var' ( ID ':' type ';' )+ -> ^( 'var' ( ^( ':' ID type ) )+ ) ;*/
  t058rewriteAST28Parser_a_return a() {
    t058rewriteAST28Parser_a_return retval = new t058rewriteAST28Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token ID2 = null;
    Token char_literal3 = null;
    Token char_literal5 = null;
    t058rewriteAST28Parser_type_return type4 =null;


    Object string_literal1_tree=null;
    Object ID2_tree=null;
    Object char_literal3_tree=null;
    Object char_literal5_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");
    RewriteRuleTokenStream stream_11=new RewriteRuleTokenStream(this._adaptor,"token 11");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
       4:3: ( 'var' ( ID ':' type ';' )+ -> ^( 'var' ( ^( ':' ID type ) )+ ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
       4:5: 'var' ( ID ':' type ';' )+*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_a21); 
      	 
      	stream_11.add(string_literal1);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
      	 4:11: ( ID ':' type ';' )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
      			   4:12: ID ':' type ';'*/
      			  {
      			  	ID2 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a24); 
      			  	 
      			  	stream_ID.add(ID2);


      			  	char_literal3 = this.matchSymbol(this.input,
      			  	    7,FOLLOW_7_in_a26); 
      			  	 
      			  	stream_7.add(char_literal3);


      			  	this.pushFollow(FOLLOW_type_in_a28);
      			  	type4 = this.type();

      			  	this.state.fsp--;

      			  	stream_type.add(type4.tree);

      			  	char_literal5 = this.matchSymbol(this.input,
      			  	    8,FOLLOW_8_in_a30); 
      			  	 
      			  	stream_8.add(char_literal5);


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


      	// AST REWRITE
      	// elements: 7, ID, 11, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:30: -> ^( 'var' ( ^( ':' ID type ) )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
      	     4:33: ^( 'var' ( ^( ':' ID type ) )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_11.nextNode()
      	    	, root_1);

      	    	if(!(stream_7.hasNext()||stream_ID.hasNext()||stream_type.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_7.hasNext()||stream_ID.hasNext()||stream_type.hasNext()) {
      	    	    /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
      	    	     4:41: ^( ':' ID type )*/
      	    	    {
      	    	    	Object root_2 = this._adaptor.nil();
      	    	    	root_2 = this._adaptor.becomeRoot(
      	    	    	stream_7.nextNode()
      	    	    	, root_2);

      	    	    	this._adaptor.addChild(root_2, 
      	    	    	stream_ID.nextNode()
      	    	    	);

      	    	    	this._adaptor.addChild(root_2, stream_type.nextTree());

      	    	    	this._adaptor.addChild(root_1, root_2);
      	    	    }

      	    	}
      	    	stream_7.reset();
      	    	stream_ID.reset();
      	    	stream_type.reset();

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
  // $ANTLR end "a"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
   5:1: type : ( 'int' | 'float' );*/
  t058rewriteAST28Parser_type_return type() {
    t058rewriteAST28Parser_type_return retval = new t058rewriteAST28Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set6 = null;

    Object set6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
       5:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST28.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set6 = this.input.LT(1);

      	if((this.input.LA(1) >= 9 && this.input.LA(1) <= 10)) {
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



 

  static BitSet _FOLLOW_11_in_a21 = null;
  static BitSet get FOLLOW_11_in_a21() {
    if(_FOLLOW_11_in_a21 == null) 
      _FOLLOW_11_in_a21 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_11_in_a21;
  }

  static BitSet _FOLLOW_ID_in_a24 = null;
  static BitSet get FOLLOW_ID_in_a24() {
    if(_FOLLOW_ID_in_a24 == null) 
      _FOLLOW_ID_in_a24 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_a24;
  }

  static BitSet _FOLLOW_7_in_a26 = null;
  static BitSet get FOLLOW_7_in_a26() {
    if(_FOLLOW_7_in_a26 == null) 
      _FOLLOW_7_in_a26 = 
        new BitSet.fromList([0x0000000000000600]);
    return _FOLLOW_7_in_a26;
  }

  static BitSet _FOLLOW_type_in_a28 = null;
  static BitSet get FOLLOW_type_in_a28() {
    if(_FOLLOW_type_in_a28 == null) 
      _FOLLOW_type_in_a28 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_type_in_a28;
  }

  static BitSet _FOLLOW_8_in_a30 = null;
  static BitSet get FOLLOW_8_in_a30() {
    if(_FOLLOW_8_in_a30 == null) 
      _FOLLOW_8_in_a30 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_8_in_a30;
  }



 }




class t058rewriteAST28Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST28Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t058rewriteAST49Parser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST49Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'", "','", 
    "'-'", "';'", "'int'"
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


  t058rewriteAST49Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST49Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST49Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST49.g";

  String getRecognizerClassName() => "t058rewriteAST49Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
   4:1: a : 'int' ID ( ',' ID )* ';' -> ^( 'int' ( ID )+ ) ;*/
  t058rewriteAST49Parser_a_return a() {
    t058rewriteAST49Parser_a_return retval = new t058rewriteAST49Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token ID2 = null;
    Token char_literal3 = null;
    Token ID4 = null;
    Token char_literal5 = null;

    Object string_literal1_tree=null;
    Object ID2_tree=null;
    Object char_literal3_tree=null;
    Object ID4_tree=null;
    Object char_literal5_tree=null;
    RewriteRuleTokenStream stream_10=new RewriteRuleTokenStream(this._adaptor,"token 10");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");
    RewriteRuleTokenStream stream_11=new RewriteRuleTokenStream(this._adaptor,"token 11");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
       4:3: ( 'int' ID ( ',' ID )* ';' -> ^( 'int' ( ID )+ ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
       4:5: 'int' ID ( ',' ID )* ';'*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_a21); 
      	 
      	stream_11.add(string_literal1);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a23); 
      	 
      	stream_ID.add(ID2);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
      	 4:14: ( ',' ID )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 8/*8*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
      			   4:15: ',' ID*/
      			  {
      			  	char_literal3 = this.matchSymbol(this.input,
      			  	    8,FOLLOW_8_in_a26); 
      			  	 
      			  	stream_8.add(char_literal3);


      			  	ID4 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a28); 
      			  	 
      			  	stream_ID.add(ID4);


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	char_literal5 = this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_a32); 
      	 
      	stream_10.add(char_literal5);


      	// AST REWRITE
      	// elements: ID, 11
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:28: -> ^( 'int' ( ID )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
      	     4:31: ^( 'int' ( ID )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_11.nextNode()
      	    	, root_1);

      	    	if(!(stream_ID.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_ID.hasNext()) {
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_ID.nextNode()
      	    	    );

      	    	}
      	    	stream_ID.reset();

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


  // $ANTLR start "op"
  /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
   5:1: op : ( '+' | '-' );*/
  t058rewriteAST49Parser_op_return op() {
    t058rewriteAST49Parser_op_return retval = new t058rewriteAST49Parser_op_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set6 = null;

    Object set6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
       5:4: ( '+' | '-' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST49.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set6 = this.input.LT(1);

      	if(this.input.LA(1) == 7
      	  || this.input.LA(1) == 9) {
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
  // $ANTLR end "op"



 

  static BitSet _FOLLOW_11_in_a21 = null;
  static BitSet get FOLLOW_11_in_a21() {
    if(_FOLLOW_11_in_a21 == null) 
      _FOLLOW_11_in_a21 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_11_in_a21;
  }

  static BitSet _FOLLOW_ID_in_a23 = null;
  static BitSet get FOLLOW_ID_in_a23() {
    if(_FOLLOW_ID_in_a23 == null) 
      _FOLLOW_ID_in_a23 = 
        new BitSet.fromList([0x0000000000000500]);
    return _FOLLOW_ID_in_a23;
  }

  static BitSet _FOLLOW_8_in_a26 = null;
  static BitSet get FOLLOW_8_in_a26() {
    if(_FOLLOW_8_in_a26 == null) 
      _FOLLOW_8_in_a26 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_8_in_a26;
  }

  static BitSet _FOLLOW_ID_in_a28 = null;
  static BitSet get FOLLOW_ID_in_a28() {
    if(_FOLLOW_ID_in_a28 == null) 
      _FOLLOW_ID_in_a28 = 
        new BitSet.fromList([0x0000000000000500]);
    return _FOLLOW_ID_in_a28;
  }

  static BitSet _FOLLOW_10_in_a32 = null;
  static BitSet get FOLLOW_10_in_a32() {
    if(_FOLLOW_10_in_a32 == null) 
      _FOLLOW_10_in_a32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_10_in_a32;
  }



 }




class t058rewriteAST49Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST49Parser_op_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

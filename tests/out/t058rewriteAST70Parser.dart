// $ANTLR 3.4 t058rewriteAST70Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST70Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "PARMS", "WS", "'#'", 
    "'('", "')'", "'modulo'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int ID = 4;
  static final int PARMS = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST70Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST70Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST70Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST70.g";

  String getRecognizerClassName() => "t058rewriteAST70Parser";


  // $ANTLR start "modulo"
  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
   4:1: modulo : 'modulo' ID ( '(' ( parms )+ ')' )? -> ^( 'modulo' ID ( ^( PARMS ( parms )+ ) )? ) ;*/
  t058rewriteAST70Parser_modulo_return modulo() {
    t058rewriteAST70Parser_modulo_return retval = new t058rewriteAST70Parser_modulo_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token ID2 = null;
    Token char_literal3 = null;
    Token char_literal5 = null;
    t058rewriteAST70Parser_parms_return parms4 =null;


    Object string_literal1_tree=null;
    Object ID2_tree=null;
    Object char_literal3_tree=null;
    Object char_literal5_tree=null;
    RewriteRuleTokenStream stream_10=new RewriteRuleTokenStream(this._adaptor,"token 10");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_9=new RewriteRuleTokenStream(this._adaptor,"token 9");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");
    RewriteRuleSubtreeStream stream_parms=new RewriteRuleSubtreeStream(this._adaptor,"rule parms");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
       5:2: ( 'modulo' ID ( '(' ( parms )+ ')' )? -> ^( 'modulo' ID ( ^( PARMS ( parms )+ ) )? ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
       5:4: 'modulo' ID ( '(' ( parms )+ ')' )?*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_modulo29); 
      	 
      	stream_10.add(string_literal1);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_modulo31); 
      	 
      	stream_ID.add(ID2);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	 5:16: ( '(' ( parms )+ ')' )?*/
      	int alt2 = 2;
      	int LA2_0 = this.input.LA(1);

      	if((LA2_0 == 8/*8*/)) {
      	  alt2 = 1;
      	}
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	     5:17: '(' ( parms )+ ')'*/
      	    {
      	    	char_literal3 = this.matchSymbol(this.input,
      	    	    8,FOLLOW_8_in_modulo34); 
      	    	 
      	    	stream_8.add(char_literal3);


      	    	/* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	    	 5:21: ( parms )+*/
      	    	int cnt1 = 0;
      	    	loop1:
      	    	do {
      	    	  int alt1 = 2;
      	    	  int LA1_0 = this.input.LA(1);

      	    	  if((LA1_0 == 4/*ID*/
      	    	    || LA1_0 == 7/*7*/)) {
      	    	    alt1 = 1;
      	    	  }


      	    	  switch (alt1) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	    			   5:21: parms*/
      	    			  {
      	    			  	this.pushFollow(FOLLOW_parms_in_modulo36);
      	    			  	parms4 = this.parms();

      	    			  	this.state.fsp--;

      	    			  	stream_parms.add(parms4.tree);

      	    			  }
      	    			  break;

      	    			default :
      	    		    if(cnt1 >= 1) break loop1;
      	    	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	    	        throw eee;
      	    	  }
      	    	  cnt1++;
      	    	} while(true);


      	    	char_literal5 = this.matchSymbol(this.input,
      	    	    9,FOLLOW_9_in_modulo39); 
      	    	 
      	    	stream_9.add(char_literal5);


      	    }
      	    break;

      	}


      	// AST REWRITE
      	// elements: parms, 10, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:34: -> ^( 'modulo' ID ( ^( PARMS ( parms )+ ) )? )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	     5:37: ^( 'modulo' ID ( ^( PARMS ( parms )+ ) )? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_10.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	/* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	    	 5:51: ( ^( PARMS ( parms )+ ) )?*/
      	    	if(stream_parms.hasNext()) {
      	    	    /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      	    	     5:51: ^( PARMS ( parms )+ )*/
      	    	    {
      	    	    	Object root_2 = this._adaptor.nil();
      	    	    	root_2 = this._adaptor.becomeRoot(
      	    	    	this._adaptor.create(PARMS, "PARMS")
      	    	    	, root_2);

      	    	    	if(!(stream_parms.hasNext())) {
      	    	    	    throw new RewriteEarlyExitException();
      	    	    	}
      	    	    	while ( stream_parms.hasNext()) {
      	    	    	    this._adaptor.addChild(root_2, stream_parms.nextTree());

      	    	    	}
      	    	    	stream_parms.reset();

      	    	    	this._adaptor.addChild(root_1, root_2);
      	    	    }

      	    	}
      	    	stream_parms.reset();

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
  // $ANTLR end "modulo"


  // $ANTLR start "parms"
  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
   7:1: parms : ( '#' | ID );*/
  t058rewriteAST70Parser_parms_return parms() {
    t058rewriteAST70Parser_parms_return retval = new t058rewriteAST70Parser_parms_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set6 = null;

    Object set6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
       7:7: ( '#' | ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set6 = this.input.LT(1);

      	if(this.input.LA(1) == ID
      	  || this.input.LA(1) == 7) {
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
  // $ANTLR end "parms"



 

  static BitSet _FOLLOW_10_in_modulo29 = null;
  static BitSet get FOLLOW_10_in_modulo29() {
    if(_FOLLOW_10_in_modulo29 == null) 
      _FOLLOW_10_in_modulo29 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_10_in_modulo29;
  }

  static BitSet _FOLLOW_ID_in_modulo31 = null;
  static BitSet get FOLLOW_ID_in_modulo31() {
    if(_FOLLOW_ID_in_modulo31 == null) 
      _FOLLOW_ID_in_modulo31 = 
        new BitSet.fromList([0x0000000000000102]);
    return _FOLLOW_ID_in_modulo31;
  }

  static BitSet _FOLLOW_8_in_modulo34 = null;
  static BitSet get FOLLOW_8_in_modulo34() {
    if(_FOLLOW_8_in_modulo34 == null) 
      _FOLLOW_8_in_modulo34 = 
        new BitSet.fromList([0x0000000000000090]);
    return _FOLLOW_8_in_modulo34;
  }

  static BitSet _FOLLOW_parms_in_modulo36 = null;
  static BitSet get FOLLOW_parms_in_modulo36() {
    if(_FOLLOW_parms_in_modulo36 == null) 
      _FOLLOW_parms_in_modulo36 = 
        new BitSet.fromList([0x0000000000000290]);
    return _FOLLOW_parms_in_modulo36;
  }

  static BitSet _FOLLOW_9_in_modulo39 = null;
  static BitSet get FOLLOW_9_in_modulo39() {
    if(_FOLLOW_9_in_modulo39 == null) 
      _FOLLOW_9_in_modulo39 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_9_in_modulo39;
  }



 }




class t058rewriteAST70Parser_modulo_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST70Parser_parms_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

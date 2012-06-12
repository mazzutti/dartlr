// $ANTLR 3.4 t042astParser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t042astParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "CALL", "EXPR", "FIELD", 
    "FIELDACCESS", "FLOAT", "ID", "INDEX", "INT", "VARDEF", "VARIABLE", 
    "WS", "'('", "')'", "'+'", "','", "'.'", "':'", "';'", "'='", "'['", 
    "']'", "'assert'", "'bool'", "'class'", "'else'", "'extends'", "'foo28a'", 
    "'foo28b'", "'fooze'", "'fooze2'", "'for'", "'if'", "'implements'", 
    "'int'", "'private'", "'public'", "'return'", "'var'", "'while'", "'{'", 
    "'}'"
  ];

  static final int EOF = -1;
  static final int T__16 = 16;
  static final int T__17 = 17;
  static final int T__18 = 18;
  static final int T__19 = 19;
  static final int T__20 = 20;
  static final int T__21 = 21;
  static final int T__22 = 22;
  static final int T__23 = 23;
  static final int T__24 = 24;
  static final int T__25 = 25;
  static final int T__26 = 26;
  static final int T__27 = 27;
  static final int T__28 = 28;
  static final int T__29 = 29;
  static final int T__30 = 30;
  static final int T__31 = 31;
  static final int T__32 = 32;
  static final int T__33 = 33;
  static final int T__34 = 34;
  static final int T__35 = 35;
  static final int T__36 = 36;
  static final int T__37 = 37;
  static final int T__38 = 38;
  static final int T__39 = 39;
  static final int T__40 = 40;
  static final int T__41 = 41;
  static final int T__42 = 42;
  static final int T__43 = 43;
  static final int T__44 = 44;
  static final int T__45 = 45;
  static final int BLOCK = 4;
  static final int CALL = 5;
  static final int EXPR = 6;
  static final int FIELD = 7;
  static final int FIELDACCESS = 8;
  static final int FLOAT = 9;
  static final int ID = 10;
  static final int INDEX = 11;
  static final int INT = 12;
  static final int VARDEF = 13;
  static final int VARIABLE = 14;
  static final int WS = 15;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t042astParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t042astParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t042astParser._tokenNames;

  String get grammarFileName() => "t042ast.g";

  String getRecognizerClassName() => "t042astParser";


  int flag = -1;
  List map(List a, Function fn) {
    List r = new List();
    for (int i = 0; i < a.length; i++)
      r.add(fn(a[i]));
    return r;
  }


  // $ANTLR start "r1"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   30:1: r1 : INT ( '+' ^ INT )* ;*/
  t042astParser_r1_return r1() {
    t042astParser_r1_return retval = new t042astParser_r1_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT1 = null;
    Token char_literal2 = null;
    Token INT3 = null;

    Object INT1_tree=null;
    Object char_literal2_tree=null;
    Object INT3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       31:5: ( INT ( '+' ^ INT )* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       31:7: INT ( '+' ^ INT )**/
      {
      	root_0 = this._adaptor.nil();


      	INT1 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r1115); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	INT1_tree = this._adaptor.createTreeNode(INT1);
      	this._adaptor.addChild(root_0, INT1_tree);
      	}

      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 31:11: ( '+' ^ INT )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 18/*18*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   31:12: '+' ^ INT*/
      			  {
      			  	char_literal2 = this.matchSymbol(this.input,
      			  	    18,FOLLOW_18_in_r1118); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	char_literal2_tree = this._adaptor.createTreeNode(char_literal2);
      			  	root_0 = this._adaptor.becomeRoot(char_literal2_tree, root_0);
      			  	}

      			  	INT3 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_r1121); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	INT3_tree = this._adaptor.createTreeNode(INT3);
      			  	this._adaptor.addChild(root_0, INT3_tree);
      			  	}

      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r1"


  // $ANTLR start "r2"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   34:1: r2 : 'assert' ^x= expression ( ':' !y= expression )? ';' !;*/
  t042astParser_r2_return r2() {
    t042astParser_r2_return retval = new t042astParser_r2_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal4 = null;
    Token char_literal5 = null;
    Token char_literal6 = null;
    t042astParser_expression_return x =null;

    t042astParser_expression_return y =null;


    Object string_literal4_tree=null;
    Object char_literal5_tree=null;
    Object char_literal6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       35:5: ( 'assert' ^x= expression ( ':' !y= expression )? ';' !)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       35:7: 'assert' ^x= expression ( ':' !y= expression )? ';' !*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal4 = this.matchSymbol(this.input,
      	    26,FOLLOW_26_in_r2140); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	string_literal4_tree = this._adaptor.createTreeNode(string_literal4);
      	root_0 = this._adaptor.becomeRoot(string_literal4_tree, root_0);
      	}

      	this.pushFollow(FOLLOW_expression_in_r2145);
      	x = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, x.tree);

      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 35:30: ( ':' !y= expression )?*/
      	int alt2 = 2;
      	int LA2_0 = this.input.LA(1);

      	if((LA2_0 == 21/*21*/)) {
      	  alt2 = 1;
      	}
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     35:31: ':' !y= expression*/
      	    {
      	    	char_literal5 = this.matchSymbol(this.input,
      	    	    21,FOLLOW_21_in_r2148); 
      	    	if(this.state.failed) 
      	    	  return retval;

      	    	this.pushFollow(FOLLOW_expression_in_r2153);
      	    	y = this.expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0)
      	    	  this._adaptor.addChild(root_0, y.tree);

      	    }
      	    break;

      	}


      	char_literal6 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r2157); 
      	if(this.state.failed) 
      	  return retval;

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r2"


  // $ANTLR start "r3"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   38:1: r3 : 'if' ^ expression s1= statement ( 'else' !s2= statement )? ;*/
  t042astParser_r3_return r3() {
    t042astParser_r3_return retval = new t042astParser_r3_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal7 = null;
    Token string_literal9 = null;
    t042astParser_statement_return s1 =null;

    t042astParser_statement_return s2 =null;

    t042astParser_expression_return expression8 =null;


    Object string_literal7_tree=null;
    Object string_literal9_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       39:5: ( 'if' ^ expression s1= statement ( 'else' !s2= statement )? )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       39:7: 'if' ^ expression s1= statement ( 'else' !s2= statement )?*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal7 = this.matchSymbol(this.input,
      	    36,FOLLOW_36_in_r3175); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	string_literal7_tree = this._adaptor.createTreeNode(string_literal7);
      	root_0 = this._adaptor.becomeRoot(string_literal7_tree, root_0);
      	}

      	this.pushFollow(FOLLOW_expression_in_r3178);
      	expression8 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, expression8.tree);

      	this.pushFollow(FOLLOW_statement_in_r3182);
      	s1 = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, s1.tree);

      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 39:37: ( 'else' !s2= statement )?*/
      	int alt3 = 2;
      	int LA3_0 = this.input.LA(1);

      	if((LA3_0 == 29/*29*/)) {
      	  alt3 = 1;
      	}
      	switch (alt3) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     39:38: 'else' !s2= statement*/
      	    {
      	    	string_literal9 = this.matchSymbol(this.input,
      	    	    29,FOLLOW_29_in_r3185); 
      	    	if(this.state.failed) 
      	    	  return retval;

      	    	this.pushFollow(FOLLOW_statement_in_r3190);
      	    	s2 = this.statement();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0)
      	    	  this._adaptor.addChild(root_0, s2.tree);

      	    }
      	    break;

      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r3"


  // $ANTLR start "r4"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   42:1: r4 : 'while' ^ expression statement ;*/
  t042astParser_r4_return r4() {
    t042astParser_r4_return retval = new t042astParser_r4_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal10 = null;
    t042astParser_expression_return expression11 =null;

    t042astParser_statement_return statement12 =null;


    Object string_literal10_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       43:5: ( 'while' ^ expression statement )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       43:7: 'while' ^ expression statement*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal10 = this.matchSymbol(this.input,
      	    43,FOLLOW_43_in_r4209); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	string_literal10_tree = this._adaptor.createTreeNode(string_literal10);
      	root_0 = this._adaptor.becomeRoot(string_literal10_tree, root_0);
      	}

      	this.pushFollow(FOLLOW_expression_in_r4212);
      	expression11 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, expression11.tree);

      	this.pushFollow(FOLLOW_statement_in_r4214);
      	statement12 = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, statement12.tree);

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r4"


  // $ANTLR start "r5"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   46:1: r5 : 'return' ^ ( expression )? ';' !;*/
  t042astParser_r5_return r5() {
    t042astParser_r5_return retval = new t042astParser_r5_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal13 = null;
    Token char_literal15 = null;
    t042astParser_expression_return expression14 =null;


    Object string_literal13_tree=null;
    Object char_literal15_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       47:5: ( 'return' ^ ( expression )? ';' !)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       47:7: 'return' ^ ( expression )? ';' !*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal13 = this.matchSymbol(this.input,
      	    41,FOLLOW_41_in_r5231); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	string_literal13_tree = this._adaptor.createTreeNode(string_literal13);
      	root_0 = this._adaptor.becomeRoot(string_literal13_tree, root_0);
      	}

      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 47:17: ( expression )?*/
      	int alt4 = 2;
      	int LA4_0 = this.input.LA(1);

      	if((LA4_0 == 12/*INT*/)) {
      	  alt4 = 1;
      	}
      	switch (alt4) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     47:17: expression*/
      	    {
      	    	this.pushFollow(FOLLOW_expression_in_r5234);
      	    	expression14 = this.expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0)
      	    	  this._adaptor.addChild(root_0, expression14.tree);

      	    }
      	    break;

      	}


      	char_literal15 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r5237); 
      	if(this.state.failed) 
      	  return retval;

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r5"


  // $ANTLR start "r6"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   50:1: r6 : ( INT | ID )+ ;*/
  t042astParser_r6_return r6() {
    t042astParser_r6_return retval = new t042astParser_r6_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set16 = null;

    Object set16_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       51:5: ( ( INT | ID )+ )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       51:7: ( INT | ID )+*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 51:7: ( INT | ID )+*/
      	int cnt5 = 0;
      	loop5:
      	do {
      	  int alt5 = 2;
      	  int LA5_0 = this.input.LA(1);

      	  if((LA5_0 == 10/*ID*/
      	    || LA5_0 == 12/*INT*/)) {
      	    alt5 = 1;
      	  }


      	  switch (alt5) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			  */
      			  {
      			  	set16 = this.input.LT(1);

      			  	if(this.input.LA(1) == ID
      			  	  || this.input.LA(1) == INT) {
      			  	  this.input.consume();
      			  	  if(this.state.backtracking == 0)
      			  	    this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set16));
      			  	  this.state.errorRecovery = false;
      			  	  this.state.failed = false;
      			  	}
      			  	else {
      			  	  if(this.state.backtracking > 0) {
      			  	    this.state.failed = true; 
      			  	    return retval;
      			  	  }
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  throw mse;
      			  	}


      			  }
      			  break;

      			default :
      		    if(cnt5 >= 1) break loop5;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return retval;
      		      }
      	        EarlyExitException eee = new EarlyExitException(5, this.input);
      	        throw eee;
      	  }
      	  cnt5++;
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r6"


  // $ANTLR start "r7"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   54:1: r7 : INT ->;*/
  t042astParser_r7_return r7() {
    t042astParser_r7_return retval = new t042astParser_r7_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT17 = null;

    Object INT17_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       55:5: ( INT ->)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       55:7: INT*/
      {
      	INT17 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r7277); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_INT.add(INT17);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 55:11: ->*/
      	{
      	    root_0 = null;
      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r7"


  // $ANTLR start "r8"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   58:1: r8 : 'var' ID ':' type -> ^( 'var' type ID ) ;*/
  t042astParser_r8_return r8() {
    t042astParser_r8_return retval = new t042astParser_r8_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal18 = null;
    Token ID19 = null;
    Token char_literal20 = null;
    t042astParser_type_return type21 =null;


    Object string_literal18_tree=null;
    Object ID19_tree=null;
    Object char_literal20_tree=null;
    RewriteRuleTokenStream stream_21=new RewriteRuleTokenStream(this._adaptor,"token 21");
    RewriteRuleTokenStream stream_42=new RewriteRuleTokenStream(this._adaptor,"token 42");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       59:5: ( 'var' ID ':' type -> ^( 'var' type ID ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       59:7: 'var' ID ':' type*/
      {
      	string_literal18 = this.matchSymbol(this.input,
      	    42,FOLLOW_42_in_r8297); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_42.add(string_literal18);


      	ID19 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r8299); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID19);


      	char_literal20 = this.matchSymbol(this.input,
      	    21,FOLLOW_21_in_r8301); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_21.add(char_literal20);


      	this.pushFollow(FOLLOW_type_in_r8303);
      	type21 = this.type();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_type.add(type21.tree);

      	// AST REWRITE
      	// elements: type, ID, 42
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 59:25: -> ^( 'var' type ID )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     59:28: ^( 'var' type ID )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_42.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r8"


  // $ANTLR start "r9"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   62:1: r9 : type ID ';' -> ^( VARDEF type ID ) ;*/
  t042astParser_r9_return r9() {
    t042astParser_r9_return retval = new t042astParser_r9_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID23 = null;
    Token char_literal24 = null;
    t042astParser_type_return type22 =null;


    Object ID23_tree=null;
    Object char_literal24_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       63:5: ( type ID ';' -> ^( VARDEF type ID ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       63:7: type ID ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_r9331);
      	type22 = this.type();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_type.add(type22.tree);

      	ID23 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r9333); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID23);


      	char_literal24 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r9335); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal24);


      	// AST REWRITE
      	// elements: ID, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 63:19: -> ^( VARDEF type ID )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     63:22: ^( VARDEF type ID )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(VARDEF, "VARDEF")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r9"


  // $ANTLR start "r10"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   66:1: r10 : INT ->;*/
  t042astParser_r10_return r10() {
    t042astParser_r10_return retval = new t042astParser_r10_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT25 = null;

    Object INT25_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       67:5: ( INT ->)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       67:7: INT*/
      {
      	INT25 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r10363); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_INT.add(INT25);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 67:11: ->*/
      	{
      	    this._adaptor.addChild(root_0, new CommonTree.fromToken(new CommonToken(FLOAT, "${(INT25 != null) ? INT25.text : null}.0")));

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r10"


  // $ANTLR start "r11"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   70:1: r11 : ( expression -> ^( EXPR expression ) | -> EXPR );*/
  t042astParser_r11_return r11() {
    t042astParser_r11_return retval = new t042astParser_r11_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_expression_return expression26 =null;


    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g: 
       71:5: ( expression -> ^( EXPR expression ) | -> EXPR )*/
      int alt6 = 2;
      int LA6_0 = this.input.LA(1);

      if((LA6_0 == 12/*INT*/)) {
        alt6 = 1;
      }
      else if((LA6_0 == -1/*EOF*/)) {
        alt6 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return retval;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 6, 0, this.input);

        throw nvae;

      }
      switch (alt6) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t042ast.g:
           71:7: expression*/
          {
          	this.pushFollow(FOLLOW_expression_in_r11384);
          	expression26 = this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return retval;
          	if(this.state.backtracking == 0) 
          	  stream_expression.add(expression26.tree);

          	// AST REWRITE
          	// elements: expression
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	if(this.state.backtracking == 0) {

          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 71:18: -> ^( EXPR expression )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t042ast.g:
          	     71:21: ^( EXPR expression )*/
          	    {
          	    	Object root_1 = this._adaptor.nil();
          	    	root_1 = this._adaptor.becomeRoot(
          	    	this._adaptor.create(EXPR, "EXPR")
          	    	, root_1);

          	    	this._adaptor.addChild(root_1, stream_expression.nextTree());

          	    	this._adaptor.addChild(root_0, root_1);
          	    }

          	}


          	retval.tree = root_0;
          	}

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t042ast.g:
           72:7: */
          {
          	// AST REWRITE
          	// elements: 
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	if(this.state.backtracking == 0) {

          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 72:7: -> EXPR*/
          	{
          	    this._adaptor.addChild(root_0, 
          	    this._adaptor.create(EXPR, "EXPR")
          	    );

          	}


          	retval.tree = root_0;
          	}

          }
          break;

      }
      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r11"


  // $ANTLR start "r12"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   75:1: r12 : ID ( ',' ID )* -> ( ID )+ ;*/
  t042astParser_r12_return r12() {
    t042astParser_r12_return retval = new t042astParser_r12_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID27 = null;
    Token char_literal28 = null;
    Token ID29 = null;

    Object ID27_tree=null;
    Object char_literal28_tree=null;
    Object ID29_tree=null;
    RewriteRuleTokenStream stream_19=new RewriteRuleTokenStream(this._adaptor,"token 19");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       76:5: ( ID ( ',' ID )* -> ( ID )+ )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       76:7: ID ( ',' ID )**/
      {
      	ID27 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r12419); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID27);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 76:10: ( ',' ID )**/
      	loop7:
      	do {
      	  int alt7 = 2;
      	  int LA7_0 = this.input.LA(1);

      	  if((LA7_0 == 19/*19*/)) {
      	    alt7 = 1;
      	  }


      	  switch (alt7) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   76:11: ',' ID*/
      			  {
      			  	char_literal28 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r12422); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_19.add(char_literal28);


      			  	ID29 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r12424); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_ID.add(ID29);


      			  }
      			  break;

      			default :
      		    break loop7;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 76:20: -> ( ID )+*/
      	{
      	    if(!(stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_ID.nextNode()
      	        );

      	    }
      	    stream_ID.reset();

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r12"


  // $ANTLR start "r13"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   79:1: r13 : type ID ( ',' ID )* ';' -> ^( type ( ID )+ ) ;*/
  t042astParser_r13_return r13() {
    t042astParser_r13_return retval = new t042astParser_r13_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID31 = null;
    Token char_literal32 = null;
    Token ID33 = null;
    Token char_literal34 = null;
    t042astParser_type_return type30 =null;


    Object ID31_tree=null;
    Object char_literal32_tree=null;
    Object ID33_tree=null;
    Object char_literal34_tree=null;
    RewriteRuleTokenStream stream_19=new RewriteRuleTokenStream(this._adaptor,"token 19");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       80:5: ( type ID ( ',' ID )* ';' -> ^( type ( ID )+ ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       80:7: type ID ( ',' ID )* ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_r13448);
      	type30 = this.type();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_type.add(type30.tree);

      	ID31 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r13450); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID31);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 80:15: ( ',' ID )**/
      	loop8:
      	do {
      	  int alt8 = 2;
      	  int LA8_0 = this.input.LA(1);

      	  if((LA8_0 == 19/*19*/)) {
      	    alt8 = 1;
      	  }


      	  switch (alt8) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   80:16: ',' ID*/
      			  {
      			  	char_literal32 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r13453); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_19.add(char_literal32);


      			  	ID33 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r13455); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_ID.add(ID33);


      			  }
      			  break;

      			default :
      		    break loop8;
      	  }
      	} while(true);


      	char_literal34 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r13459); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal34);


      	// AST REWRITE
      	// elements: ID, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 80:29: -> ^( type ( ID )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     80:32: ^( type ( ID )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_type.nextNode(), root_1);

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

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r13"


  // $ANTLR start "r14"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   83:1: r14 : ( expression )? ( statement )* ( type )+ -> ^( EXPR ( expression )? ( statement )* ( type )+ ) ;*/
  t042astParser_r14_return r14() {
    t042astParser_r14_return retval = new t042astParser_r14_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_expression_return expression35 =null;

    t042astParser_statement_return statement36 =null;

    t042astParser_type_return type37 =null;


    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       84:5: ( ( expression )? ( statement )* ( type )+ -> ^( EXPR ( expression )? ( statement )* ( type )+ ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       84:9: ( expression )? ( statement )* ( type )+*/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 84:9: ( expression )?*/
      	int alt9 = 2;
      	int LA9_0 = this.input.LA(1);

      	if((LA9_0 == 12/*INT*/)) {
      	  alt9 = 1;
      	}
      	switch (alt9) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     84:9: expression*/
      	    {
      	    	this.pushFollow(FOLLOW_expression_in_r14487);
      	    	expression35 = this.expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0) 
      	    	  stream_expression.add(expression35.tree);

      	    }
      	    break;

      	}


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 84:21: ( statement )**/
      	loop10:
      	do {
      	  int alt10 = 2;
      	  int LA10_0 = this.input.LA(1);

      	  if(((LA10_0 >= 33 && LA10_0 <= 34))) {
      	    alt10 = 1;
      	  }


      	  switch (alt10) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   84:21: statement*/
      			  {
      			  	this.pushFollow(FOLLOW_statement_in_r14490);
      			  	statement36 = this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_statement.add(statement36.tree);

      			  }
      			  break;

      			default :
      		    break loop10;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 84:32: ( type )+*/
      	int cnt11 = 0;
      	loop11:
      	do {
      	  int alt11 = 2;
      	  int LA11_0 = this.input.LA(1);

      	  if((LA11_0 == 27/*27*/
      	    || LA11_0 == 38/*38*/)) {
      	    alt11 = 1;
      	  }


      	  switch (alt11) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   84:32: type*/
      			  {
      			  	this.pushFollow(FOLLOW_type_in_r14493);
      			  	type37 = this.type();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_type.add(type37.tree);

      			  }
      			  break;

      			default :
      		    if(cnt11 >= 1) break loop11;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return retval;
      		      }
      	        EarlyExitException eee = new EarlyExitException(11, this.input);
      	        throw eee;
      	  }
      	  cnt11++;
      	} while(true);


      	// AST REWRITE
      	// elements: expression, statement, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 85:9: -> ^( EXPR ( expression )? ( statement )* ( type )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     85:12: ^( EXPR ( expression )? ( statement )* ( type )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(EXPR, "EXPR")
      	    	, root_1);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 85:19: ( expression )?*/
      	    	if(stream_expression.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	}
      	    	stream_expression.reset();

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 85:31: ( statement )**/
      	    	while ( stream_statement.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_statement.nextTree());

      	    	}
      	    	stream_statement.reset();

      	    	if(!(stream_type.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_type.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	}
      	    	stream_type.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r14"


  // $ANTLR start "r15"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   88:1: r15 : INT -> INT INT ;*/
  t042astParser_r15_return r15() {
    t042astParser_r15_return retval = new t042astParser_r15_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT38 = null;

    Object INT38_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       89:5: ( INT -> INT INT )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       89:7: INT*/
      {
      	INT38 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r15534); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_INT.add(INT38);


      	// AST REWRITE
      	// elements: INT, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 89:11: -> INT INT*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_INT.nextNode()
      	    );

      	    this._adaptor.addChild(root_0, 
      	    stream_INT.nextNode()
      	    );

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r15"


  // $ANTLR start "r16"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   92:1: r16 : 'int' ID ( ',' ID )* -> ( ^( 'int' ID ) )+ ;*/
  t042astParser_r16_return r16() {
    t042astParser_r16_return retval = new t042astParser_r16_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal39 = null;
    Token ID40 = null;
    Token char_literal41 = null;
    Token ID42 = null;

    Object string_literal39_tree=null;
    Object ID40_tree=null;
    Object char_literal41_tree=null;
    Object ID42_tree=null;
    RewriteRuleTokenStream stream_19=new RewriteRuleTokenStream(this._adaptor,"token 19");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_38=new RewriteRuleTokenStream(this._adaptor,"token 38");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       93:5: ( 'int' ID ( ',' ID )* -> ( ^( 'int' ID ) )+ )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       93:7: 'int' ID ( ',' ID )**/
      {
      	string_literal39 = this.matchSymbol(this.input,
      	    38,FOLLOW_38_in_r16557); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_38.add(string_literal39);


      	ID40 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r16559); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID40);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 93:16: ( ',' ID )**/
      	loop12:
      	do {
      	  int alt12 = 2;
      	  int LA12_0 = this.input.LA(1);

      	  if((LA12_0 == 19/*19*/)) {
      	    alt12 = 1;
      	  }


      	  switch (alt12) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   93:17: ',' ID*/
      			  {
      			  	char_literal41 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r16562); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_19.add(char_literal41);


      			  	ID42 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r16564); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_ID.add(ID42);


      			  }
      			  break;

      			default :
      		    break loop12;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: ID, 38
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 93:26: -> ( ^( 'int' ID ) )+*/
      	{
      	    if(!(stream_ID.hasNext()||stream_38.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()||stream_38.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t042ast.g:
      	         93:29: ^( 'int' ID )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(
      	        	stream_38.nextNode()
      	        	, root_1);

      	        	this._adaptor.addChild(root_1, 
      	        	stream_ID.nextNode()
      	        	);

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_ID.reset();
      	    stream_38.reset();

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r16"


  // $ANTLR start "r17"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   96:1: r17 : 'for' '(' start= statement ';' expression ';' next= statement ')' statement -> ^( 'for' $start expression $next statement ) ;*/
  t042astParser_r17_return r17() {
    t042astParser_r17_return retval = new t042astParser_r17_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal43 = null;
    Token char_literal44 = null;
    Token char_literal45 = null;
    Token char_literal47 = null;
    Token char_literal48 = null;
    t042astParser_statement_return start =null;

    t042astParser_statement_return next =null;

    t042astParser_expression_return expression46 =null;

    t042astParser_statement_return statement49 =null;


    Object string_literal43_tree=null;
    Object char_literal44_tree=null;
    Object char_literal45_tree=null;
    Object char_literal47_tree=null;
    Object char_literal48_tree=null;
    RewriteRuleTokenStream stream_17=new RewriteRuleTokenStream(this._adaptor,"token 17");
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleTokenStream stream_16=new RewriteRuleTokenStream(this._adaptor,"token 16");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       97:5: ( 'for' '(' start= statement ';' expression ';' next= statement ')' statement -> ^( 'for' $start expression $next statement ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       97:7: 'for' '(' start= statement ';' expression ';' next= statement ')' statement*/
      {
      	string_literal43 = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r17592); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(string_literal43);


      	char_literal44 = this.matchSymbol(this.input,
      	    16,FOLLOW_16_in_r17594); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_16.add(char_literal44);


      	this.pushFollow(FOLLOW_statement_in_r17598);
      	start = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(start.tree);

      	char_literal45 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r17600); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal45);


      	this.pushFollow(FOLLOW_expression_in_r17602);
      	expression46 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_expression.add(expression46.tree);

      	char_literal47 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r17604); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal47);


      	this.pushFollow(FOLLOW_statement_in_r17608);
      	next = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(next.tree);

      	char_literal48 = this.matchSymbol(this.input,
      	    17,FOLLOW_17_in_r17610); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_17.add(char_literal48);


      	this.pushFollow(FOLLOW_statement_in_r17612);
      	statement49 = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(statement49.tree);

      	// AST REWRITE
      	// elements: statement, expression, start, 35, next
      	// token labels: 
      	// rule labels: retval, start, next
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_start = new RewriteRuleSubtreeStream(this._adaptor,"rule start",start!=null?start.tree:null);
      	RewriteRuleSubtreeStream stream_next = new RewriteRuleSubtreeStream(this._adaptor,"rule next",next!=null?next.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 98:9: -> ^( 'for' $start expression $next statement )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     98:12: ^( 'for' $start expression $next statement )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_35.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_start.nextTree());

      	    	this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	this._adaptor.addChild(root_1, stream_next.nextTree());

      	    	this._adaptor.addChild(root_1, stream_statement.nextTree());

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r17"


  // $ANTLR start "r18"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   101:1: r18 : t= 'for' -> ^( BLOCK ) ;*/
  t042astParser_r18_return r18() {
    t042astParser_r18_return retval = new t042astParser_r18_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       102:5: (t= 'for' -> ^( BLOCK ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       102:7: t= 'for'*/
      {
      	t = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r18655); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(t);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 102:15: -> ^( BLOCK )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     102:18: ^( BLOCK )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, "BLOCK")
      	    	, root_1);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r18"


  // $ANTLR start "r19"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   105:1: r19 : t= 'for' -> ^( BLOCK[$t] ) ;*/
  t042astParser_r19_return r19() {
    t042astParser_r19_return retval = new t042astParser_r19_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       106:5: (t= 'for' -> ^( BLOCK[$t] ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       106:7: t= 'for'*/
      {
      	t = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r19680); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(t);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 106:15: -> ^( BLOCK[$t] )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     106:18: ^( BLOCK[$t] )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, t)
      	    	, root_1);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r19"


  // $ANTLR start "r20"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   109:1: r20 : t= 'for' -> ^( BLOCK[$t,\"FOR\"] ) ;*/
  t042astParser_r20_return r20() {
    t042astParser_r20_return retval = new t042astParser_r20_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       110:5: (t= 'for' -> ^( BLOCK[$t,\"FOR\"] ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       110:7: t= 'for'*/
      {
      	t = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r20706); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(t);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 110:15: -> ^( BLOCK[$t,\"FOR\"] )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     110:18: ^( BLOCK[$t,\"FOR\"] )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, t, "FOR")
      	    	, root_1);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r20"


  // $ANTLR start "r21"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   113:1: r21 : t= 'for' -> BLOCK ;*/
  t042astParser_r21_return r21() {
    t042astParser_r21_return retval = new t042astParser_r21_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       114:5: (t= 'for' -> BLOCK )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       114:7: t= 'for'*/
      {
      	t = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r21732); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(t);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 114:15: -> BLOCK*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(BLOCK, "BLOCK")
      	    );

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r21"


  // $ANTLR start "r22"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   117:1: r22 : t= 'for' -> BLOCK[$t] ;*/
  t042astParser_r22_return r22() {
    t042astParser_r22_return retval = new t042astParser_r22_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       118:5: (t= 'for' -> BLOCK[$t] )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       118:7: t= 'for'*/
      {
      	t = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r22755); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(t);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 118:15: -> BLOCK[$t]*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(BLOCK, t)
      	    );

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r22"


  // $ANTLR start "r23"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   121:1: r23 : t= 'for' -> BLOCK[$t,\"FOR\"] ;*/
  t042astParser_r23_return r23() {
    t042astParser_r23_return retval = new t042astParser_r23_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_35=new RewriteRuleTokenStream(this._adaptor,"token 35");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       122:5: (t= 'for' -> BLOCK[$t,\"FOR\"] )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       122:7: t= 'for'*/
      {
      	t = this.matchSymbol(this.input,
      	    35,FOLLOW_35_in_r23779); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_35.add(t);


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 122:15: -> BLOCK[$t,\"FOR\"]*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(BLOCK, t, "FOR")
      	    );

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r23"


  // $ANTLR start "r24"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   125:1: r24 : r= statement expression -> ^( $r expression ) ;*/
  t042astParser_r24_return r24() {
    t042astParser_r24_return retval = new t042astParser_r24_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_statement_return r =null;

    t042astParser_expression_return expression50 =null;


    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       126:5: (r= statement expression -> ^( $r expression ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       126:7: r= statement expression*/
      {
      	this.pushFollow(FOLLOW_statement_in_r24803);
      	r = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(r.tree);

      	this.pushFollow(FOLLOW_expression_in_r24805);
      	expression50 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_expression.add(expression50.tree);

      	// AST REWRITE
      	// elements: expression, r
      	// token labels: 
      	// rule labels: retval, r
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_r = new RewriteRuleSubtreeStream(this._adaptor,"rule r",r!=null?r.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 126:30: -> ^( $r expression )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     126:33: ^( $r expression )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_r.nextNode(), root_1);

      	    	this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r24"


  // $ANTLR start "r25"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   129:1: r25 :r+= statement ( ',' r+= statement )+ expression -> ^( $r expression ) ;*/
  t042astParser_r25_return r25() {
    t042astParser_r25_return retval = new t042astParser_r25_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal51 = null;
    List list_r = null;
    t042astParser_expression_return expression52 =null;

    RuleReturnScope r = null;
    Object char_literal51_tree=null;
    RewriteRuleTokenStream stream_19=new RewriteRuleTokenStream(this._adaptor,"token 19");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       130:5: (r+= statement ( ',' r+= statement )+ expression -> ^( $r expression ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       130:7: r+= statement ( ',' r+= statement )+ expression*/
      {
      	this.pushFollow(FOLLOW_statement_in_r25833);
      	r = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(r.tree);
      	if(list_r == null) 
      	  list_r = new List();
      	list_r.add(r.tree);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 130:20: ( ',' r+= statement )+*/
      	int cnt13 = 0;
      	loop13:
      	do {
      	  int alt13 = 2;
      	  int LA13_0 = this.input.LA(1);

      	  if((LA13_0 == 19/*19*/)) {
      	    alt13 = 1;
      	  }


      	  switch (alt13) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   130:21: ',' r+= statement*/
      			  {
      			  	char_literal51 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r25836); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_19.add(char_literal51);


      			  	this.pushFollow(FOLLOW_statement_in_r25840);
      			  	r = this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_statement.add(r.tree);
      			  	if(list_r == null) 
      			  	  list_r = new List();
      			  	list_r.add(r.tree);


      			  }
      			  break;

      			default :
      		    if(cnt13 >= 1) break loop13;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return retval;
      		      }
      	        EarlyExitException eee = new EarlyExitException(13, this.input);
      	        throw eee;
      	  }
      	  cnt13++;
      	} while(true);


      	this.pushFollow(FOLLOW_expression_in_r25844);
      	expression52 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_expression.add(expression52.tree);

      	// AST REWRITE
      	// elements: r, expression
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: r
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_r = new RewriteRuleSubtreeStream(this._adaptor,"token r",list_r);
      	root_0 = this._adaptor.nil();
      	/* 130:51: -> ^( $r expression )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     130:54: ^( $r expression )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_r.nextNode(), root_1);

      	    	this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r25"


  // $ANTLR start "r26"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   133:1: r26 :r+= statement ( ',' r+= statement )+ -> ^( BLOCK ( $r)+ ) ;*/
  t042astParser_r26_return r26() {
    t042astParser_r26_return retval = new t042astParser_r26_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal53 = null;
    List list_r = null;
    RuleReturnScope r = null;
    Object char_literal53_tree=null;
    RewriteRuleTokenStream stream_19=new RewriteRuleTokenStream(this._adaptor,"token 19");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       134:5: (r+= statement ( ',' r+= statement )+ -> ^( BLOCK ( $r)+ ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       134:7: r+= statement ( ',' r+= statement )+*/
      {
      	this.pushFollow(FOLLOW_statement_in_r26872);
      	r = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(r.tree);
      	if(list_r == null) 
      	  list_r = new List();
      	list_r.add(r.tree);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 134:20: ( ',' r+= statement )+*/
      	int cnt14 = 0;
      	loop14:
      	do {
      	  int alt14 = 2;
      	  int LA14_0 = this.input.LA(1);

      	  if((LA14_0 == 19/*19*/)) {
      	    alt14 = 1;
      	  }


      	  switch (alt14) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   134:21: ',' r+= statement*/
      			  {
      			  	char_literal53 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r26875); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_19.add(char_literal53);


      			  	this.pushFollow(FOLLOW_statement_in_r26879);
      			  	r = this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_statement.add(r.tree);
      			  	if(list_r == null) 
      			  	  list_r = new List();
      			  	list_r.add(r.tree);


      			  }
      			  break;

      			default :
      		    if(cnt14 >= 1) break loop14;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return retval;
      		      }
      	        EarlyExitException eee = new EarlyExitException(14, this.input);
      	        throw eee;
      	  }
      	  cnt14++;
      	} while(true);


      	// AST REWRITE
      	// elements: r
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: r
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_r = new RewriteRuleSubtreeStream(this._adaptor,"token r",list_r);
      	root_0 = this._adaptor.nil();
      	/* 134:40: -> ^( BLOCK ( $r)+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     134:43: ^( BLOCK ( $r)+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, "BLOCK")
      	    	, root_1);

      	    	if(!(stream_r.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_r.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_r.nextTree());

      	    	}
      	    	stream_r.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r26"


  // $ANTLR start "r27"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   137:1: r27 : r= statement expression -> ^( $r ^( $r expression ) ) ;*/
  t042astParser_r27_return r27() {
    t042astParser_r27_return retval = new t042astParser_r27_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_statement_return r =null;

    t042astParser_expression_return expression54 =null;


    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       138:5: (r= statement expression -> ^( $r ^( $r expression ) ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       138:7: r= statement expression*/
      {
      	this.pushFollow(FOLLOW_statement_in_r27910);
      	r = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(r.tree);

      	this.pushFollow(FOLLOW_expression_in_r27912);
      	expression54 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_expression.add(expression54.tree);

      	// AST REWRITE
      	// elements: expression, r, r
      	// token labels: 
      	// rule labels: retval, r
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_r = new RewriteRuleSubtreeStream(this._adaptor,"rule r",r!=null?r.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 138:30: -> ^( $r ^( $r expression ) )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     138:33: ^( $r ^( $r expression ) )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_r.nextNode(), root_1);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 138:38: ^( $r expression )*/
      	    	{
      	    		Object root_2 = this._adaptor.nil();
      	    		root_2 = this._adaptor.becomeRoot(stream_r.nextNode(), root_2);

      	    		this._adaptor.addChild(root_2, stream_expression.nextTree());

      	    		this._adaptor.addChild(root_1, root_2);
      	    	}

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r27"


  // $ANTLR start "r28"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   141:1: r28 : ( 'foo28a' | 'foo28b' ) ->;*/
  t042astParser_r28_return r28() {
    t042astParser_r28_return retval = new t042astParser_r28_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal55 = null;
    Token string_literal56 = null;

    Object string_literal55_tree=null;
    Object string_literal56_tree=null;
    RewriteRuleTokenStream stream_32=new RewriteRuleTokenStream(this._adaptor,"token 32");
    RewriteRuleTokenStream stream_31=new RewriteRuleTokenStream(this._adaptor,"token 31");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       142:5: ( ( 'foo28a' | 'foo28b' ) ->)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       142:7: ( 'foo28a' | 'foo28b' )*/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 142:7: ( 'foo28a' | 'foo28b' )*/
      	int alt15 = 2;
      	int LA15_0 = this.input.LA(1);

      	if((LA15_0 == 31/*31*/)) {
      	  alt15 = 1;
      	}
      	else if((LA15_0 == 32/*32*/)) {
      	  alt15 = 2;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 15, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt15) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     142:8: 'foo28a'*/
      	    {
      	    	string_literal55 = this.matchSymbol(this.input,
      	    	    31,FOLLOW_31_in_r28944); 
      	    	if(this.state.failed) 
      	    	  return retval; 
      	    	if(this.state.backtracking == 0) stream_31.add(string_literal55);


      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     142:17: 'foo28b'*/
      	    {
      	    	string_literal56 = this.matchSymbol(this.input,
      	    	    32,FOLLOW_32_in_r28946); 
      	    	if(this.state.failed) 
      	    	  return retval; 
      	    	if(this.state.backtracking == 0) stream_32.add(string_literal56);


      	    }
      	    break;

      	}


      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 142:27: ->*/
      	{
      	    root_0 = null;
      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r28"


  // $ANTLR start "r29"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   145:1: r29 : (r+= statement )* -> ^( BLOCK ( $r)+ ) ;*/
  t042astParser_r29_return r29() {
    t042astParser_r29_return retval = new t042astParser_r29_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    List list_r = null;
    RuleReturnScope r = null;
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       146:5: ( (r+= statement )* -> ^( BLOCK ( $r)+ ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       146:7: (r+= statement )**/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 146:7: (r+= statement )**/
      	loop16:
      	do {
      	  int alt16 = 2;
      	  int LA16_0 = this.input.LA(1);

      	  if(((LA16_0 >= 33 && LA16_0 <= 34))) {
      	    alt16 = 1;
      	  }


      	  switch (alt16) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   146:8: r+= statement*/
      			  {
      			  	this.pushFollow(FOLLOW_statement_in_r29969);
      			  	r = this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_statement.add(r.tree);
      			  	if(list_r == null) 
      			  	  list_r = new List();
      			  	list_r.add(r.tree);


      			  }
      			  break;

      			default :
      		    break loop16;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: r
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: r
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_r = new RewriteRuleSubtreeStream(this._adaptor,"token r",list_r);
      	root_0 = this._adaptor.nil();
      	/* 146:23: -> ^( BLOCK ( $r)+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     146:26: ^( BLOCK ( $r)+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, "BLOCK")
      	    	, root_1);

      	    	if(!(stream_r.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_r.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_r.nextTree());

      	    	}
      	    	stream_r.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r29"


  // $ANTLR start "r30"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   149:1: r30 : ( statement )* -> ^( BLOCK ( statement )? ) ;*/
  t042astParser_r30_return r30() {
    t042astParser_r30_return retval = new t042astParser_r30_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_statement_return statement57 =null;


    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       150:5: ( ( statement )* -> ^( BLOCK ( statement )? ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       150:7: ( statement )**/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 150:7: ( statement )**/
      	loop17:
      	do {
      	  int alt17 = 2;
      	  int LA17_0 = this.input.LA(1);

      	  if(((LA17_0 >= 33 && LA17_0 <= 34))) {
      	    alt17 = 1;
      	  }


      	  switch (alt17) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   150:7: statement*/
      			  {
      			  	this.pushFollow(FOLLOW_statement_in_r30998);
      			  	statement57 = this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_statement.add(statement57.tree);

      			  }
      			  break;

      			default :
      		    break loop17;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: statement
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 150:18: -> ^( BLOCK ( statement )? )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     150:21: ^( BLOCK ( statement )? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, "BLOCK")
      	    	, root_1);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 150:29: ( statement )?*/
      	    	if(stream_statement.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_statement.nextTree());

      	    	}
      	    	stream_statement.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r30"


  // $ANTLR start "r31"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   153:1: r31 : modifier type ID ( '=' expression )? ';' -> {this.flag === 0}? ^( VARDEF ID ( modifier )* type ( expression )? ) -> {this.flag === 1}? ^( VARIABLE ID ( modifier )* type ( expression )? ) -> ^( FIELD ID ( modifier )* type ( expression )? ) ;*/
  t042astParser_r31_return r31() {
    t042astParser_r31_return retval = new t042astParser_r31_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID60 = null;
    Token char_literal61 = null;
    Token char_literal63 = null;
    t042astParser_modifier_return modifier58 =null;

    t042astParser_type_return type59 =null;

    t042astParser_expression_return expression62 =null;


    Object ID60_tree=null;
    Object char_literal61_tree=null;
    Object char_literal63_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleTokenStream stream_23=new RewriteRuleTokenStream(this._adaptor,"token 23");
    RewriteRuleSubtreeStream stream_modifier=new RewriteRuleSubtreeStream(this._adaptor,"rule modifier");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       154:5: ( modifier type ID ( '=' expression )? ';' -> {this.flag === 0}? ^( VARDEF ID ( modifier )* type ( expression )? ) -> {this.flag === 1}? ^( VARIABLE ID ( modifier )* type ( expression )? ) -> ^( FIELD ID ( modifier )* type ( expression )? ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       154:7: modifier type ID ( '=' expression )? ';'*/
      {
      	this.pushFollow(FOLLOW_modifier_in_r311025);
      	modifier58 = this.modifier();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_modifier.add(modifier58.tree);

      	this.pushFollow(FOLLOW_type_in_r311027);
      	type59 = this.type();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_type.add(type59.tree);

      	ID60 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r311029); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID60);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 154:24: ( '=' expression )?*/
      	int alt18 = 2;
      	int LA18_0 = this.input.LA(1);

      	if((LA18_0 == 23/*23*/)) {
      	  alt18 = 1;
      	}
      	switch (alt18) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     154:25: '=' expression*/
      	    {
      	    	char_literal61 = this.matchSymbol(this.input,
      	    	    23,FOLLOW_23_in_r311032); 
      	    	if(this.state.failed) 
      	    	  return retval; 
      	    	if(this.state.backtracking == 0) stream_23.add(char_literal61);


      	    	this.pushFollow(FOLLOW_expression_in_r311034);
      	    	expression62 = this.expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0) 
      	    	  stream_expression.add(expression62.tree);

      	    }
      	    break;

      	}


      	char_literal63 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r311038); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal63);


      	// AST REWRITE
      	// elements: ID, expression, expression, type, ID, ID, type, modifier, modifier, modifier, expression, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 155:9: -> {this.flag === 0}? ^( VARDEF ID ( modifier )* type ( expression )? )*/
      	if(this.flag === 0) {
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     155:31: ^( VARDEF ID ( modifier )* type ( expression )? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(VARDEF, "VARDEF")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 155:43: ( modifier )**/
      	    	while ( stream_modifier.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_modifier.nextTree());

      	    	}
      	    	stream_modifier.reset();

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 155:58: ( expression )?*/
      	    	if(stream_expression.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	}
      	    	stream_expression.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}

      	else /* 156:9: -> {this.flag === 1}? ^( VARIABLE ID ( modifier )* type ( expression )? )*/
      	if(this.flag === 1) {
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     156:31: ^( VARIABLE ID ( modifier )* type ( expression )? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(VARIABLE, "VARIABLE")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 156:45: ( modifier )**/
      	    	while ( stream_modifier.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_modifier.nextTree());

      	    	}
      	    	stream_modifier.reset();

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 156:60: ( expression )?*/
      	    	if(stream_expression.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	}
      	    	stream_expression.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}

      	else /* 157:9: -> ^( FIELD ID ( modifier )* type ( expression )? )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     157:30: ^( FIELD ID ( modifier )* type ( expression )? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(FIELD, "FIELD")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 157:41: ( modifier )**/
      	    	while ( stream_modifier.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_modifier.nextTree());

      	    	}
      	    	stream_modifier.reset();

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 157:56: ( expression )?*/
      	    	if(stream_expression.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_expression.nextTree());

      	    	}
      	    	stream_expression.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r31"


  // $ANTLR start "r32"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   160:1: r32[int which] : ID INT -> {which==1}? ID -> {which==2}? INT ->;*/
  t042astParser_r32_return r32(int which) {
    t042astParser_r32_return retval = new t042astParser_r32_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID64 = null;
    Token INT65 = null;

    Object ID64_tree=null;
    Object INT65_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       161:3: ( ID INT -> {which==1}? ID -> {which==2}? INT ->)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       161:5: ID INT*/
      {
      	ID64 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r321148); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID64);


      	INT65 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r321150); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_INT.add(INT65);


      	// AST REWRITE
      	// elements: INT, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 161:12: -> {which==1}? ID*/
      	if(which==1) {
      	    this._adaptor.addChild(root_0, 
      	    stream_ID.nextNode()
      	    );

      	}

      	else /* 162:12: -> {which==2}? INT*/
      	if(which==2) {
      	    this._adaptor.addChild(root_0, 
      	    stream_INT.nextNode()
      	    );

      	}

      	else /* 163:12: ->*/
      	{
      	    root_0 = null;
      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r32"


  // $ANTLR start "r33"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   166:1: r33 : modifiers ! statement ;*/
  t042astParser_r33_return r33() {
    t042astParser_r33_return retval = new t042astParser_r33_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_modifiers_return modifiers66 =null;

    t042astParser_statement_return statement67 =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       167:5: ( modifiers ! statement )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       167:9: modifiers ! statement*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_modifiers_in_r331204);
      	modifiers66 = this.modifiers();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;

      	this.pushFollow(FOLLOW_statement_in_r331207);
      	statement67 = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, statement67.tree);

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r33"


  // $ANTLR start "r34"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   170:1: r34 : modifiers ! r34a[$modifiers.tree] ;*/
  t042astParser_r34_return r34() {
    t042astParser_r34_return retval = new t042astParser_r34_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_modifiers_return modifiers68 =null;

    t042astParser_r34a_return r34a69 =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       171:5: ( modifiers ! r34a[$modifiers.tree] )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       171:9: modifiers ! r34a[$modifiers.tree]*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_modifiers_in_r341226);
      	modifiers68 = this.modifiers();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;

      	this.pushFollow(FOLLOW_r34a_in_r341229);
      	r34a69 = this.r34a((modifiers68 != null) ? modifiers68.tree : null);

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, r34a69.tree);

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r34"


  // $ANTLR start "r34a"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   175:1: r34a[mod] : 'class' ID ( 'extends' sup= type )? ( 'implements' i+= type ( ',' i+= type )* )? '{' ( statement )* '}' -> ^( 'class' ID ( ^( 'extends' $sup) )? ( ^( 'implements' ( $i)+ ) )? ( statement )* ) ;*/
  t042astParser_r34a_return r34a(mod) {
    t042astParser_r34a_return retval = new t042astParser_r34a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal70 = null;
    Token ID71 = null;
    Token string_literal72 = null;
    Token string_literal73 = null;
    Token char_literal74 = null;
    Token char_literal75 = null;
    Token char_literal77 = null;
    List list_i = null;
    t042astParser_type_return sup =null;

    t042astParser_statement_return statement76 =null;

    RuleReturnScope i = null;
    Object string_literal70_tree=null;
    Object ID71_tree=null;
    Object string_literal72_tree=null;
    Object string_literal73_tree=null;
    Object char_literal74_tree=null;
    Object char_literal75_tree=null;
    Object char_literal77_tree=null;
    RewriteRuleTokenStream stream_30=new RewriteRuleTokenStream(this._adaptor,"token 30");
    RewriteRuleTokenStream stream_45=new RewriteRuleTokenStream(this._adaptor,"token 45");
    RewriteRuleTokenStream stream_44=new RewriteRuleTokenStream(this._adaptor,"token 44");
    RewriteRuleTokenStream stream_19=new RewriteRuleTokenStream(this._adaptor,"token 19");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_37=new RewriteRuleTokenStream(this._adaptor,"token 37");
    RewriteRuleTokenStream stream_28=new RewriteRuleTokenStream(this._adaptor,"token 28");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       176:5: ( 'class' ID ( 'extends' sup= type )? ( 'implements' i+= type ( ',' i+= type )* )? '{' ( statement )* '}' -> ^( 'class' ID ( ^( 'extends' $sup) )? ( ^( 'implements' ( $i)+ ) )? ( statement )* ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       176:9: 'class' ID ( 'extends' sup= type )? ( 'implements' i+= type ( ',' i+= type )* )? '{' ( statement )* '}'*/
      {
      	string_literal70 = this.matchSymbol(this.input,
      	    28,FOLLOW_28_in_r34a1255); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_28.add(string_literal70);


      	ID71 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r34a1257); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID71);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 176:20: ( 'extends' sup= type )?*/
      	int alt19 = 2;
      	int LA19_0 = this.input.LA(1);

      	if((LA19_0 == 30/*30*/)) {
      	  alt19 = 1;
      	}
      	switch (alt19) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     176:21: 'extends' sup= type*/
      	    {
      	    	string_literal72 = this.matchSymbol(this.input,
      	    	    30,FOLLOW_30_in_r34a1260); 
      	    	if(this.state.failed) 
      	    	  return retval; 
      	    	if(this.state.backtracking == 0) stream_30.add(string_literal72);


      	    	this.pushFollow(FOLLOW_type_in_r34a1264);
      	    	sup = this.type();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0) 
      	    	  stream_type.add(sup.tree);

      	    }
      	    break;

      	}


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 177:9: ( 'implements' i+= type ( ',' i+= type )* )?*/
      	int alt21 = 2;
      	int LA21_0 = this.input.LA(1);

      	if((LA21_0 == 37/*37*/)) {
      	  alt21 = 1;
      	}
      	switch (alt21) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     177:11: 'implements' i+= type ( ',' i+= type )**/
      	    {
      	    	string_literal73 = this.matchSymbol(this.input,
      	    	    37,FOLLOW_37_in_r34a1278); 
      	    	if(this.state.failed) 
      	    	  return retval; 
      	    	if(this.state.backtracking == 0) stream_37.add(string_literal73);


      	    	this.pushFollow(FOLLOW_type_in_r34a1282);
      	    	i = this.type();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0) 
      	    	  stream_type.add(i.tree);
      	    	if(list_i == null) 
      	    	  list_i = new List();
      	    	list_i.add(i.tree);


      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 177:32: ( ',' i+= type )**/
      	    	loop20:
      	    	do {
      	    	  int alt20 = 2;
      	    	  int LA20_0 = this.input.LA(1);

      	    	  if((LA20_0 == 19/*19*/)) {
      	    	    alt20 = 1;
      	    	  }


      	    	  switch (alt20) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t042ast.g:
      	    			   177:33: ',' i+= type*/
      	    			  {
      	    			  	char_literal74 = this.matchSymbol(this.input,
      	    			  	    19,FOLLOW_19_in_r34a1285); 
      	    			  	if(this.state.failed) 
      	    			  	  return retval; 
      	    			  	if(this.state.backtracking == 0) stream_19.add(char_literal74);


      	    			  	this.pushFollow(FOLLOW_type_in_r34a1289);
      	    			  	i = this.type();

      	    			  	this.state.fsp--;
      	    			  	if(this.state.failed) 
      	    			  	  return retval;
      	    			  	if(this.state.backtracking == 0) 
      	    			  	  stream_type.add(i.tree);
      	    			  	if(list_i == null) 
      	    			  	  list_i = new List();
      	    			  	list_i.add(i.tree);


      	    			  }
      	    			  break;

      	    			default :
      	    		    break loop20;
      	    	  }
      	    	} while(true);


      	    }
      	    break;

      	}


      	char_literal75 = this.matchSymbol(this.input,
      	    44,FOLLOW_44_in_r34a1303); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_44.add(char_literal75);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 178:13: ( statement )**/
      	loop22:
      	do {
      	  int alt22 = 2;
      	  int LA22_0 = this.input.LA(1);

      	  if(((LA22_0 >= 33 && LA22_0 <= 34))) {
      	    alt22 = 1;
      	  }


      	  switch (alt22) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   178:13: statement*/
      			  {
      			  	this.pushFollow(FOLLOW_statement_in_r34a1305);
      			  	statement76 = this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_statement.add(statement76.tree);

      			  }
      			  break;

      			default :
      		    break loop22;
      	  }
      	} while(true);


      	char_literal77 = this.matchSymbol(this.input,
      	    45,FOLLOW_45_in_r34a1308); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_45.add(char_literal77);


      	// AST REWRITE
      	// elements: i, ID, 28, statement, sup, 30, 37
      	// token labels: 
      	// rule labels: retval, sup
      	// token list labels: 
      	// rule list labels: i
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_sup = new RewriteRuleSubtreeStream(this._adaptor,"rule sup",sup!=null?sup.tree:null);
      	RewriteRuleSubtreeStream stream_i = new RewriteRuleSubtreeStream(this._adaptor,"token i",list_i);
      	root_0 = this._adaptor.nil();
      	/* 179:9: -> ^( 'class' ID ( ^( 'extends' $sup) )? ( ^( 'implements' ( $i)+ ) )? ( statement )* )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     179:12: ^( 'class' ID ( ^( 'extends' $sup) )? ( ^( 'implements' ( $i)+ ) )? ( statement )* )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_28.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_1, mod);

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 179:32: ( ^( 'extends' $sup) )?*/
      	    	if(stream_sup.hasNext()||stream_30.hasNext()) {
      	    	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	    	     179:32: ^( 'extends' $sup)*/
      	    	    {
      	    	    	Object root_2 = this._adaptor.nil();
      	    	    	root_2 = this._adaptor.becomeRoot(
      	    	    	stream_30.nextNode()
      	    	    	, root_2);

      	    	    	this._adaptor.addChild(root_2, stream_sup.nextTree());

      	    	    	this._adaptor.addChild(root_1, root_2);
      	    	    }

      	    	}
      	    	stream_sup.reset();
      	    	stream_30.reset();

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 179:51: ( ^( 'implements' ( $i)+ ) )?*/
      	    	if(stream_i.hasNext()||stream_37.hasNext()) {
      	    	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	    	     179:51: ^( 'implements' ( $i)+ )*/
      	    	    {
      	    	    	Object root_2 = this._adaptor.nil();
      	    	    	root_2 = this._adaptor.becomeRoot(
      	    	    	stream_37.nextNode()
      	    	    	, root_2);

      	    	    	if(!(stream_i.hasNext())) {
      	    	    	    throw new RewriteEarlyExitException();
      	    	    	}
      	    	    	while ( stream_i.hasNext()) {
      	    	    	    this._adaptor.addChild(root_2, stream_i.nextTree());

      	    	    	}
      	    	    	stream_i.reset();

      	    	    	this._adaptor.addChild(root_1, root_2);
      	    	    }

      	    	}
      	    	stream_i.reset();
      	    	stream_37.reset();

      	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	 179:72: ( statement )**/
      	    	while ( stream_statement.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_statement.nextTree());

      	    	}
      	    	stream_statement.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r34a"


  // $ANTLR start "r35"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   182:1: r35 : '{' 'extends' (sup= type )? '}' -> ( ^( 'extends' $sup) )? ;*/
  t042astParser_r35_return r35() {
    t042astParser_r35_return retval = new t042astParser_r35_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal78 = null;
    Token string_literal79 = null;
    Token char_literal80 = null;
    t042astParser_type_return sup =null;


    Object char_literal78_tree=null;
    Object string_literal79_tree=null;
    Object char_literal80_tree=null;
    RewriteRuleTokenStream stream_30=new RewriteRuleTokenStream(this._adaptor,"token 30");
    RewriteRuleTokenStream stream_45=new RewriteRuleTokenStream(this._adaptor,"token 45");
    RewriteRuleTokenStream stream_44=new RewriteRuleTokenStream(this._adaptor,"token 44");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       183:5: ( '{' 'extends' (sup= type )? '}' -> ( ^( 'extends' $sup) )? )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       183:7: '{' 'extends' (sup= type )? '}'*/
      {
      	char_literal78 = this.matchSymbol(this.input,
      	    44,FOLLOW_44_in_r351364); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_44.add(char_literal78);


      	string_literal79 = this.matchSymbol(this.input,
      	    30,FOLLOW_30_in_r351366); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_30.add(string_literal79);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 183:21: (sup= type )?*/
      	int alt23 = 2;
      	int LA23_0 = this.input.LA(1);

      	if((LA23_0 == 27/*27*/
      	  || LA23_0 == 38/*38*/)) {
      	  alt23 = 1;
      	}
      	switch (alt23) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     183:22: sup= type*/
      	    {
      	    	this.pushFollow(FOLLOW_type_in_r351371);
      	    	sup = this.type();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0) 
      	    	  stream_type.add(sup.tree);

      	    }
      	    break;

      	}


      	char_literal80 = this.matchSymbol(this.input,
      	    45,FOLLOW_45_in_r351375); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_45.add(char_literal80);


      	// AST REWRITE
      	// elements: 30, sup
      	// token labels: 
      	// rule labels: retval, sup
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_sup = new RewriteRuleSubtreeStream(this._adaptor,"rule sup",sup!=null?sup.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 184:9: -> ( ^( 'extends' $sup) )?*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     184:13: ( ^( 'extends' $sup) )?*/
      	    if(stream_30.hasNext()||stream_sup.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t042ast.g:
      	         184:13: ^( 'extends' $sup)*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(
      	        	stream_30.nextNode()
      	        	, root_1);

      	        	this._adaptor.addChild(root_1, stream_sup.nextTree());

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_30.reset();
      	    stream_sup.reset();

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r35"


  // $ANTLR start "r36"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   187:1: r36 : 'if' '(' expression ')' s1= statement ( 'else' s2= statement -> ^( 'if' ^( EXPR expression ) $s1 $s2) | 
   -> ^( 'if' ^( EXPR expression ) $s1) ) ;*/
  t042astParser_r36_return r36() {
    t042astParser_r36_return retval = new t042astParser_r36_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal81 = null;
    Token char_literal82 = null;
    Token char_literal84 = null;
    Token string_literal85 = null;
    t042astParser_statement_return s1 =null;

    t042astParser_statement_return s2 =null;

    t042astParser_expression_return expression83 =null;


    Object string_literal81_tree=null;
    Object char_literal82_tree=null;
    Object char_literal84_tree=null;
    Object string_literal85_tree=null;
    RewriteRuleTokenStream stream_17=new RewriteRuleTokenStream(this._adaptor,"token 17");
    RewriteRuleTokenStream stream_36=new RewriteRuleTokenStream(this._adaptor,"token 36");
    RewriteRuleTokenStream stream_16=new RewriteRuleTokenStream(this._adaptor,"token 16");
    RewriteRuleTokenStream stream_29=new RewriteRuleTokenStream(this._adaptor,"token 29");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       188:5: ( 'if' '(' expression ')' s1= statement ( 'else' s2= statement -> ^( 'if' ^( EXPR expression ) $s1 $s2) | 
       -> ^( 'if' ^( EXPR expression ) $s1) ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       188:7: 'if' '(' expression ')' s1= statement ( 'else' s2= statement -> ^( 'if' ^( EXPR expression ) $s1 $s2) | 
       -> ^( 'if' ^( EXPR expression ) $s1) )*/
      {
      	string_literal81 = this.matchSymbol(this.input,
      	    36,FOLLOW_36_in_r361411); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_36.add(string_literal81);


      	char_literal82 = this.matchSymbol(this.input,
      	    16,FOLLOW_16_in_r361413); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_16.add(char_literal82);


      	this.pushFollow(FOLLOW_expression_in_r361415);
      	expression83 = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_expression.add(expression83.tree);

      	char_literal84 = this.matchSymbol(this.input,
      	    17,FOLLOW_17_in_r361417); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_17.add(char_literal84);


      	this.pushFollow(FOLLOW_statement_in_r361421);
      	s1 = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(s1.tree);

      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 189:9: ( 'else' s2= statement -> ^( 'if' ^( EXPR expression ) $s1 $s2) | 
      	 -> ^( 'if' ^( EXPR expression ) $s1) )*/
      	int alt24 = 2;
      	int LA24_0 = this.input.LA(1);

      	if((LA24_0 == 29/*29*/)) {
      	  alt24 = 1;
      	}
      	else if((LA24_0 == -1/*EOF*/)) {
      	  alt24 = 2;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 24, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt24) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     189:11: 'else' s2= statement*/
      	    {
      	    	string_literal85 = this.matchSymbol(this.input,
      	    	    29,FOLLOW_29_in_r361433); 
      	    	if(this.state.failed) 
      	    	  return retval; 
      	    	if(this.state.backtracking == 0) stream_29.add(string_literal85);


      	    	this.pushFollow(FOLLOW_statement_in_r361437);
      	    	s2 = this.statement();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return retval;
      	    	if(this.state.backtracking == 0) 
      	    	  stream_statement.add(s2.tree);

      	    	// AST REWRITE
      	    	// elements: s2, s1, expression, 36
      	    	// token labels: 
      	    	// rule labels: retval, s2, s1
      	    	// token list labels: 
      	    	// rule list labels: 
      	    	// wildcard labels: 
      	    	if(this.state.backtracking == 0) {

      	    	retval.tree = root_0;
      	    	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	    	RewriteRuleSubtreeStream stream_s2 = new RewriteRuleSubtreeStream(this._adaptor,"rule s2",s2!=null?s2.tree:null);
      	    	RewriteRuleSubtreeStream stream_s1 = new RewriteRuleSubtreeStream(this._adaptor,"rule s1",s1!=null?s1.tree:null);

      	    	root_0 = this._adaptor.nil();
      	    	/* 189:31: -> ^( 'if' ^( EXPR expression ) $s1 $s2)*/
      	    	{
      	    	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	    	     189:34: ^( 'if' ^( EXPR expression ) $s1 $s2)*/
      	    	    {
      	    	    	Object root_1 = this._adaptor.nil();
      	    	    	root_1 = this._adaptor.becomeRoot(
      	    	    	stream_36.nextNode()
      	    	    	, root_1);

      	    	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	    	 189:41: ^( EXPR expression )*/
      	    	    	{
      	    	    		Object root_2 = this._adaptor.nil();
      	    	    		root_2 = this._adaptor.becomeRoot(
      	    	    		this._adaptor.create(EXPR, "EXPR")
      	    	    		, root_2);

      	    	    		this._adaptor.addChild(root_2, stream_expression.nextTree());

      	    	    		this._adaptor.addChild(root_1, root_2);
      	    	    	}

      	    	    	this._adaptor.addChild(root_1, stream_s1.nextTree());

      	    	    	this._adaptor.addChild(root_1, stream_s2.nextTree());

      	    	    	this._adaptor.addChild(root_0, root_1);
      	    	    }

      	    	}


      	    	retval.tree = root_0;
      	    	}

      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     190:31: */
      	    {
      	    	// AST REWRITE
      	    	// elements: expression, 36, s1
      	    	// token labels: 
      	    	// rule labels: retval, s1
      	    	// token list labels: 
      	    	// rule list labels: 
      	    	// wildcard labels: 
      	    	if(this.state.backtracking == 0) {

      	    	retval.tree = root_0;
      	    	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	    	RewriteRuleSubtreeStream stream_s1 = new RewriteRuleSubtreeStream(this._adaptor,"rule s1",s1!=null?s1.tree:null);

      	    	root_0 = this._adaptor.nil();
      	    	/* 190:31: -> ^( 'if' ^( EXPR expression ) $s1)*/
      	    	{
      	    	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	    	     190:34: ^( 'if' ^( EXPR expression ) $s1)*/
      	    	    {
      	    	    	Object root_1 = this._adaptor.nil();
      	    	    	root_1 = this._adaptor.becomeRoot(
      	    	    	stream_36.nextNode()
      	    	    	, root_1);

      	    	    	/* ../runtime/dart/tests/grammars/t042ast.g:
      	    	    	 190:41: ^( EXPR expression )*/
      	    	    	{
      	    	    		Object root_2 = this._adaptor.nil();
      	    	    		root_2 = this._adaptor.becomeRoot(
      	    	    		this._adaptor.create(EXPR, "EXPR")
      	    	    		, root_2);

      	    	    		this._adaptor.addChild(root_2, stream_expression.nextTree());

      	    	    		this._adaptor.addChild(root_1, root_2);
      	    	    	}

      	    	    	this._adaptor.addChild(root_1, stream_s1.nextTree());

      	    	    	this._adaptor.addChild(root_0, root_1);
      	    	    }

      	    	}


      	    	retval.tree = root_0;
      	    	}

      	    }
      	    break;

      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r36"


  // $ANTLR start "r37"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   194:1: r37 : ( INT -> INT ) ( '+' i= INT -> ^( '+' $r37 $i) )* ;*/
  t042astParser_r37_return r37() {
    t042astParser_r37_return retval = new t042astParser_r37_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token i = null;
    Token INT86 = null;
    Token char_literal87 = null;

    Object i_tree=null;
    Object INT86_tree=null;
    Object char_literal87_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_18=new RewriteRuleTokenStream(this._adaptor,"token 18");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       195:5: ( ( INT -> INT ) ( '+' i= INT -> ^( '+' $r37 $i) )* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       195:7: ( INT -> INT ) ( '+' i= INT -> ^( '+' $r37 $i) )**/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 195:7: ( INT -> INT )*/
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 195:8: INT*/
      	{
      		INT86 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_r371528); 
      		if(this.state.failed) 
      		  return retval; 
      		if(this.state.backtracking == 0) stream_INT.add(INT86);


      		// AST REWRITE
      		// elements: INT
      		// token labels: 
      		// rule labels: retval
      		// token list labels: 
      		// rule list labels: 
      		// wildcard labels: 
      		if(this.state.backtracking == 0) {

      		retval.tree = root_0;
      		RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      		root_0 = this._adaptor.nil();
      		/* 195:12: -> INT*/
      		{
      		    this._adaptor.addChild(root_0, 
      		    stream_INT.nextNode()
      		    );

      		}


      		retval.tree = root_0;
      		}

      	}


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 195:20: ( '+' i= INT -> ^( '+' $r37 $i) )**/
      	loop25:
      	do {
      	  int alt25 = 2;
      	  int LA25_0 = this.input.LA(1);

      	  if((LA25_0 == 18/*18*/)) {
      	    alt25 = 1;
      	  }


      	  switch (alt25) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   195:21: '+' i= INT*/
      			  {
      			  	char_literal87 = this.matchSymbol(this.input,
      			  	    18,FOLLOW_18_in_r371536); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_18.add(char_literal87);


      			  	i = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_r371540); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_INT.add(i);


      			  	// AST REWRITE
      			  	// elements: i, 18, r37
      			  	// token labels: i
      			  	// rule labels: retval
      			  	// token list labels: 
      			  	// rule list labels: 
      			  	// wildcard labels: 
      			  	if(this.state.backtracking == 0) {

      			  	retval.tree = root_0;
      			  	RewriteRuleTokenStream stream_i = new RewriteRuleTokenStream(this._adaptor,"token i",i);
      			  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      			  	root_0 = this._adaptor.nil();
      			  	/* 195:31: -> ^( '+' $r37 $i)*/
      			  	{
      			  	    /* ../runtime/dart/tests/grammars/t042ast.g:
      			  	     195:34: ^( '+' $r37 $i)*/
      			  	    {
      			  	    	Object root_1 = this._adaptor.nil();
      			  	    	root_1 = this._adaptor.becomeRoot(
      			  	    	stream_18.nextNode()
      			  	    	, root_1);

      			  	    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      			  	    	this._adaptor.addChild(root_1, stream_i.nextNode());

      			  	    	this._adaptor.addChild(root_0, root_1);
      			  	    }

      			  	}


      			  	retval.tree = root_0;
      			  	}

      			  }
      			  break;

      			default :
      		    break loop25;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r37"


  // $ANTLR start "r38"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   198:1: r38 : INT ( '+' ^ INT )* ;*/
  t042astParser_r38_return r38() {
    t042astParser_r38_return retval = new t042astParser_r38_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT88 = null;
    Token char_literal89 = null;
    Token INT90 = null;

    Object INT88_tree=null;
    Object char_literal89_tree=null;
    Object INT90_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       199:5: ( INT ( '+' ^ INT )* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       199:7: INT ( '+' ^ INT )**/
      {
      	root_0 = this._adaptor.nil();


      	INT88 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r381573); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	INT88_tree = this._adaptor.createTreeNode(INT88);
      	this._adaptor.addChild(root_0, INT88_tree);
      	}

      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 199:11: ( '+' ^ INT )**/
      	loop26:
      	do {
      	  int alt26 = 2;
      	  int LA26_0 = this.input.LA(1);

      	  if((LA26_0 == 18/*18*/)) {
      	    alt26 = 1;
      	  }


      	  switch (alt26) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   199:12: '+' ^ INT*/
      			  {
      			  	char_literal89 = this.matchSymbol(this.input,
      			  	    18,FOLLOW_18_in_r381576); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	char_literal89_tree = this._adaptor.createTreeNode(char_literal89);
      			  	root_0 = this._adaptor.becomeRoot(char_literal89_tree, root_0);
      			  	}

      			  	INT90 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_r381579); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	INT90_tree = this._adaptor.createTreeNode(INT90);
      			  	this._adaptor.addChild(root_0, INT90_tree);
      			  	}

      			  }
      			  break;

      			default :
      		    break loop26;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r38"


  // $ANTLR start "r39"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   202:1: r39 : ( primary -> primary ) ( '(' arg= expression ')' -> ^( CALL $r39 $arg) | 
   '[' ie= expression ']' -> ^( INDEX $r39 $ie) | '.' p= primary -> ^( FIELDACCESS $r39 $p) )* ; */
  t042astParser_r39_return r39() {
    t042astParser_r39_return retval = new t042astParser_r39_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal92 = null;
    Token char_literal93 = null;
    Token char_literal94 = null;
    Token char_literal95 = null;
    Token char_literal96 = null;
    t042astParser_expression_return arg =null;

    t042astParser_expression_return ie =null;

    t042astParser_primary_return p =null;

    t042astParser_primary_return primary91 =null;


    Object char_literal92_tree=null;
    Object char_literal93_tree=null;
    Object char_literal94_tree=null;
    Object char_literal95_tree=null;
    Object char_literal96_tree=null;
    RewriteRuleTokenStream stream_20=new RewriteRuleTokenStream(this._adaptor,"token 20");
    RewriteRuleTokenStream stream_17=new RewriteRuleTokenStream(this._adaptor,"token 17");
    RewriteRuleTokenStream stream_24=new RewriteRuleTokenStream(this._adaptor,"token 24");
    RewriteRuleTokenStream stream_25=new RewriteRuleTokenStream(this._adaptor,"token 25");
    RewriteRuleTokenStream stream_16=new RewriteRuleTokenStream(this._adaptor,"token 16");
    RewriteRuleSubtreeStream stream_expression=new RewriteRuleSubtreeStream(this._adaptor,"rule expression");
    RewriteRuleSubtreeStream stream_primary=new RewriteRuleSubtreeStream(this._adaptor,"rule primary");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       203:5: ( ( primary -> primary ) ( '(' arg= expression ')' -> ^( CALL $r39 $arg) | 
       '[' ie= expression ']' -> ^( INDEX $r39 $ie) | '.' p= primary -> ^( FIELDACCESS $r39 $p) )* ) */
      /* ../runtime/dart/tests/grammars/t042ast.g:
       203:7: ( primary -> primary ) ( '(' arg= expression ')' -> ^( CALL $r39 $arg) | 
       '[' ie= expression ']' -> ^( INDEX $r39 $ie) | '.' p= primary -> ^( FIELDACCESS $r39 $p) )* */
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 203:7: ( primary -> primary )*/
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 203:8: primary*/
      	{
      		this.pushFollow(FOLLOW_primary_in_r391599);
      		primary91 = this.primary();

      		this.state.fsp--;
      		if(this.state.failed) 
      		  return retval;
      		if(this.state.backtracking == 0) 
      		  stream_primary.add(primary91.tree);

      		// AST REWRITE
      		// elements: primary
      		// token labels: 
      		// rule labels: retval
      		// token list labels: 
      		// rule list labels: 
      		// wildcard labels: 
      		if(this.state.backtracking == 0) {

      		retval.tree = root_0;
      		RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      		root_0 = this._adaptor.nil();
      		/* 203:15: -> primary*/
      		{
      		    this._adaptor.addChild(root_0, stream_primary.nextTree());

      		}


      		retval.tree = root_0;
      		}

      	}


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 204:9: ( '(' arg= expression ')' -> ^( CALL $r39 $arg) | '[' ie= expression ']' -> ^( INDEX $r39 $ie) | 
      	 '.' p= primary -> ^( FIELDACCESS $r39 $p) )**/
      	loop27:
      	do {
      	  int alt27 = 4;
      	  switch ( this.input.LA(1) ) {
      	  case 16:
      	    {
      	    alt27 = 1;
      	    }
      	    break;
      	  case 24:
      	    {
      	    alt27 = 2;
      	    }
      	    break;
      	  case 20:
      	    {
      	    alt27 = 3;
      	    }
      	    break;

      	  }

      	  switch (alt27) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   204:11: '(' arg= expression ')'*/
      			  {
      			  	char_literal92 = this.matchSymbol(this.input,
      			  	    16,FOLLOW_16_in_r391615); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_16.add(char_literal92);


      			  	this.pushFollow(FOLLOW_expression_in_r391619);
      			  	arg = this.expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_expression.add(arg.tree);

      			  	char_literal93 = this.matchSymbol(this.input,
      			  	    17,FOLLOW_17_in_r391621); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_17.add(char_literal93);


      			  	// AST REWRITE
      			  	// elements: arg, r39
      			  	// token labels: 
      			  	// rule labels: arg, retval
      			  	// token list labels: 
      			  	// rule list labels: 
      			  	// wildcard labels: 
      			  	if(this.state.backtracking == 0) {

      			  	retval.tree = root_0;
      			  	RewriteRuleSubtreeStream stream_arg = new RewriteRuleSubtreeStream(this._adaptor,"rule arg",arg!=null?arg.tree:null);
      			  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      			  	root_0 = this._adaptor.nil();
      			  	/* 205:13: -> ^( CALL $r39 $arg)*/
      			  	{
      			  	    /* ../runtime/dart/tests/grammars/t042ast.g:
      			  	     205:16: ^( CALL $r39 $arg)*/
      			  	    {
      			  	    	Object root_1 = this._adaptor.nil();
      			  	    	root_1 = this._adaptor.becomeRoot(
      			  	    	this._adaptor.create(CALL, "CALL")
      			  	    	, root_1);

      			  	    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      			  	    	this._adaptor.addChild(root_1, stream_arg.nextTree());

      			  	    	this._adaptor.addChild(root_0, root_1);
      			  	    }

      			  	}


      			  	retval.tree = root_0;
      			  	}

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   206:11: '[' ie= expression ']'*/
      			  {
      			  	char_literal94 = this.matchSymbol(this.input,
      			  	    24,FOLLOW_24_in_r391657); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_24.add(char_literal94);


      			  	this.pushFollow(FOLLOW_expression_in_r391661);
      			  	ie = this.expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_expression.add(ie.tree);

      			  	char_literal95 = this.matchSymbol(this.input,
      			  	    25,FOLLOW_25_in_r391663); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_25.add(char_literal95);


      			  	// AST REWRITE
      			  	// elements: ie, r39
      			  	// token labels: 
      			  	// rule labels: retval, ie
      			  	// token list labels: 
      			  	// rule list labels: 
      			  	// wildcard labels: 
      			  	if(this.state.backtracking == 0) {

      			  	retval.tree = root_0;
      			  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      			  	RewriteRuleSubtreeStream stream_ie = new RewriteRuleSubtreeStream(this._adaptor,"rule ie",ie!=null?ie.tree:null);

      			  	root_0 = this._adaptor.nil();
      			  	/* 207:13: -> ^( INDEX $r39 $ie)*/
      			  	{
      			  	    /* ../runtime/dart/tests/grammars/t042ast.g:
      			  	     207:16: ^( INDEX $r39 $ie)*/
      			  	    {
      			  	    	Object root_1 = this._adaptor.nil();
      			  	    	root_1 = this._adaptor.becomeRoot(
      			  	    	this._adaptor.create(INDEX, "INDEX")
      			  	    	, root_1);

      			  	    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      			  	    	this._adaptor.addChild(root_1, stream_ie.nextTree());

      			  	    	this._adaptor.addChild(root_0, root_1);
      			  	    }

      			  	}


      			  	retval.tree = root_0;
      			  	}

      			  }
      			  break;
      			case 3 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   208:11: '.' p= primary*/
      			  {
      			  	char_literal96 = this.matchSymbol(this.input,
      			  	    20,FOLLOW_20_in_r391699); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_20.add(char_literal96);


      			  	this.pushFollow(FOLLOW_primary_in_r391703);
      			  	p = this.primary();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) 
      			  	  stream_primary.add(p.tree);

      			  	// AST REWRITE
      			  	// elements: p, r39
      			  	// token labels: 
      			  	// rule labels: retval, p
      			  	// token list labels: 
      			  	// rule list labels: 
      			  	// wildcard labels: 
      			  	if(this.state.backtracking == 0) {

      			  	retval.tree = root_0;
      			  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      			  	RewriteRuleSubtreeStream stream_p = new RewriteRuleSubtreeStream(this._adaptor,"rule p",p!=null?p.tree:null);

      			  	root_0 = this._adaptor.nil();
      			  	/* 209:13: -> ^( FIELDACCESS $r39 $p)*/
      			  	{
      			  	    /* ../runtime/dart/tests/grammars/t042ast.g:
      			  	     209:16: ^( FIELDACCESS $r39 $p)*/
      			  	    {
      			  	    	Object root_1 = this._adaptor.nil();
      			  	    	root_1 = this._adaptor.becomeRoot(
      			  	    	this._adaptor.create(FIELDACCESS, "FIELDACCESS")
      			  	    	, root_1);

      			  	    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      			  	    	this._adaptor.addChild(root_1, stream_p.nextTree());

      			  	    	this._adaptor.addChild(root_0, root_1);
      			  	    }

      			  	}


      			  	retval.tree = root_0;
      			  	}

      			  }
      			  break;

      			default :
      		    break loop27;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r39"


  // $ANTLR start "r40"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   213:1: r40 : ( INT -> INT ) ( ( '+' i+= INT )* -> ^( '+' $r40 ( $i)* ) ) ';' ;*/
  t042astParser_r40_return r40() {
    t042astParser_r40_return retval = new t042astParser_r40_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT97 = null;
    Token char_literal98 = null;
    Token char_literal99 = null;
    Token i = null;
    List list_i = null;

    Object INT97_tree=null;
    Object char_literal98_tree=null;
    Object char_literal99_tree=null;
    Object i_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleTokenStream stream_18=new RewriteRuleTokenStream(this._adaptor,"token 18");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       214:5: ( ( INT -> INT ) ( ( '+' i+= INT )* -> ^( '+' $r40 ( $i)* ) ) ';' )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       214:7: ( INT -> INT ) ( ( '+' i+= INT )* -> ^( '+' $r40 ( $i)* ) ) ';'*/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 214:7: ( INT -> INT )*/
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 214:8: INT*/
      	{
      		INT97 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_r401756); 
      		if(this.state.failed) 
      		  return retval; 
      		if(this.state.backtracking == 0) stream_INT.add(INT97);


      		// AST REWRITE
      		// elements: INT
      		// token labels: 
      		// rule labels: retval
      		// token list labels: 
      		// rule list labels: 
      		// wildcard labels: 
      		if(this.state.backtracking == 0) {

      		retval.tree = root_0;
      		RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      		root_0 = this._adaptor.nil();
      		/* 214:12: -> INT*/
      		{
      		    this._adaptor.addChild(root_0, 
      		    stream_INT.nextNode()
      		    );

      		}


      		retval.tree = root_0;
      		}

      	}


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 214:20: ( ( '+' i+= INT )* -> ^( '+' $r40 ( $i)* ) )*/
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 214:22: ( '+' i+= INT )**/
      	{
      		/* ../runtime/dart/tests/grammars/t042ast.g:
      		 214:22: ( '+' i+= INT )**/
      		loop28:
      		do {
      		  int alt28 = 2;
      		  int LA28_0 = this.input.LA(1);

      		  if((LA28_0 == 18/*18*/)) {
      		    alt28 = 1;
      		  }


      		  switch (alt28) {
      				case 1 :
      				  /* ../runtime/dart/tests/grammars/t042ast.g:
      				   214:23: '+' i+= INT*/
      				  {
      				  	char_literal98 = this.matchSymbol(this.input,
      				  	    18,FOLLOW_18_in_r401766); 
      				  	if(this.state.failed) 
      				  	  return retval; 
      				  	if(this.state.backtracking == 0) stream_18.add(char_literal98);


      				  	i = this.matchSymbol(this.input,
      				  	    INT,FOLLOW_INT_in_r401770); 
      				  	if(this.state.failed) 
      				  	  return retval; 
      				  	if(this.state.backtracking == 0) stream_INT.add(i);

      				  	if(list_i == null) 
      				  	  list_i = new List();
      				  	list_i.add(i);


      				  }
      				  break;

      				default :
      			    break loop28;
      		  }
      		} while(true);


      		// AST REWRITE
      		// elements: 18, i, r40
      		// token labels: 
      		// rule labels: retval
      		// token list labels: i
      		// rule list labels: 
      		// wildcard labels: 
      		if(this.state.backtracking == 0) {

      		retval.tree = root_0;
      		RewriteRuleTokenStream stream_i = new RewriteRuleTokenStream(this._adaptor,"token i", list_i);
      		RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      		root_0 = this._adaptor.nil();
      		/* 214:36: -> ^( '+' $r40 ( $i)* )*/
      		{
      		    /* ../runtime/dart/tests/grammars/t042ast.g:
      		     214:39: ^( '+' $r40 ( $i)* )*/
      		    {
      		    	Object root_1 = this._adaptor.nil();
      		    	root_1 = this._adaptor.becomeRoot(
      		    	stream_18.nextNode()
      		    	, root_1);

      		    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      		    	/* ../runtime/dart/tests/grammars/t042ast.g:
      		    	 214:51: ( $i)**/
      		    	while ( stream_i.hasNext()) {
      		    	    this._adaptor.addChild(root_1, stream_i.nextNode());

      		    	}
      		    	stream_i.reset();

      		    	this._adaptor.addChild(root_0, root_1);
      		    }

      		}


      		retval.tree = root_0;
      		}

      	}


      	char_literal99 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r401789); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal99);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r40"


  // $ANTLR start "r41"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   217:1: r41 : ( INT -> INT ) ( ( '+' i= INT ) -> ^( $i $r41) )* ';' ;*/
  t042astParser_r41_return r41() {
    t042astParser_r41_return retval = new t042astParser_r41_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token i = null;
    Token INT100 = null;
    Token char_literal101 = null;
    Token char_literal102 = null;

    Object i_tree=null;
    Object INT100_tree=null;
    Object char_literal101_tree=null;
    Object char_literal102_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleTokenStream stream_18=new RewriteRuleTokenStream(this._adaptor,"token 18");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       218:5: ( ( INT -> INT ) ( ( '+' i= INT ) -> ^( $i $r41) )* ';' )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       218:7: ( INT -> INT ) ( ( '+' i= INT ) -> ^( $i $r41) )* ';'*/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 218:7: ( INT -> INT )*/
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 218:8: INT*/
      	{
      		INT100 = this.matchSymbol(this.input,
      		    INT,FOLLOW_INT_in_r411807); 
      		if(this.state.failed) 
      		  return retval; 
      		if(this.state.backtracking == 0) stream_INT.add(INT100);


      		// AST REWRITE
      		// elements: INT
      		// token labels: 
      		// rule labels: retval
      		// token list labels: 
      		// rule list labels: 
      		// wildcard labels: 
      		if(this.state.backtracking == 0) {

      		retval.tree = root_0;
      		RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      		root_0 = this._adaptor.nil();
      		/* 218:12: -> INT*/
      		{
      		    this._adaptor.addChild(root_0, 
      		    stream_INT.nextNode()
      		    );

      		}


      		retval.tree = root_0;
      		}

      	}


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 218:20: ( ( '+' i= INT ) -> ^( $i $r41) )**/
      	loop29:
      	do {
      	  int alt29 = 2;
      	  int LA29_0 = this.input.LA(1);

      	  if((LA29_0 == 18/*18*/)) {
      	    alt29 = 1;
      	  }


      	  switch (alt29) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   218:22: ( '+' i= INT )*/
      			  {
      			  	/* ../runtime/dart/tests/grammars/t042ast.g:
      			  	 218:22: ( '+' i= INT )*/
      			  	/* ../runtime/dart/tests/grammars/t042ast.g:
      			  	 218:23: '+' i= INT*/
      			  	{
      			  		char_literal101 = this.matchSymbol(this.input,
      			  		    18,FOLLOW_18_in_r411817); 
      			  		if(this.state.failed) 
      			  		  return retval; 
      			  		if(this.state.backtracking == 0) stream_18.add(char_literal101);


      			  		i = this.matchSymbol(this.input,
      			  		    INT,FOLLOW_INT_in_r411821); 
      			  		if(this.state.failed) 
      			  		  return retval; 
      			  		if(this.state.backtracking == 0) stream_INT.add(i);


      			  	}


      			  	// AST REWRITE
      			  	// elements: i, r41
      			  	// token labels: i
      			  	// rule labels: retval
      			  	// token list labels: 
      			  	// rule list labels: 
      			  	// wildcard labels: 
      			  	if(this.state.backtracking == 0) {

      			  	retval.tree = root_0;
      			  	RewriteRuleTokenStream stream_i = new RewriteRuleTokenStream(this._adaptor,"token i",i);
      			  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      			  	root_0 = this._adaptor.nil();
      			  	/* 218:34: -> ^( $i $r41)*/
      			  	{
      			  	    /* ../runtime/dart/tests/grammars/t042ast.g:
      			  	     218:37: ^( $i $r41)*/
      			  	    {
      			  	    	Object root_1 = this._adaptor.nil();
      			  	    	root_1 = this._adaptor.becomeRoot(stream_i.nextNode(), root_1);

      			  	    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      			  	    	this._adaptor.addChild(root_0, root_1);
      			  	    }

      			  	}


      			  	retval.tree = root_0;
      			  	}

      			  }
      			  break;

      			default :
      		    break loop29;
      	  }
      	} while(true);


      	char_literal102 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_r411837); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_22.add(char_literal102);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r41"


  // $ANTLR start "r42"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   221:1: r42 :ids+= ID ( ',' !ids+= ID )* ;*/
  t042astParser_r42_return r42() {
    t042astParser_r42_return retval = new t042astParser_r42_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal103 = null;
    Token ids = null;
    List list_ids = null;

    Object char_literal103_tree=null;
    Object ids_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       222:5: (ids+= ID ( ',' !ids+= ID )* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       222:7: ids+= ID ( ',' !ids+= ID )**/
      {
      	root_0 = this._adaptor.nil();


      	ids = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r421856); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ids_tree = this._adaptor.createTreeNode(ids);
      	this._adaptor.addChild(root_0, ids_tree);
      	}
      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 222:15: ( ',' !ids+= ID )**/
      	loop30:
      	do {
      	  int alt30 = 2;
      	  int LA30_0 = this.input.LA(1);

      	  if((LA30_0 == 19/*19*/)) {
      	    alt30 = 1;
      	  }


      	  switch (alt30) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   222:16: ',' !ids+= ID*/
      			  {
      			  	char_literal103 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r421859); 
      			  	if(this.state.failed) 
      			  	  return retval;

      			  	ids = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r421864); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	ids_tree = this._adaptor.createTreeNode(ids);
      			  	this._adaptor.addChild(root_0, ids_tree);
      			  	}
      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids);


      			  }
      			  break;

      			default :
      		    break loop30;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r42"


  // $ANTLR start "r43"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   225:1: r43 returns [List res] :ids+= ID ! ( ',' !ids+= ID !)* ;*/
  t042astParser_r43_return r43() {
    t042astParser_r43_return retval = new t042astParser_r43_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal104 = null;
    Token ids = null;
    List list_ids = null;

    Object char_literal104_tree=null;
    Object ids_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       226:5: (ids+= ID ! ( ',' !ids+= ID !)* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       226:7: ids+= ID ! ( ',' !ids+= ID !)**/
      {
      	root_0 = this._adaptor.nil();


      	ids = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r431889); 
      	if(this.state.failed) 
      	  return retval;
      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 226:16: ( ',' !ids+= ID !)**/
      	loop31:
      	do {
      	  int alt31 = 2;
      	  int LA31_0 = this.input.LA(1);

      	  if((LA31_0 == 19/*19*/)) {
      	    alt31 = 1;
      	  }


      	  switch (alt31) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   226:17: ',' !ids+= ID !*/
      			  {
      			  	char_literal104 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r431893); 
      			  	if(this.state.failed) 
      			  	  return retval;

      			  	ids = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r431898); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids);


      			  }
      			  break;

      			default :
      		    break loop31;
      	  }
      	} while(true);


      	if(this.state.backtracking == 0) {
      	  retval.res =  map(list_ids, (id) => id.text);;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r43"


  // $ANTLR start "r44"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   229:1: r44 :ids+= ID ^ ( ',' !ids+= ID ^)* ;*/
  t042astParser_r44_return r44() {
    t042astParser_r44_return retval = new t042astParser_r44_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal105 = null;
    Token ids = null;
    List list_ids = null;

    Object char_literal105_tree=null;
    Object ids_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       230:5: (ids+= ID ^ ( ',' !ids+= ID ^)* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       230:7: ids+= ID ^ ( ',' !ids+= ID ^)**/
      {
      	root_0 = this._adaptor.nil();


      	ids = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r441922); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ids_tree = this._adaptor.createTreeNode(ids);
      	root_0 = this._adaptor.becomeRoot(ids_tree, root_0);
      	}
      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 230:16: ( ',' !ids+= ID ^)**/
      	loop32:
      	do {
      	  int alt32 = 2;
      	  int LA32_0 = this.input.LA(1);

      	  if((LA32_0 == 19/*19*/)) {
      	    alt32 = 1;
      	  }


      	  switch (alt32) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   230:17: ',' !ids+= ID ^*/
      			  {
      			  	char_literal105 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r441926); 
      			  	if(this.state.failed) 
      			  	  return retval;

      			  	ids = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r441931); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	ids_tree = this._adaptor.createTreeNode(ids);
      			  	root_0 = this._adaptor.becomeRoot(ids_tree, root_0);
      			  	}
      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids);


      			  }
      			  break;

      			default :
      		    break loop32;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r44"


  // $ANTLR start "r45"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   233:1: r45 : primary ^;*/
  t042astParser_r45_return r45() {
    t042astParser_r45_return retval = new t042astParser_r45_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_primary_return primary106 =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       234:5: ( primary ^)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       234:7: primary ^*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_primary_in_r451951);
      	primary106 = this.primary();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  root_0 = this._adaptor.becomeRoot(primary106.tree, root_0);

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r45"


  // $ANTLR start "r46"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   237:1: r46 returns [List res] :ids+= primary ! ( ',' !ids+= primary !)* ;*/
  t042astParser_r46_return r46() {
    t042astParser_r46_return retval = new t042astParser_r46_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal107 = null;
    List list_ids = null;
    RuleReturnScope ids = null;
    Object char_literal107_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       238:5: (ids+= primary ! ( ',' !ids+= primary !)* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       238:7: ids+= primary ! ( ',' !ids+= primary !)**/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_primary_in_r461975);
      	ids = this.primary();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids.tree);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 238:21: ( ',' !ids+= primary !)**/
      	loop33:
      	do {
      	  int alt33 = 2;
      	  int LA33_0 = this.input.LA(1);

      	  if((LA33_0 == 19/*19*/)) {
      	    alt33 = 1;
      	  }


      	  switch (alt33) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   238:22: ',' !ids+= primary !*/
      			  {
      			  	char_literal107 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r461979); 
      			  	if(this.state.failed) 
      			  	  return retval;

      			  	this.pushFollow(FOLLOW_primary_in_r461984);
      			  	ids = this.primary();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids.tree);


      			  }
      			  break;

      			default :
      		    break loop33;
      	  }
      	} while(true);


      	if(this.state.backtracking == 0) {
      	  retval.res =  map(list_ids, (id) => id.text);;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r46"


  // $ANTLR start "r47"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   241:1: r47 :ids+= primary ( ',' !ids+= primary )* ;*/
  t042astParser_r47_return r47() {
    t042astParser_r47_return retval = new t042astParser_r47_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal108 = null;
    List list_ids = null;
    RuleReturnScope ids = null;
    Object char_literal108_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       242:5: (ids+= primary ( ',' !ids+= primary )* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       242:7: ids+= primary ( ',' !ids+= primary )**/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_primary_in_r472008);
      	ids = this.primary();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, ids.tree);
      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids.tree);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 242:20: ( ',' !ids+= primary )**/
      	loop34:
      	do {
      	  int alt34 = 2;
      	  int LA34_0 = this.input.LA(1);

      	  if((LA34_0 == 19/*19*/)) {
      	    alt34 = 1;
      	  }


      	  switch (alt34) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   242:21: ',' !ids+= primary*/
      			  {
      			  	char_literal108 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r472011); 
      			  	if(this.state.failed) 
      			  	  return retval;

      			  	this.pushFollow(FOLLOW_primary_in_r472016);
      			  	ids = this.primary();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0)
      			  	  this._adaptor.addChild(root_0, ids.tree);
      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids.tree);


      			  }
      			  break;

      			default :
      		    break loop34;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r47"


  // $ANTLR start "r48"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   245:1: r48 :ids+= . ( ',' !ids+= . )* ;*/
  t042astParser_r48_return r48() {
    t042astParser_r48_return retval = new t042astParser_r48_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal109 = null;
    Token ids = null;
    List list_ids = null;

    Object char_literal109_tree=null;
    Object ids_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       246:5: (ids+= . ( ',' !ids+= . )* )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       246:7: ids+= . ( ',' !ids+= . )**/
      {
      	root_0 = this._adaptor.nil();


      	ids = this.input.LT(1);

      	this.matchAny(this.input); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	  ids_tree = this._adaptor.createTreeNode(ids);
      	  this._adaptor.addChild(root_0, ids_tree);
      	}
      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids);


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 246:14: ( ',' !ids+= . )**/
      	loop35:
      	do {
      	  int alt35 = 2;
      	  int LA35_0 = this.input.LA(1);

      	  if((LA35_0 == 19/*19*/)) {
      	    alt35 = 1;
      	  }


      	  switch (alt35) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   246:15: ',' !ids+= .*/
      			  {
      			  	char_literal109 = this.matchSymbol(this.input,
      			  	    19,FOLLOW_19_in_r482040); 
      			  	if(this.state.failed) 
      			  	  return retval;

      			  	ids = this.input.LT(1);

      			  	this.matchAny(this.input); 
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0) {
      			  	  ids_tree = this._adaptor.createTreeNode(ids);
      			  	  this._adaptor.addChild(root_0, ids_tree);
      			  	}
      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids);


      			  }
      			  break;

      			default :
      		    break loop35;
      	  }
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r48"


  // $ANTLR start "r49"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   249:1: r49 : . ^ ID ;*/
  t042astParser_r49_return r49() {
    t042astParser_r49_return retval = new t042astParser_r49_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token wildcard110 = null;
    Token ID111 = null;

    Object wildcard110_tree=null;
    Object ID111_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       250:5: ( . ^ ID )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       250:7: . ^ ID*/
      {
      	root_0 = this._adaptor.nil();


      	wildcard110 = this.input.LT(1);

      	this.matchAny(this.input); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	  wildcard110_tree = this._adaptor.createTreeNode(wildcard110);
      	  root_0 = this._adaptor.becomeRoot(wildcard110_tree, root_0);
      	}

      	ID111 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r492067); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID111_tree = this._adaptor.createTreeNode(ID111);
      	this._adaptor.addChild(root_0, ID111_tree);
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r49"


  // $ANTLR start "r50"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   253:1: r50 : ID -> ^( ID ) ;*/
  t042astParser_r50_return r50() {
    t042astParser_r50_return retval = new t042astParser_r50_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID112 = null;

    Object ID112_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       254:5: ( ID -> ^( ID ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       254:7: ID*/
      {
      	ID112 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r502084); 
      	if(this.state.failed) 
      	  return retval; 
      	if(this.state.backtracking == 0) stream_ID.add(ID112);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 255:9: -> ^( ID )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     255:12: ^( ID )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(new CommonTree.fromToken(new CommonToken(FLOAT, "1.0")), root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r50"


  // $ANTLR start "r51"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   261:1: r51 returns [Object res] : ID t= ID ID ;*/
  t042astParser_r51_return r51() {
    t042astParser_r51_return retval = new t042astParser_r51_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;
    Token ID113 = null;
    Token ID114 = null;

    Object t_tree=null;
    Object ID113_tree=null;
    Object ID114_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       262:5: ( ID t= ID ID )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       262:7: ID t= ID ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID113 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r512124); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID113_tree = this._adaptor.createTreeNode(ID113);
      	this._adaptor.addChild(root_0, ID113_tree);
      	}

      	t = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r512128); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	t_tree = this._adaptor.createTreeNode(t);
      	this._adaptor.addChild(root_0, t_tree);
      	}

      	ID114 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r512130); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID114_tree = this._adaptor.createTreeNode(ID114);
      	this._adaptor.addChild(root_0, ID114_tree);
      	}

      	if(this.state.backtracking == 0) {
      	   retval.res =  t_tree; ;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r51"


  // $ANTLR start "r52"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   269:1: r52 returns [Object res] : ID ;*/
  t042astParser_r52_return r52() {
    t042astParser_r52_return retval = new t042astParser_r52_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID115 = null;

    Object ID115_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       273:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       273:7: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID115 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r522168); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID115_tree = this._adaptor.createTreeNode(ID115);
      	this._adaptor.addChild(root_0, ID115_tree);
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }

      if(this.state.backtracking == 0) {

            retval.res =  retval.tree;
      ;
      }

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
  // $ANTLR end "r52"


  // $ANTLR start "r53"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   279:1: r53 returns [Object res] : t= primary ;*/
  t042astParser_r53_return r53() {
    t042astParser_r53_return retval = new t042astParser_r53_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_primary_return t =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       280:5: (t= primary )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       280:7: t= primary*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_primary_in_r532193);
      	t = this.primary();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, t.tree);

      	if(this.state.backtracking == 0) {
      	   retval.res =  (t != null) ? t.tree : null; ;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r53"


  // $ANTLR start "r54"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   287:1: r54 returns [Object res] : ID t= expression ID ;*/
  t042astParser_r54_return r54() {
    t042astParser_r54_return retval = new t042astParser_r54_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID116 = null;
    Token ID117 = null;
    t042astParser_expression_return t =null;


    Object ID116_tree=null;
    Object ID117_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       291:5: ( ID t= expression ID )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       291:7: ID t= expression ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID116 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r542231); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID116_tree = this._adaptor.createTreeNode(ID116);
      	this._adaptor.addChild(root_0, ID116_tree);
      	}

      	this.pushFollow(FOLLOW_expression_in_r542235);
      	t = this.expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, t.tree);

      	ID117 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_r542237); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID117_tree = this._adaptor.createTreeNode(ID117);
      	this._adaptor.addChild(root_0, ID117_tree);
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }

      if(this.state.backtracking == 0) {

            retval.tree = (t != null) ? t.tree : null;;
      ;
      }

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
  // $ANTLR end "r54"


  // $ANTLR start "r55"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   295:1: r55 options {backtrack=true; k=1; } : ( ( ( modifier )+ INT )=> ( modifier )+ expression | 
   ( modifier )+ statement );*/
  t042astParser_r55_return r55() {
    t042astParser_r55_return retval = new t042astParser_r55_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_modifier_return modifier118 =null;

    t042astParser_expression_return expression119 =null;

    t042astParser_modifier_return modifier120 =null;

    t042astParser_statement_return statement121 =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g: 
       297:5: ( ( ( modifier )+ INT )=> ( modifier )+ expression | ( modifier )+ statement ) */
      int alt38 = 2;
      int LA38_0 = this.input.LA(1);

      if(((LA38_0 >= 39 && LA38_0 <= 40))) {
        int LA38_1 = this.input.LA(2);

        if((synpred1_t042ast())) {
          alt38 = 1;
        }
        else if((true)) {
          alt38 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return retval;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 38, 1, this.input);

          throw nvae;

        }
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return retval;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 38, 0, this.input);

        throw nvae;

      }
      switch (alt38) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t042ast.g:
           297:7: ( ( modifier )+ INT )=> ( modifier )+ expression*/
          {
          	root_0 = this._adaptor.nil();


          	/* ../runtime/dart/tests/grammars/t042ast.g:
          	 297:25: ( modifier )+*/
          	int cnt36 = 0;
          	loop36:
          	do {
          	  int alt36 = 2;
          	  int LA36_0 = this.input.LA(1);

          	  if(((LA36_0 >= 39 && LA36_0 <= 40))) {
          	    alt36 = 1;
          	  }


          	  switch (alt36) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t042ast.g:
          			   297:25: modifier*/
          			  {
          			  	this.pushFollow(FOLLOW_modifier_in_r552278);
          			  	modifier118 = this.modifier();

          			  	this.state.fsp--;
          			  	if(this.state.failed) 
          			  	  return retval;
          			  	if(this.state.backtracking == 0)
          			  	  this._adaptor.addChild(root_0, modifier118.tree);

          			  }
          			  break;

          			default :
          		    if(cnt36 >= 1) break loop36;
          		      if(this.state.backtracking > 0) {
          		        this.state.failed = true; 
          		        return retval;
          		      }
          	        EarlyExitException eee = new EarlyExitException(36, this.input);
          	        throw eee;
          	  }
          	  cnt36++;
          	} while(true);


          	this.pushFollow(FOLLOW_expression_in_r552281);
          	expression119 = this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return retval;
          	if(this.state.backtracking == 0)
          	  this._adaptor.addChild(root_0, expression119.tree);

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t042ast.g:
           298:7: ( modifier )+ statement*/
          {
          	root_0 = this._adaptor.nil();


          	/* ../runtime/dart/tests/grammars/t042ast.g:
          	 298:7: ( modifier )+*/
          	int cnt37 = 0;
          	loop37:
          	do {
          	  int alt37 = 2;
          	  int LA37_0 = this.input.LA(1);

          	  if(((LA37_0 >= 39 && LA37_0 <= 40))) {
          	    alt37 = 1;
          	  }


          	  switch (alt37) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t042ast.g:
          			   298:7: modifier*/
          			  {
          			  	this.pushFollow(FOLLOW_modifier_in_r552289);
          			  	modifier120 = this.modifier();

          			  	this.state.fsp--;
          			  	if(this.state.failed) 
          			  	  return retval;
          			  	if(this.state.backtracking == 0)
          			  	  this._adaptor.addChild(root_0, modifier120.tree);

          			  }
          			  break;

          			default :
          		    if(cnt37 >= 1) break loop37;
          		      if(this.state.backtracking > 0) {
          		        this.state.failed = true; 
          		        return retval;
          		      }
          	        EarlyExitException eee = new EarlyExitException(37, this.input);
          	        throw eee;
          	  }
          	  cnt37++;
          	} while(true);


          	this.pushFollow(FOLLOW_statement_in_r552292);
          	statement121 = this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return retval;
          	if(this.state.backtracking == 0)
          	  this._adaptor.addChild(root_0, statement121.tree);

          }
          break;

      }
      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r55"


  // $ANTLR start "r56"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   305:1: r56 : (t= ID )* -> ID[$t,'foo'] ;*/
  t042astParser_r56_return r56() {
    t042astParser_r56_return retval = new t042astParser_r56_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       306:5: ( (t= ID )* -> ID[$t,'foo'] )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       306:7: (t= ID )**/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 306:8: (t= ID )**/
      	loop39:
      	do {
      	  int alt39 = 2;
      	  int LA39_0 = this.input.LA(1);

      	  if((LA39_0 == 10/*ID*/)) {
      	    alt39 = 1;
      	  }


      	  switch (alt39) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   306:8: t= ID*/
      			  {
      			  	t = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r562314); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_ID.add(t);


      			  }
      			  break;

      			default :
      		    break loop39;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 306:13: -> ID[$t,'foo']*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(ID, t, 'foo')
      	    );

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r56"


  // $ANTLR start "r57"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   312:1: r57 : (t= ID )* -> ^( ID[$t,'foo'] ) ;*/
  t042astParser_r57_return r57() {
    t042astParser_r57_return retval = new t042astParser_r57_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;

    Object t_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       313:5: ( (t= ID )* -> ^( ID[$t,'foo'] ) )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       313:7: (t= ID )**/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 313:8: (t= ID )**/
      	loop40:
      	do {
      	  int alt40 = 2;
      	  int LA40_0 = this.input.LA(1);

      	  if((LA40_0 == 10/*ID*/)) {
      	    alt40 = 1;
      	  }


      	  switch (alt40) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   313:8: t= ID*/
      			  {
      			  	t = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r572341); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_ID.add(t);


      			  }
      			  break;

      			default :
      		    break loop40;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 313:13: -> ^( ID[$t,'foo'] )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t042ast.g:
      	     313:16: ^( ID[$t,'foo'] )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(ID, t, 'foo')
      	    	, root_1);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r57"


  // $ANTLR start "r58"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   319:1: r58 : () ^;*/
  t042astParser_r58_return r58() {
    t042astParser_r58_return retval = new t042astParser_r58_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       320:5: ( () ^)*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       320:7: () ^*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 320:7: ()*/
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 320:8: */
      	{
      		if(this.state.backtracking == 0) {
      		  new CommonTree.fromToken(new CommonToken(FLOAT, "2.0"));
      		}


      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
    }
  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "r58"


  // $ANTLR start "r59"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   326:1: r59 : (t+= ID )+ statement -> ( ^( $t statement ) )+ ;*/
  t042astParser_r59_return r59() {
    t042astParser_r59_return retval = new t042astParser_r59_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token t = null;
    List list_t = null;
    t042astParser_statement_return statement122 =null;


    Object t_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_statement=new RewriteRuleSubtreeStream(this._adaptor,"rule statement");
    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       327:5: ( (t+= ID )+ statement -> ( ^( $t statement ) )+ )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       327:7: (t+= ID )+ statement*/
      {
      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 327:7: (t+= ID )+*/
      	int cnt41 = 0;
      	loop41:
      	do {
      	  int alt41 = 2;
      	  int LA41_0 = this.input.LA(1);

      	  if((LA41_0 == 10/*ID*/)) {
      	    alt41 = 1;
      	  }


      	  switch (alt41) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   327:8: t+= ID*/
      			  {
      			  	t = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_r592393); 
      			  	if(this.state.failed) 
      			  	  return retval; 
      			  	if(this.state.backtracking == 0) stream_ID.add(t);

      			  	if(list_t == null) 
      			  	  list_t = new List();
      			  	list_t.add(t);


      			  }
      			  break;

      			default :
      		    if(cnt41 >= 1) break loop41;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return retval;
      		      }
      	        EarlyExitException eee = new EarlyExitException(41, this.input);
      	        throw eee;
      	  }
      	  cnt41++;
      	} while(true);


      	this.pushFollow(FOLLOW_statement_in_r592397);
      	statement122 = this.statement();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) 
      	  stream_statement.add(statement122.tree);

      	// AST REWRITE
      	// elements: t, statement
      	// token labels: 
      	// rule labels: retval
      	// token list labels: t
      	// rule list labels: 
      	// wildcard labels: 
      	if(this.state.backtracking == 0) {

      	retval.tree = root_0;
      	RewriteRuleTokenStream stream_t = new RewriteRuleTokenStream(this._adaptor,"token t", list_t);
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 327:26: -> ( ^( $t statement ) )+*/
      	{
      	    if(!(stream_t.hasNext()||stream_statement.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_t.hasNext()||stream_statement.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t042ast.g:
      	         327:29: ^( $t statement )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(stream_t.nextNode(), root_1);

      	        	this._adaptor.addChild(root_1, stream_statement.nextTree());

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_t.reset();
      	    stream_statement.reset();

      	}


      	retval.tree = root_0;
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "r59"


  // $ANTLR start "primary"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   330:1: primary : ID ;*/
  t042astParser_primary_return primary() {
    t042astParser_primary_return retval = new t042astParser_primary_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID123 = null;

    Object ID123_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       331:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       331:7: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID123 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_primary2424); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	ID123_tree = this._adaptor.createTreeNode(ID123);
      	this._adaptor.addChild(root_0, ID123_tree);
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "primary"


  // $ANTLR start "expression"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   334:1: expression : r1 ;*/
  t042astParser_expression_return expression() {
    t042astParser_expression_return retval = new t042astParser_expression_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_r1_return r1124 =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       335:5: ( r1 )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       335:7: r1*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_r1_in_expression2441);
      	r1124 = this.r1();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0)
      	  this._adaptor.addChild(root_0, r1124.tree);

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "expression"


  // $ANTLR start "statement"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   338:1: statement : ( 'fooze' | 'fooze2' );*/
  t042astParser_statement_return statement() {
    t042astParser_statement_return retval = new t042astParser_statement_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set125 = null;

    Object set125_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       339:5: ( 'fooze' | 'fooze2' )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set125 = this.input.LT(1);

      	if((this.input.LA(1) >= 33 && this.input.LA(1) <= 34)) {
      	  this.input.consume();
      	  if(this.state.backtracking == 0)
      	    this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set125));
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "statement"


  // $ANTLR start "modifiers"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   343:1: modifiers : ( modifier )+ ;*/
  t042astParser_modifiers_return modifiers() {
    t042astParser_modifiers_return retval = new t042astParser_modifiers_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t042astParser_modifier_return modifier126 =null;



    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       344:5: ( ( modifier )+ )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
       344:7: ( modifier )+*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t042ast.g:
      	 344:7: ( modifier )+*/
      	int cnt42 = 0;
      	loop42:
      	do {
      	  int alt42 = 2;
      	  int LA42_0 = this.input.LA(1);

      	  if(((LA42_0 >= 39 && LA42_0 <= 40))) {
      	    alt42 = 1;
      	  }


      	  switch (alt42) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t042ast.g:
      			   344:7: modifier*/
      			  {
      			  	this.pushFollow(FOLLOW_modifier_in_modifiers2483);
      			  	modifier126 = this.modifier();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return retval;
      			  	if(this.state.backtracking == 0)
      			  	  this._adaptor.addChild(root_0, modifier126.tree);

      			  }
      			  break;

      			default :
      		    if(cnt42 >= 1) break loop42;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return retval;
      		      }
      	        EarlyExitException eee = new EarlyExitException(42, this.input);
      	        throw eee;
      	  }
      	  cnt42++;
      	} while(true);


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "modifiers"


  // $ANTLR start "modifier"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   347:1: modifier : ( 'public' | 'private' );*/
  t042astParser_modifier_return modifier() {
    t042astParser_modifier_return retval = new t042astParser_modifier_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set127 = null;

    Object set127_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       348:5: ( 'public' | 'private' )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set127 = this.input.LT(1);

      	if((this.input.LA(1) >= 39 && this.input.LA(1) <= 40)) {
      	  this.input.consume();
      	  if(this.state.backtracking == 0)
      	    this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set127));
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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
  // $ANTLR end "modifier"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t042ast.g:
   352:1: type : ( 'int' | 'bool' );*/
  t042astParser_type_return type() {
    t042astParser_type_return retval = new t042astParser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set128 = null;

    Object set128_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t042ast.g:
       353:5: ( 'int' | 'bool' )*/
      /* ../runtime/dart/tests/grammars/t042ast.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set128 = this.input.LT(1);

      	if(this.input.LA(1) == 27
      	  || this.input.LA(1) == 38) {
      	  this.input.consume();
      	  if(this.state.backtracking == 0)
      	    this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set128));
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
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

  // $ANTLR start synpred1_t042ast
  void synpred1_t042ast_fragment() {
    /* ../runtime/dart/tests/grammars/t042ast.g:
     297:7: ( ( modifier )+ INT )*/
    /* ../runtime/dart/tests/grammars/t042ast.g:
     297:8: ( modifier )+ INT*/
    {
    	/* ../runtime/dart/tests/grammars/t042ast.g:
    	 297:8: ( modifier )+*/
    	int cnt43 = 0;
    	loop43:
    	do {
    	  int alt43 = 2;
    	  int LA43_0 = this.input.LA(1);

    	  if(((LA43_0 >= 39 && LA43_0 <= 40))) {
    	    alt43 = 1;
    	  }


    	  switch (alt43) {
    			case 1 :
    			  /* ../runtime/dart/tests/grammars/t042ast.g:
    			   297:8: modifier*/
    			  {
    			  	this.pushFollow(FOLLOW_modifier_in_synpred1_t042ast2271);
    			  	this.modifier();

    			  	this.state.fsp--;
    			  	if(this.state.failed) 
    			  	  return ;

    			  }
    			  break;

    			default :
    		    if(cnt43 >= 1) break loop43;
    		      if(this.state.backtracking > 0) {
    		        this.state.failed = true; 
    		        return ;
    		      }
    	        EarlyExitException eee = new EarlyExitException(43, this.input);
    	        throw eee;
    	  }
    	  cnt43++;
    	} while(true);


    	this.matchSymbol(this.input,
    	    INT,FOLLOW_INT_in_synpred1_t042ast2274); 
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred1_t042ast


  bool synpred1_t042ast() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred1_t042ast_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


 

  static BitSet _FOLLOW_INT_in_r1115 = null;
  static BitSet get FOLLOW_INT_in_r1115() {
    if(_FOLLOW_INT_in_r1115 == null) 
      _FOLLOW_INT_in_r1115 = 
        new BitSet.fromList([0x0000000000040002]);
    return _FOLLOW_INT_in_r1115;
  }

  static BitSet _FOLLOW_18_in_r1118 = null;
  static BitSet get FOLLOW_18_in_r1118() {
    if(_FOLLOW_18_in_r1118 == null) 
      _FOLLOW_18_in_r1118 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_18_in_r1118;
  }

  static BitSet _FOLLOW_INT_in_r1121 = null;
  static BitSet get FOLLOW_INT_in_r1121() {
    if(_FOLLOW_INT_in_r1121 == null) 
      _FOLLOW_INT_in_r1121 = 
        new BitSet.fromList([0x0000000000040002]);
    return _FOLLOW_INT_in_r1121;
  }

  static BitSet _FOLLOW_26_in_r2140 = null;
  static BitSet get FOLLOW_26_in_r2140() {
    if(_FOLLOW_26_in_r2140 == null) 
      _FOLLOW_26_in_r2140 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_26_in_r2140;
  }

  static BitSet _FOLLOW_expression_in_r2145 = null;
  static BitSet get FOLLOW_expression_in_r2145() {
    if(_FOLLOW_expression_in_r2145 == null) 
      _FOLLOW_expression_in_r2145 = 
        new BitSet.fromList([0x0000000000600000]);
    return _FOLLOW_expression_in_r2145;
  }

  static BitSet _FOLLOW_21_in_r2148 = null;
  static BitSet get FOLLOW_21_in_r2148() {
    if(_FOLLOW_21_in_r2148 == null) 
      _FOLLOW_21_in_r2148 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_21_in_r2148;
  }

  static BitSet _FOLLOW_expression_in_r2153 = null;
  static BitSet get FOLLOW_expression_in_r2153() {
    if(_FOLLOW_expression_in_r2153 == null) 
      _FOLLOW_expression_in_r2153 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_expression_in_r2153;
  }

  static BitSet _FOLLOW_22_in_r2157 = null;
  static BitSet get FOLLOW_22_in_r2157() {
    if(_FOLLOW_22_in_r2157 == null) 
      _FOLLOW_22_in_r2157 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r2157;
  }

  static BitSet _FOLLOW_36_in_r3175 = null;
  static BitSet get FOLLOW_36_in_r3175() {
    if(_FOLLOW_36_in_r3175 == null) 
      _FOLLOW_36_in_r3175 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_36_in_r3175;
  }

  static BitSet _FOLLOW_expression_in_r3178 = null;
  static BitSet get FOLLOW_expression_in_r3178() {
    if(_FOLLOW_expression_in_r3178 == null) 
      _FOLLOW_expression_in_r3178 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_expression_in_r3178;
  }

  static BitSet _FOLLOW_statement_in_r3182 = null;
  static BitSet get FOLLOW_statement_in_r3182() {
    if(_FOLLOW_statement_in_r3182 == null) 
      _FOLLOW_statement_in_r3182 = 
        new BitSet.fromList([0x0000000020000002]);
    return _FOLLOW_statement_in_r3182;
  }

  static BitSet _FOLLOW_29_in_r3185 = null;
  static BitSet get FOLLOW_29_in_r3185() {
    if(_FOLLOW_29_in_r3185 == null) 
      _FOLLOW_29_in_r3185 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_29_in_r3185;
  }

  static BitSet _FOLLOW_statement_in_r3190 = null;
  static BitSet get FOLLOW_statement_in_r3190() {
    if(_FOLLOW_statement_in_r3190 == null) 
      _FOLLOW_statement_in_r3190 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r3190;
  }

  static BitSet _FOLLOW_43_in_r4209 = null;
  static BitSet get FOLLOW_43_in_r4209() {
    if(_FOLLOW_43_in_r4209 == null) 
      _FOLLOW_43_in_r4209 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_43_in_r4209;
  }

  static BitSet _FOLLOW_expression_in_r4212 = null;
  static BitSet get FOLLOW_expression_in_r4212() {
    if(_FOLLOW_expression_in_r4212 == null) 
      _FOLLOW_expression_in_r4212 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_expression_in_r4212;
  }

  static BitSet _FOLLOW_statement_in_r4214 = null;
  static BitSet get FOLLOW_statement_in_r4214() {
    if(_FOLLOW_statement_in_r4214 == null) 
      _FOLLOW_statement_in_r4214 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r4214;
  }

  static BitSet _FOLLOW_41_in_r5231 = null;
  static BitSet get FOLLOW_41_in_r5231() {
    if(_FOLLOW_41_in_r5231 == null) 
      _FOLLOW_41_in_r5231 = 
        new BitSet.fromList([0x0000000000401000]);
    return _FOLLOW_41_in_r5231;
  }

  static BitSet _FOLLOW_expression_in_r5234 = null;
  static BitSet get FOLLOW_expression_in_r5234() {
    if(_FOLLOW_expression_in_r5234 == null) 
      _FOLLOW_expression_in_r5234 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_expression_in_r5234;
  }

  static BitSet _FOLLOW_22_in_r5237 = null;
  static BitSet get FOLLOW_22_in_r5237() {
    if(_FOLLOW_22_in_r5237 == null) 
      _FOLLOW_22_in_r5237 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r5237;
  }

  static BitSet _FOLLOW_INT_in_r7277 = null;
  static BitSet get FOLLOW_INT_in_r7277() {
    if(_FOLLOW_INT_in_r7277 == null) 
      _FOLLOW_INT_in_r7277 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_r7277;
  }

  static BitSet _FOLLOW_42_in_r8297 = null;
  static BitSet get FOLLOW_42_in_r8297() {
    if(_FOLLOW_42_in_r8297 == null) 
      _FOLLOW_42_in_r8297 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_42_in_r8297;
  }

  static BitSet _FOLLOW_ID_in_r8299 = null;
  static BitSet get FOLLOW_ID_in_r8299() {
    if(_FOLLOW_ID_in_r8299 == null) 
      _FOLLOW_ID_in_r8299 = 
        new BitSet.fromList([0x0000000000200000]);
    return _FOLLOW_ID_in_r8299;
  }

  static BitSet _FOLLOW_21_in_r8301 = null;
  static BitSet get FOLLOW_21_in_r8301() {
    if(_FOLLOW_21_in_r8301 == null) 
      _FOLLOW_21_in_r8301 = 
        new BitSet.fromList([0x0000004008000000]);
    return _FOLLOW_21_in_r8301;
  }

  static BitSet _FOLLOW_type_in_r8303 = null;
  static BitSet get FOLLOW_type_in_r8303() {
    if(_FOLLOW_type_in_r8303 == null) 
      _FOLLOW_type_in_r8303 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_type_in_r8303;
  }

  static BitSet _FOLLOW_type_in_r9331 = null;
  static BitSet get FOLLOW_type_in_r9331() {
    if(_FOLLOW_type_in_r9331 == null) 
      _FOLLOW_type_in_r9331 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_type_in_r9331;
  }

  static BitSet _FOLLOW_ID_in_r9333 = null;
  static BitSet get FOLLOW_ID_in_r9333() {
    if(_FOLLOW_ID_in_r9333 == null) 
      _FOLLOW_ID_in_r9333 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_ID_in_r9333;
  }

  static BitSet _FOLLOW_22_in_r9335 = null;
  static BitSet get FOLLOW_22_in_r9335() {
    if(_FOLLOW_22_in_r9335 == null) 
      _FOLLOW_22_in_r9335 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r9335;
  }

  static BitSet _FOLLOW_INT_in_r10363 = null;
  static BitSet get FOLLOW_INT_in_r10363() {
    if(_FOLLOW_INT_in_r10363 == null) 
      _FOLLOW_INT_in_r10363 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_r10363;
  }

  static BitSet _FOLLOW_expression_in_r11384 = null;
  static BitSet get FOLLOW_expression_in_r11384() {
    if(_FOLLOW_expression_in_r11384 == null) 
      _FOLLOW_expression_in_r11384 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_r11384;
  }

  static BitSet _FOLLOW_ID_in_r12419 = null;
  static BitSet get FOLLOW_ID_in_r12419() {
    if(_FOLLOW_ID_in_r12419 == null) 
      _FOLLOW_ID_in_r12419 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r12419;
  }

  static BitSet _FOLLOW_19_in_r12422 = null;
  static BitSet get FOLLOW_19_in_r12422() {
    if(_FOLLOW_19_in_r12422 == null) 
      _FOLLOW_19_in_r12422 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r12422;
  }

  static BitSet _FOLLOW_ID_in_r12424 = null;
  static BitSet get FOLLOW_ID_in_r12424() {
    if(_FOLLOW_ID_in_r12424 == null) 
      _FOLLOW_ID_in_r12424 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r12424;
  }

  static BitSet _FOLLOW_type_in_r13448 = null;
  static BitSet get FOLLOW_type_in_r13448() {
    if(_FOLLOW_type_in_r13448 == null) 
      _FOLLOW_type_in_r13448 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_type_in_r13448;
  }

  static BitSet _FOLLOW_ID_in_r13450 = null;
  static BitSet get FOLLOW_ID_in_r13450() {
    if(_FOLLOW_ID_in_r13450 == null) 
      _FOLLOW_ID_in_r13450 = 
        new BitSet.fromList([0x0000000000480000]);
    return _FOLLOW_ID_in_r13450;
  }

  static BitSet _FOLLOW_19_in_r13453 = null;
  static BitSet get FOLLOW_19_in_r13453() {
    if(_FOLLOW_19_in_r13453 == null) 
      _FOLLOW_19_in_r13453 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r13453;
  }

  static BitSet _FOLLOW_ID_in_r13455 = null;
  static BitSet get FOLLOW_ID_in_r13455() {
    if(_FOLLOW_ID_in_r13455 == null) 
      _FOLLOW_ID_in_r13455 = 
        new BitSet.fromList([0x0000000000480000]);
    return _FOLLOW_ID_in_r13455;
  }

  static BitSet _FOLLOW_22_in_r13459 = null;
  static BitSet get FOLLOW_22_in_r13459() {
    if(_FOLLOW_22_in_r13459 == null) 
      _FOLLOW_22_in_r13459 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r13459;
  }

  static BitSet _FOLLOW_expression_in_r14487 = null;
  static BitSet get FOLLOW_expression_in_r14487() {
    if(_FOLLOW_expression_in_r14487 == null) 
      _FOLLOW_expression_in_r14487 = 
        new BitSet.fromList([0x0000004608000000]);
    return _FOLLOW_expression_in_r14487;
  }

  static BitSet _FOLLOW_statement_in_r14490 = null;
  static BitSet get FOLLOW_statement_in_r14490() {
    if(_FOLLOW_statement_in_r14490 == null) 
      _FOLLOW_statement_in_r14490 = 
        new BitSet.fromList([0x0000004608000000]);
    return _FOLLOW_statement_in_r14490;
  }

  static BitSet _FOLLOW_type_in_r14493 = null;
  static BitSet get FOLLOW_type_in_r14493() {
    if(_FOLLOW_type_in_r14493 == null) 
      _FOLLOW_type_in_r14493 = 
        new BitSet.fromList([0x0000004008000002]);
    return _FOLLOW_type_in_r14493;
  }

  static BitSet _FOLLOW_INT_in_r15534 = null;
  static BitSet get FOLLOW_INT_in_r15534() {
    if(_FOLLOW_INT_in_r15534 == null) 
      _FOLLOW_INT_in_r15534 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_r15534;
  }

  static BitSet _FOLLOW_38_in_r16557 = null;
  static BitSet get FOLLOW_38_in_r16557() {
    if(_FOLLOW_38_in_r16557 == null) 
      _FOLLOW_38_in_r16557 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_38_in_r16557;
  }

  static BitSet _FOLLOW_ID_in_r16559 = null;
  static BitSet get FOLLOW_ID_in_r16559() {
    if(_FOLLOW_ID_in_r16559 == null) 
      _FOLLOW_ID_in_r16559 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r16559;
  }

  static BitSet _FOLLOW_19_in_r16562 = null;
  static BitSet get FOLLOW_19_in_r16562() {
    if(_FOLLOW_19_in_r16562 == null) 
      _FOLLOW_19_in_r16562 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r16562;
  }

  static BitSet _FOLLOW_ID_in_r16564 = null;
  static BitSet get FOLLOW_ID_in_r16564() {
    if(_FOLLOW_ID_in_r16564 == null) 
      _FOLLOW_ID_in_r16564 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r16564;
  }

  static BitSet _FOLLOW_35_in_r17592 = null;
  static BitSet get FOLLOW_35_in_r17592() {
    if(_FOLLOW_35_in_r17592 == null) 
      _FOLLOW_35_in_r17592 = 
        new BitSet.fromList([0x0000000000010000]);
    return _FOLLOW_35_in_r17592;
  }

  static BitSet _FOLLOW_16_in_r17594 = null;
  static BitSet get FOLLOW_16_in_r17594() {
    if(_FOLLOW_16_in_r17594 == null) 
      _FOLLOW_16_in_r17594 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_16_in_r17594;
  }

  static BitSet _FOLLOW_statement_in_r17598 = null;
  static BitSet get FOLLOW_statement_in_r17598() {
    if(_FOLLOW_statement_in_r17598 == null) 
      _FOLLOW_statement_in_r17598 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_statement_in_r17598;
  }

  static BitSet _FOLLOW_22_in_r17600 = null;
  static BitSet get FOLLOW_22_in_r17600() {
    if(_FOLLOW_22_in_r17600 == null) 
      _FOLLOW_22_in_r17600 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_22_in_r17600;
  }

  static BitSet _FOLLOW_expression_in_r17602 = null;
  static BitSet get FOLLOW_expression_in_r17602() {
    if(_FOLLOW_expression_in_r17602 == null) 
      _FOLLOW_expression_in_r17602 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_expression_in_r17602;
  }

  static BitSet _FOLLOW_22_in_r17604 = null;
  static BitSet get FOLLOW_22_in_r17604() {
    if(_FOLLOW_22_in_r17604 == null) 
      _FOLLOW_22_in_r17604 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_22_in_r17604;
  }

  static BitSet _FOLLOW_statement_in_r17608 = null;
  static BitSet get FOLLOW_statement_in_r17608() {
    if(_FOLLOW_statement_in_r17608 == null) 
      _FOLLOW_statement_in_r17608 = 
        new BitSet.fromList([0x0000000000020000]);
    return _FOLLOW_statement_in_r17608;
  }

  static BitSet _FOLLOW_17_in_r17610 = null;
  static BitSet get FOLLOW_17_in_r17610() {
    if(_FOLLOW_17_in_r17610 == null) 
      _FOLLOW_17_in_r17610 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_17_in_r17610;
  }

  static BitSet _FOLLOW_statement_in_r17612 = null;
  static BitSet get FOLLOW_statement_in_r17612() {
    if(_FOLLOW_statement_in_r17612 == null) 
      _FOLLOW_statement_in_r17612 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r17612;
  }

  static BitSet _FOLLOW_35_in_r18655 = null;
  static BitSet get FOLLOW_35_in_r18655() {
    if(_FOLLOW_35_in_r18655 == null) 
      _FOLLOW_35_in_r18655 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_35_in_r18655;
  }

  static BitSet _FOLLOW_35_in_r19680 = null;
  static BitSet get FOLLOW_35_in_r19680() {
    if(_FOLLOW_35_in_r19680 == null) 
      _FOLLOW_35_in_r19680 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_35_in_r19680;
  }

  static BitSet _FOLLOW_35_in_r20706 = null;
  static BitSet get FOLLOW_35_in_r20706() {
    if(_FOLLOW_35_in_r20706 == null) 
      _FOLLOW_35_in_r20706 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_35_in_r20706;
  }

  static BitSet _FOLLOW_35_in_r21732 = null;
  static BitSet get FOLLOW_35_in_r21732() {
    if(_FOLLOW_35_in_r21732 == null) 
      _FOLLOW_35_in_r21732 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_35_in_r21732;
  }

  static BitSet _FOLLOW_35_in_r22755 = null;
  static BitSet get FOLLOW_35_in_r22755() {
    if(_FOLLOW_35_in_r22755 == null) 
      _FOLLOW_35_in_r22755 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_35_in_r22755;
  }

  static BitSet _FOLLOW_35_in_r23779 = null;
  static BitSet get FOLLOW_35_in_r23779() {
    if(_FOLLOW_35_in_r23779 == null) 
      _FOLLOW_35_in_r23779 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_35_in_r23779;
  }

  static BitSet _FOLLOW_statement_in_r24803 = null;
  static BitSet get FOLLOW_statement_in_r24803() {
    if(_FOLLOW_statement_in_r24803 == null) 
      _FOLLOW_statement_in_r24803 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_statement_in_r24803;
  }

  static BitSet _FOLLOW_expression_in_r24805 = null;
  static BitSet get FOLLOW_expression_in_r24805() {
    if(_FOLLOW_expression_in_r24805 == null) 
      _FOLLOW_expression_in_r24805 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_r24805;
  }

  static BitSet _FOLLOW_statement_in_r25833 = null;
  static BitSet get FOLLOW_statement_in_r25833() {
    if(_FOLLOW_statement_in_r25833 == null) 
      _FOLLOW_statement_in_r25833 = 
        new BitSet.fromList([0x0000000000080000]);
    return _FOLLOW_statement_in_r25833;
  }

  static BitSet _FOLLOW_19_in_r25836 = null;
  static BitSet get FOLLOW_19_in_r25836() {
    if(_FOLLOW_19_in_r25836 == null) 
      _FOLLOW_19_in_r25836 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_19_in_r25836;
  }

  static BitSet _FOLLOW_statement_in_r25840 = null;
  static BitSet get FOLLOW_statement_in_r25840() {
    if(_FOLLOW_statement_in_r25840 == null) 
      _FOLLOW_statement_in_r25840 = 
        new BitSet.fromList([0x0000000000081000]);
    return _FOLLOW_statement_in_r25840;
  }

  static BitSet _FOLLOW_expression_in_r25844 = null;
  static BitSet get FOLLOW_expression_in_r25844() {
    if(_FOLLOW_expression_in_r25844 == null) 
      _FOLLOW_expression_in_r25844 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_r25844;
  }

  static BitSet _FOLLOW_statement_in_r26872 = null;
  static BitSet get FOLLOW_statement_in_r26872() {
    if(_FOLLOW_statement_in_r26872 == null) 
      _FOLLOW_statement_in_r26872 = 
        new BitSet.fromList([0x0000000000080000]);
    return _FOLLOW_statement_in_r26872;
  }

  static BitSet _FOLLOW_19_in_r26875 = null;
  static BitSet get FOLLOW_19_in_r26875() {
    if(_FOLLOW_19_in_r26875 == null) 
      _FOLLOW_19_in_r26875 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_19_in_r26875;
  }

  static BitSet _FOLLOW_statement_in_r26879 = null;
  static BitSet get FOLLOW_statement_in_r26879() {
    if(_FOLLOW_statement_in_r26879 == null) 
      _FOLLOW_statement_in_r26879 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_statement_in_r26879;
  }

  static BitSet _FOLLOW_statement_in_r27910 = null;
  static BitSet get FOLLOW_statement_in_r27910() {
    if(_FOLLOW_statement_in_r27910 == null) 
      _FOLLOW_statement_in_r27910 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_statement_in_r27910;
  }

  static BitSet _FOLLOW_expression_in_r27912 = null;
  static BitSet get FOLLOW_expression_in_r27912() {
    if(_FOLLOW_expression_in_r27912 == null) 
      _FOLLOW_expression_in_r27912 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_r27912;
  }

  static BitSet _FOLLOW_31_in_r28944 = null;
  static BitSet get FOLLOW_31_in_r28944() {
    if(_FOLLOW_31_in_r28944 == null) 
      _FOLLOW_31_in_r28944 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_r28944;
  }

  static BitSet _FOLLOW_32_in_r28946 = null;
  static BitSet get FOLLOW_32_in_r28946() {
    if(_FOLLOW_32_in_r28946 == null) 
      _FOLLOW_32_in_r28946 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_32_in_r28946;
  }

  static BitSet _FOLLOW_statement_in_r29969 = null;
  static BitSet get FOLLOW_statement_in_r29969() {
    if(_FOLLOW_statement_in_r29969 == null) 
      _FOLLOW_statement_in_r29969 = 
        new BitSet.fromList([0x0000000600000002]);
    return _FOLLOW_statement_in_r29969;
  }

  static BitSet _FOLLOW_statement_in_r30998 = null;
  static BitSet get FOLLOW_statement_in_r30998() {
    if(_FOLLOW_statement_in_r30998 == null) 
      _FOLLOW_statement_in_r30998 = 
        new BitSet.fromList([0x0000000600000002]);
    return _FOLLOW_statement_in_r30998;
  }

  static BitSet _FOLLOW_modifier_in_r311025 = null;
  static BitSet get FOLLOW_modifier_in_r311025() {
    if(_FOLLOW_modifier_in_r311025 == null) 
      _FOLLOW_modifier_in_r311025 = 
        new BitSet.fromList([0x0000004008000000]);
    return _FOLLOW_modifier_in_r311025;
  }

  static BitSet _FOLLOW_type_in_r311027 = null;
  static BitSet get FOLLOW_type_in_r311027() {
    if(_FOLLOW_type_in_r311027 == null) 
      _FOLLOW_type_in_r311027 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_type_in_r311027;
  }

  static BitSet _FOLLOW_ID_in_r311029 = null;
  static BitSet get FOLLOW_ID_in_r311029() {
    if(_FOLLOW_ID_in_r311029 == null) 
      _FOLLOW_ID_in_r311029 = 
        new BitSet.fromList([0x0000000000C00000]);
    return _FOLLOW_ID_in_r311029;
  }

  static BitSet _FOLLOW_23_in_r311032 = null;
  static BitSet get FOLLOW_23_in_r311032() {
    if(_FOLLOW_23_in_r311032 == null) 
      _FOLLOW_23_in_r311032 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_23_in_r311032;
  }

  static BitSet _FOLLOW_expression_in_r311034 = null;
  static BitSet get FOLLOW_expression_in_r311034() {
    if(_FOLLOW_expression_in_r311034 == null) 
      _FOLLOW_expression_in_r311034 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_expression_in_r311034;
  }

  static BitSet _FOLLOW_22_in_r311038 = null;
  static BitSet get FOLLOW_22_in_r311038() {
    if(_FOLLOW_22_in_r311038 == null) 
      _FOLLOW_22_in_r311038 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r311038;
  }

  static BitSet _FOLLOW_ID_in_r321148 = null;
  static BitSet get FOLLOW_ID_in_r321148() {
    if(_FOLLOW_ID_in_r321148 == null) 
      _FOLLOW_ID_in_r321148 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_ID_in_r321148;
  }

  static BitSet _FOLLOW_INT_in_r321150 = null;
  static BitSet get FOLLOW_INT_in_r321150() {
    if(_FOLLOW_INT_in_r321150 == null) 
      _FOLLOW_INT_in_r321150 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_r321150;
  }

  static BitSet _FOLLOW_modifiers_in_r331204 = null;
  static BitSet get FOLLOW_modifiers_in_r331204() {
    if(_FOLLOW_modifiers_in_r331204 == null) 
      _FOLLOW_modifiers_in_r331204 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_modifiers_in_r331204;
  }

  static BitSet _FOLLOW_statement_in_r331207 = null;
  static BitSet get FOLLOW_statement_in_r331207() {
    if(_FOLLOW_statement_in_r331207 == null) 
      _FOLLOW_statement_in_r331207 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r331207;
  }

  static BitSet _FOLLOW_modifiers_in_r341226 = null;
  static BitSet get FOLLOW_modifiers_in_r341226() {
    if(_FOLLOW_modifiers_in_r341226 == null) 
      _FOLLOW_modifiers_in_r341226 = 
        new BitSet.fromList([0x0000000010000000]);
    return _FOLLOW_modifiers_in_r341226;
  }

  static BitSet _FOLLOW_r34a_in_r341229 = null;
  static BitSet get FOLLOW_r34a_in_r341229() {
    if(_FOLLOW_r34a_in_r341229 == null) 
      _FOLLOW_r34a_in_r341229 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_r34a_in_r341229;
  }

  static BitSet _FOLLOW_28_in_r34a1255 = null;
  static BitSet get FOLLOW_28_in_r34a1255() {
    if(_FOLLOW_28_in_r34a1255 == null) 
      _FOLLOW_28_in_r34a1255 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_28_in_r34a1255;
  }

  static BitSet _FOLLOW_ID_in_r34a1257 = null;
  static BitSet get FOLLOW_ID_in_r34a1257() {
    if(_FOLLOW_ID_in_r34a1257 == null) 
      _FOLLOW_ID_in_r34a1257 = 
        new BitSet.fromList([0x0000102040000000]);
    return _FOLLOW_ID_in_r34a1257;
  }

  static BitSet _FOLLOW_30_in_r34a1260 = null;
  static BitSet get FOLLOW_30_in_r34a1260() {
    if(_FOLLOW_30_in_r34a1260 == null) 
      _FOLLOW_30_in_r34a1260 = 
        new BitSet.fromList([0x0000004008000000]);
    return _FOLLOW_30_in_r34a1260;
  }

  static BitSet _FOLLOW_type_in_r34a1264 = null;
  static BitSet get FOLLOW_type_in_r34a1264() {
    if(_FOLLOW_type_in_r34a1264 == null) 
      _FOLLOW_type_in_r34a1264 = 
        new BitSet.fromList([0x0000102000000000]);
    return _FOLLOW_type_in_r34a1264;
  }

  static BitSet _FOLLOW_37_in_r34a1278 = null;
  static BitSet get FOLLOW_37_in_r34a1278() {
    if(_FOLLOW_37_in_r34a1278 == null) 
      _FOLLOW_37_in_r34a1278 = 
        new BitSet.fromList([0x0000004008000000]);
    return _FOLLOW_37_in_r34a1278;
  }

  static BitSet _FOLLOW_type_in_r34a1282 = null;
  static BitSet get FOLLOW_type_in_r34a1282() {
    if(_FOLLOW_type_in_r34a1282 == null) 
      _FOLLOW_type_in_r34a1282 = 
        new BitSet.fromList([0x0000100000080000]);
    return _FOLLOW_type_in_r34a1282;
  }

  static BitSet _FOLLOW_19_in_r34a1285 = null;
  static BitSet get FOLLOW_19_in_r34a1285() {
    if(_FOLLOW_19_in_r34a1285 == null) 
      _FOLLOW_19_in_r34a1285 = 
        new BitSet.fromList([0x0000004008000000]);
    return _FOLLOW_19_in_r34a1285;
  }

  static BitSet _FOLLOW_type_in_r34a1289 = null;
  static BitSet get FOLLOW_type_in_r34a1289() {
    if(_FOLLOW_type_in_r34a1289 == null) 
      _FOLLOW_type_in_r34a1289 = 
        new BitSet.fromList([0x0000100000080000]);
    return _FOLLOW_type_in_r34a1289;
  }

  static BitSet _FOLLOW_44_in_r34a1303 = null;
  static BitSet get FOLLOW_44_in_r34a1303() {
    if(_FOLLOW_44_in_r34a1303 == null) 
      _FOLLOW_44_in_r34a1303 = 
        new BitSet.fromList([0x0000200600000000]);
    return _FOLLOW_44_in_r34a1303;
  }

  static BitSet _FOLLOW_statement_in_r34a1305 = null;
  static BitSet get FOLLOW_statement_in_r34a1305() {
    if(_FOLLOW_statement_in_r34a1305 == null) 
      _FOLLOW_statement_in_r34a1305 = 
        new BitSet.fromList([0x0000200600000000]);
    return _FOLLOW_statement_in_r34a1305;
  }

  static BitSet _FOLLOW_45_in_r34a1308 = null;
  static BitSet get FOLLOW_45_in_r34a1308() {
    if(_FOLLOW_45_in_r34a1308 == null) 
      _FOLLOW_45_in_r34a1308 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_45_in_r34a1308;
  }

  static BitSet _FOLLOW_44_in_r351364 = null;
  static BitSet get FOLLOW_44_in_r351364() {
    if(_FOLLOW_44_in_r351364 == null) 
      _FOLLOW_44_in_r351364 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_44_in_r351364;
  }

  static BitSet _FOLLOW_30_in_r351366 = null;
  static BitSet get FOLLOW_30_in_r351366() {
    if(_FOLLOW_30_in_r351366 == null) 
      _FOLLOW_30_in_r351366 = 
        new BitSet.fromList([0x0000204008000000]);
    return _FOLLOW_30_in_r351366;
  }

  static BitSet _FOLLOW_type_in_r351371 = null;
  static BitSet get FOLLOW_type_in_r351371() {
    if(_FOLLOW_type_in_r351371 == null) 
      _FOLLOW_type_in_r351371 = 
        new BitSet.fromList([0x0000200000000000]);
    return _FOLLOW_type_in_r351371;
  }

  static BitSet _FOLLOW_45_in_r351375 = null;
  static BitSet get FOLLOW_45_in_r351375() {
    if(_FOLLOW_45_in_r351375 == null) 
      _FOLLOW_45_in_r351375 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_45_in_r351375;
  }

  static BitSet _FOLLOW_36_in_r361411 = null;
  static BitSet get FOLLOW_36_in_r361411() {
    if(_FOLLOW_36_in_r361411 == null) 
      _FOLLOW_36_in_r361411 = 
        new BitSet.fromList([0x0000000000010000]);
    return _FOLLOW_36_in_r361411;
  }

  static BitSet _FOLLOW_16_in_r361413 = null;
  static BitSet get FOLLOW_16_in_r361413() {
    if(_FOLLOW_16_in_r361413 == null) 
      _FOLLOW_16_in_r361413 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_16_in_r361413;
  }

  static BitSet _FOLLOW_expression_in_r361415 = null;
  static BitSet get FOLLOW_expression_in_r361415() {
    if(_FOLLOW_expression_in_r361415 == null) 
      _FOLLOW_expression_in_r361415 = 
        new BitSet.fromList([0x0000000000020000]);
    return _FOLLOW_expression_in_r361415;
  }

  static BitSet _FOLLOW_17_in_r361417 = null;
  static BitSet get FOLLOW_17_in_r361417() {
    if(_FOLLOW_17_in_r361417 == null) 
      _FOLLOW_17_in_r361417 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_17_in_r361417;
  }

  static BitSet _FOLLOW_statement_in_r361421 = null;
  static BitSet get FOLLOW_statement_in_r361421() {
    if(_FOLLOW_statement_in_r361421 == null) 
      _FOLLOW_statement_in_r361421 = 
        new BitSet.fromList([0x0000000020000002]);
    return _FOLLOW_statement_in_r361421;
  }

  static BitSet _FOLLOW_29_in_r361433 = null;
  static BitSet get FOLLOW_29_in_r361433() {
    if(_FOLLOW_29_in_r361433 == null) 
      _FOLLOW_29_in_r361433 = 
        new BitSet.fromList([0x0000000600000000]);
    return _FOLLOW_29_in_r361433;
  }

  static BitSet _FOLLOW_statement_in_r361437 = null;
  static BitSet get FOLLOW_statement_in_r361437() {
    if(_FOLLOW_statement_in_r361437 == null) 
      _FOLLOW_statement_in_r361437 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r361437;
  }

  static BitSet _FOLLOW_INT_in_r371528 = null;
  static BitSet get FOLLOW_INT_in_r371528() {
    if(_FOLLOW_INT_in_r371528 == null) 
      _FOLLOW_INT_in_r371528 = 
        new BitSet.fromList([0x0000000000040002]);
    return _FOLLOW_INT_in_r371528;
  }

  static BitSet _FOLLOW_18_in_r371536 = null;
  static BitSet get FOLLOW_18_in_r371536() {
    if(_FOLLOW_18_in_r371536 == null) 
      _FOLLOW_18_in_r371536 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_18_in_r371536;
  }

  static BitSet _FOLLOW_INT_in_r371540 = null;
  static BitSet get FOLLOW_INT_in_r371540() {
    if(_FOLLOW_INT_in_r371540 == null) 
      _FOLLOW_INT_in_r371540 = 
        new BitSet.fromList([0x0000000000040002]);
    return _FOLLOW_INT_in_r371540;
  }

  static BitSet _FOLLOW_INT_in_r381573 = null;
  static BitSet get FOLLOW_INT_in_r381573() {
    if(_FOLLOW_INT_in_r381573 == null) 
      _FOLLOW_INT_in_r381573 = 
        new BitSet.fromList([0x0000000000040002]);
    return _FOLLOW_INT_in_r381573;
  }

  static BitSet _FOLLOW_18_in_r381576 = null;
  static BitSet get FOLLOW_18_in_r381576() {
    if(_FOLLOW_18_in_r381576 == null) 
      _FOLLOW_18_in_r381576 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_18_in_r381576;
  }

  static BitSet _FOLLOW_INT_in_r381579 = null;
  static BitSet get FOLLOW_INT_in_r381579() {
    if(_FOLLOW_INT_in_r381579 == null) 
      _FOLLOW_INT_in_r381579 = 
        new BitSet.fromList([0x0000000000040002]);
    return _FOLLOW_INT_in_r381579;
  }

  static BitSet _FOLLOW_primary_in_r391599 = null;
  static BitSet get FOLLOW_primary_in_r391599() {
    if(_FOLLOW_primary_in_r391599 == null) 
      _FOLLOW_primary_in_r391599 = 
        new BitSet.fromList([0x0000000001110002]);
    return _FOLLOW_primary_in_r391599;
  }

  static BitSet _FOLLOW_16_in_r391615 = null;
  static BitSet get FOLLOW_16_in_r391615() {
    if(_FOLLOW_16_in_r391615 == null) 
      _FOLLOW_16_in_r391615 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_16_in_r391615;
  }

  static BitSet _FOLLOW_expression_in_r391619 = null;
  static BitSet get FOLLOW_expression_in_r391619() {
    if(_FOLLOW_expression_in_r391619 == null) 
      _FOLLOW_expression_in_r391619 = 
        new BitSet.fromList([0x0000000000020000]);
    return _FOLLOW_expression_in_r391619;
  }

  static BitSet _FOLLOW_17_in_r391621 = null;
  static BitSet get FOLLOW_17_in_r391621() {
    if(_FOLLOW_17_in_r391621 == null) 
      _FOLLOW_17_in_r391621 = 
        new BitSet.fromList([0x0000000001110002]);
    return _FOLLOW_17_in_r391621;
  }

  static BitSet _FOLLOW_24_in_r391657 = null;
  static BitSet get FOLLOW_24_in_r391657() {
    if(_FOLLOW_24_in_r391657 == null) 
      _FOLLOW_24_in_r391657 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_24_in_r391657;
  }

  static BitSet _FOLLOW_expression_in_r391661 = null;
  static BitSet get FOLLOW_expression_in_r391661() {
    if(_FOLLOW_expression_in_r391661 == null) 
      _FOLLOW_expression_in_r391661 = 
        new BitSet.fromList([0x0000000002000000]);
    return _FOLLOW_expression_in_r391661;
  }

  static BitSet _FOLLOW_25_in_r391663 = null;
  static BitSet get FOLLOW_25_in_r391663() {
    if(_FOLLOW_25_in_r391663 == null) 
      _FOLLOW_25_in_r391663 = 
        new BitSet.fromList([0x0000000001110002]);
    return _FOLLOW_25_in_r391663;
  }

  static BitSet _FOLLOW_20_in_r391699 = null;
  static BitSet get FOLLOW_20_in_r391699() {
    if(_FOLLOW_20_in_r391699 == null) 
      _FOLLOW_20_in_r391699 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_20_in_r391699;
  }

  static BitSet _FOLLOW_primary_in_r391703 = null;
  static BitSet get FOLLOW_primary_in_r391703() {
    if(_FOLLOW_primary_in_r391703 == null) 
      _FOLLOW_primary_in_r391703 = 
        new BitSet.fromList([0x0000000001110002]);
    return _FOLLOW_primary_in_r391703;
  }

  static BitSet _FOLLOW_INT_in_r401756 = null;
  static BitSet get FOLLOW_INT_in_r401756() {
    if(_FOLLOW_INT_in_r401756 == null) 
      _FOLLOW_INT_in_r401756 = 
        new BitSet.fromList([0x0000000000440000]);
    return _FOLLOW_INT_in_r401756;
  }

  static BitSet _FOLLOW_18_in_r401766 = null;
  static BitSet get FOLLOW_18_in_r401766() {
    if(_FOLLOW_18_in_r401766 == null) 
      _FOLLOW_18_in_r401766 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_18_in_r401766;
  }

  static BitSet _FOLLOW_INT_in_r401770 = null;
  static BitSet get FOLLOW_INT_in_r401770() {
    if(_FOLLOW_INT_in_r401770 == null) 
      _FOLLOW_INT_in_r401770 = 
        new BitSet.fromList([0x0000000000440000]);
    return _FOLLOW_INT_in_r401770;
  }

  static BitSet _FOLLOW_22_in_r401789 = null;
  static BitSet get FOLLOW_22_in_r401789() {
    if(_FOLLOW_22_in_r401789 == null) 
      _FOLLOW_22_in_r401789 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r401789;
  }

  static BitSet _FOLLOW_INT_in_r411807 = null;
  static BitSet get FOLLOW_INT_in_r411807() {
    if(_FOLLOW_INT_in_r411807 == null) 
      _FOLLOW_INT_in_r411807 = 
        new BitSet.fromList([0x0000000000440000]);
    return _FOLLOW_INT_in_r411807;
  }

  static BitSet _FOLLOW_18_in_r411817 = null;
  static BitSet get FOLLOW_18_in_r411817() {
    if(_FOLLOW_18_in_r411817 == null) 
      _FOLLOW_18_in_r411817 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_18_in_r411817;
  }

  static BitSet _FOLLOW_INT_in_r411821 = null;
  static BitSet get FOLLOW_INT_in_r411821() {
    if(_FOLLOW_INT_in_r411821 == null) 
      _FOLLOW_INT_in_r411821 = 
        new BitSet.fromList([0x0000000000440000]);
    return _FOLLOW_INT_in_r411821;
  }

  static BitSet _FOLLOW_22_in_r411837 = null;
  static BitSet get FOLLOW_22_in_r411837() {
    if(_FOLLOW_22_in_r411837 == null) 
      _FOLLOW_22_in_r411837 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_r411837;
  }

  static BitSet _FOLLOW_ID_in_r421856 = null;
  static BitSet get FOLLOW_ID_in_r421856() {
    if(_FOLLOW_ID_in_r421856 == null) 
      _FOLLOW_ID_in_r421856 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r421856;
  }

  static BitSet _FOLLOW_19_in_r421859 = null;
  static BitSet get FOLLOW_19_in_r421859() {
    if(_FOLLOW_19_in_r421859 == null) 
      _FOLLOW_19_in_r421859 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r421859;
  }

  static BitSet _FOLLOW_ID_in_r421864 = null;
  static BitSet get FOLLOW_ID_in_r421864() {
    if(_FOLLOW_ID_in_r421864 == null) 
      _FOLLOW_ID_in_r421864 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r421864;
  }

  static BitSet _FOLLOW_ID_in_r431889 = null;
  static BitSet get FOLLOW_ID_in_r431889() {
    if(_FOLLOW_ID_in_r431889 == null) 
      _FOLLOW_ID_in_r431889 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r431889;
  }

  static BitSet _FOLLOW_19_in_r431893 = null;
  static BitSet get FOLLOW_19_in_r431893() {
    if(_FOLLOW_19_in_r431893 == null) 
      _FOLLOW_19_in_r431893 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r431893;
  }

  static BitSet _FOLLOW_ID_in_r431898 = null;
  static BitSet get FOLLOW_ID_in_r431898() {
    if(_FOLLOW_ID_in_r431898 == null) 
      _FOLLOW_ID_in_r431898 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r431898;
  }

  static BitSet _FOLLOW_ID_in_r441922 = null;
  static BitSet get FOLLOW_ID_in_r441922() {
    if(_FOLLOW_ID_in_r441922 == null) 
      _FOLLOW_ID_in_r441922 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r441922;
  }

  static BitSet _FOLLOW_19_in_r441926 = null;
  static BitSet get FOLLOW_19_in_r441926() {
    if(_FOLLOW_19_in_r441926 == null) 
      _FOLLOW_19_in_r441926 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r441926;
  }

  static BitSet _FOLLOW_ID_in_r441931 = null;
  static BitSet get FOLLOW_ID_in_r441931() {
    if(_FOLLOW_ID_in_r441931 == null) 
      _FOLLOW_ID_in_r441931 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_ID_in_r441931;
  }

  static BitSet _FOLLOW_primary_in_r451951 = null;
  static BitSet get FOLLOW_primary_in_r451951() {
    if(_FOLLOW_primary_in_r451951 == null) 
      _FOLLOW_primary_in_r451951 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_primary_in_r451951;
  }

  static BitSet _FOLLOW_primary_in_r461975 = null;
  static BitSet get FOLLOW_primary_in_r461975() {
    if(_FOLLOW_primary_in_r461975 == null) 
      _FOLLOW_primary_in_r461975 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_primary_in_r461975;
  }

  static BitSet _FOLLOW_19_in_r461979 = null;
  static BitSet get FOLLOW_19_in_r461979() {
    if(_FOLLOW_19_in_r461979 == null) 
      _FOLLOW_19_in_r461979 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r461979;
  }

  static BitSet _FOLLOW_primary_in_r461984 = null;
  static BitSet get FOLLOW_primary_in_r461984() {
    if(_FOLLOW_primary_in_r461984 == null) 
      _FOLLOW_primary_in_r461984 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_primary_in_r461984;
  }

  static BitSet _FOLLOW_primary_in_r472008 = null;
  static BitSet get FOLLOW_primary_in_r472008() {
    if(_FOLLOW_primary_in_r472008 == null) 
      _FOLLOW_primary_in_r472008 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_primary_in_r472008;
  }

  static BitSet _FOLLOW_19_in_r472011 = null;
  static BitSet get FOLLOW_19_in_r472011() {
    if(_FOLLOW_19_in_r472011 == null) 
      _FOLLOW_19_in_r472011 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_19_in_r472011;
  }

  static BitSet _FOLLOW_primary_in_r472016 = null;
  static BitSet get FOLLOW_primary_in_r472016() {
    if(_FOLLOW_primary_in_r472016 == null) 
      _FOLLOW_primary_in_r472016 = 
        new BitSet.fromList([0x0000000000080002]);
    return _FOLLOW_primary_in_r472016;
  }

  static BitSet _FOLLOW_19_in_r482040 = null;
  static BitSet get FOLLOW_19_in_r482040() {
    if(_FOLLOW_19_in_r482040 == null) 
      _FOLLOW_19_in_r482040 = 
        new BitSet.fromList([0x00003FFFFFFFFFF0]);
    return _FOLLOW_19_in_r482040;
  }

  static BitSet _FOLLOW_ID_in_r492067 = null;
  static BitSet get FOLLOW_ID_in_r492067() {
    if(_FOLLOW_ID_in_r492067 == null) 
      _FOLLOW_ID_in_r492067 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_r492067;
  }

  static BitSet _FOLLOW_ID_in_r502084 = null;
  static BitSet get FOLLOW_ID_in_r502084() {
    if(_FOLLOW_ID_in_r502084 == null) 
      _FOLLOW_ID_in_r502084 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_r502084;
  }

  static BitSet _FOLLOW_ID_in_r512124 = null;
  static BitSet get FOLLOW_ID_in_r512124() {
    if(_FOLLOW_ID_in_r512124 == null) 
      _FOLLOW_ID_in_r512124 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_ID_in_r512124;
  }

  static BitSet _FOLLOW_ID_in_r512128 = null;
  static BitSet get FOLLOW_ID_in_r512128() {
    if(_FOLLOW_ID_in_r512128 == null) 
      _FOLLOW_ID_in_r512128 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_ID_in_r512128;
  }

  static BitSet _FOLLOW_ID_in_r512130 = null;
  static BitSet get FOLLOW_ID_in_r512130() {
    if(_FOLLOW_ID_in_r512130 == null) 
      _FOLLOW_ID_in_r512130 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_r512130;
  }

  static BitSet _FOLLOW_ID_in_r522168 = null;
  static BitSet get FOLLOW_ID_in_r522168() {
    if(_FOLLOW_ID_in_r522168 == null) 
      _FOLLOW_ID_in_r522168 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_r522168;
  }

  static BitSet _FOLLOW_primary_in_r532193 = null;
  static BitSet get FOLLOW_primary_in_r532193() {
    if(_FOLLOW_primary_in_r532193 == null) 
      _FOLLOW_primary_in_r532193 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_primary_in_r532193;
  }

  static BitSet _FOLLOW_ID_in_r542231 = null;
  static BitSet get FOLLOW_ID_in_r542231() {
    if(_FOLLOW_ID_in_r542231 == null) 
      _FOLLOW_ID_in_r542231 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_ID_in_r542231;
  }

  static BitSet _FOLLOW_expression_in_r542235 = null;
  static BitSet get FOLLOW_expression_in_r542235() {
    if(_FOLLOW_expression_in_r542235 == null) 
      _FOLLOW_expression_in_r542235 = 
        new BitSet.fromList([0x0000000000000400]);
    return _FOLLOW_expression_in_r542235;
  }

  static BitSet _FOLLOW_ID_in_r542237 = null;
  static BitSet get FOLLOW_ID_in_r542237() {
    if(_FOLLOW_ID_in_r542237 == null) 
      _FOLLOW_ID_in_r542237 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_r542237;
  }

  static BitSet _FOLLOW_modifier_in_r552278 = null;
  static BitSet get FOLLOW_modifier_in_r552278() {
    if(_FOLLOW_modifier_in_r552278 == null) 
      _FOLLOW_modifier_in_r552278 = 
        new BitSet.fromList([0x0000018000001000]);
    return _FOLLOW_modifier_in_r552278;
  }

  static BitSet _FOLLOW_expression_in_r552281 = null;
  static BitSet get FOLLOW_expression_in_r552281() {
    if(_FOLLOW_expression_in_r552281 == null) 
      _FOLLOW_expression_in_r552281 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_r552281;
  }

  static BitSet _FOLLOW_modifier_in_r552289 = null;
  static BitSet get FOLLOW_modifier_in_r552289() {
    if(_FOLLOW_modifier_in_r552289 == null) 
      _FOLLOW_modifier_in_r552289 = 
        new BitSet.fromList([0x0000018600000000]);
    return _FOLLOW_modifier_in_r552289;
  }

  static BitSet _FOLLOW_statement_in_r552292 = null;
  static BitSet get FOLLOW_statement_in_r552292() {
    if(_FOLLOW_statement_in_r552292 == null) 
      _FOLLOW_statement_in_r552292 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r552292;
  }

  static BitSet _FOLLOW_ID_in_r562314 = null;
  static BitSet get FOLLOW_ID_in_r562314() {
    if(_FOLLOW_ID_in_r562314 == null) 
      _FOLLOW_ID_in_r562314 = 
        new BitSet.fromList([0x0000000000000402]);
    return _FOLLOW_ID_in_r562314;
  }

  static BitSet _FOLLOW_ID_in_r572341 = null;
  static BitSet get FOLLOW_ID_in_r572341() {
    if(_FOLLOW_ID_in_r572341 == null) 
      _FOLLOW_ID_in_r572341 = 
        new BitSet.fromList([0x0000000000000402]);
    return _FOLLOW_ID_in_r572341;
  }

  static BitSet _FOLLOW_ID_in_r592393 = null;
  static BitSet get FOLLOW_ID_in_r592393() {
    if(_FOLLOW_ID_in_r592393 == null) 
      _FOLLOW_ID_in_r592393 = 
        new BitSet.fromList([0x0000000600000400]);
    return _FOLLOW_ID_in_r592393;
  }

  static BitSet _FOLLOW_statement_in_r592397 = null;
  static BitSet get FOLLOW_statement_in_r592397() {
    if(_FOLLOW_statement_in_r592397 == null) 
      _FOLLOW_statement_in_r592397 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r592397;
  }

  static BitSet _FOLLOW_ID_in_primary2424 = null;
  static BitSet get FOLLOW_ID_in_primary2424() {
    if(_FOLLOW_ID_in_primary2424 == null) 
      _FOLLOW_ID_in_primary2424 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_primary2424;
  }

  static BitSet _FOLLOW_r1_in_expression2441 = null;
  static BitSet get FOLLOW_r1_in_expression2441() {
    if(_FOLLOW_r1_in_expression2441 == null) 
      _FOLLOW_r1_in_expression2441 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_r1_in_expression2441;
  }

  static BitSet _FOLLOW_modifier_in_modifiers2483 = null;
  static BitSet get FOLLOW_modifier_in_modifiers2483() {
    if(_FOLLOW_modifier_in_modifiers2483 == null) 
      _FOLLOW_modifier_in_modifiers2483 = 
        new BitSet.fromList([0x0000018000000002]);
    return _FOLLOW_modifier_in_modifiers2483;
  }

  static BitSet _FOLLOW_modifier_in_synpred1_t042ast2271 = null;
  static BitSet get FOLLOW_modifier_in_synpred1_t042ast2271() {
    if(_FOLLOW_modifier_in_synpred1_t042ast2271 == null) 
      _FOLLOW_modifier_in_synpred1_t042ast2271 = 
        new BitSet.fromList([0x0000018000001000]);
    return _FOLLOW_modifier_in_synpred1_t042ast2271;
  }

  static BitSet _FOLLOW_INT_in_synpred1_t042ast2274 = null;
  static BitSet get FOLLOW_INT_in_synpred1_t042ast2274() {
    if(_FOLLOW_INT_in_synpred1_t042ast2274 == null) 
      _FOLLOW_INT_in_synpred1_t042ast2274 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_synpred1_t042ast2274;
  }



 }




class t042astParser_r1_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r2_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r3_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r4_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r5_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r6_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r7_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r8_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r9_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r10_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r11_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r12_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r13_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r14_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r15_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r16_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r17_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r18_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r19_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r20_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r21_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r22_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r23_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r24_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r25_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r26_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r27_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r28_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r29_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r30_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r31_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r32_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r33_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r34_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r34a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r35_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r36_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r37_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r38_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r39_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r40_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r41_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r42_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r43_return extends ParserRuleReturnScope {
  List res;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r44_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r45_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r46_return extends ParserRuleReturnScope {
  List res;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r47_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r48_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r49_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r50_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r51_return extends ParserRuleReturnScope {
  Object res;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r52_return extends ParserRuleReturnScope {
  Object res;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r53_return extends ParserRuleReturnScope {
  Object res;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r54_return extends ParserRuleReturnScope {
  Object res;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r55_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r56_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r57_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r58_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_r59_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_primary_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_expression_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_statement_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_modifiers_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_modifier_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t042astParser_synpred1_t042ast_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

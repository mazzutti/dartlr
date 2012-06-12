// $ANTLR 3.4 t047treeparserParser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t047treeparserParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ARG_DEF", "BLOCK", "CHAR", 
    "EQ", "EQEQ", "FOR", "FUNC_DECL", "FUNC_DEF", "FUNC_HDR", "ID", "INT", 
    "INT_TYPE", "LT", "PLUS", "VAR_DEF", "VOID", "WS", "'('", "')'", "','", 
    "';'", "'{'", "'}'"
  ];

  static final int EOF = -1;
  static final int T__21 = 21;
  static final int T__22 = 22;
  static final int T__23 = 23;
  static final int T__24 = 24;
  static final int T__25 = 25;
  static final int T__26 = 26;
  static final int ARG_DEF = 4;
  static final int BLOCK = 5;
  static final int CHAR = 6;
  static final int EQ = 7;
  static final int EQEQ = 8;
  static final int FOR = 9;
  static final int FUNC_DECL = 10;
  static final int FUNC_DEF = 11;
  static final int FUNC_HDR = 12;
  static final int ID = 13;
  static final int INT = 14;
  static final int INT_TYPE = 15;
  static final int LT = 16;
  static final int PLUS = 17;
  static final int VAR_DEF = 18;
  static final int VOID = 19;
  static final int WS = 20;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      

  Map<String, DFA> dfas;

  CommonTreeAdaptor _adaptor;


  t047treeparserParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
	  this.dfas["dfa2"] = new DFA2(this);

	  this._adaptor = new CommonTreeAdaptor();
  }



  t047treeparserParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();
    
    this.dfas["dfa2"] = new DFA2(this);

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t047treeparserParser._tokenNames;

  String get grammarFileName() => "t047treeparser.g";

  String getRecognizerClassName() => "t047treeparserParser";


  // $ANTLR start "program"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   16:1: program : ( declaration )+ ;*/
  t047treeparserParser_program_return program() {
    t047treeparserParser_program_return retval = new t047treeparserParser_program_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t047treeparserParser_declaration_return declaration1 =null;



    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       17:5: ( ( declaration )+ )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       17:9: ( declaration )+*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	 17:9: ( declaration )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 6/*CHAR*/
      	    || LA1_0 == 13/*ID*/
      	    || LA1_0 == 15/*INT_TYPE*/
      	    || LA1_0 == 19/*VOID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
      			   17:9: declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_declaration_in_program85);
      			  	declaration1 = this.declaration();

      			  	this.state.fsp--;

      			  	this._adaptor.addChild(root_0, declaration1.tree);

      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


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
  // $ANTLR end "program"


  // $ANTLR start "declaration"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   20:1: declaration : ( variable | functionHeader ';' -> ^( FUNC_DECL functionHeader ) | 
   functionHeader block -> ^( FUNC_DEF functionHeader block ) ); */
  t047treeparserParser_declaration_return declaration() {
    t047treeparserParser_declaration_return retval = new t047treeparserParser_declaration_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal4 = null;
    t047treeparserParser_variable_return variable2 =null;

    t047treeparserParser_functionHeader_return functionHeader3 =null;

    t047treeparserParser_functionHeader_return functionHeader5 =null;

    t047treeparserParser_block_return block6 =null;


    Object char_literal4_tree=null;
    RewriteRuleTokenStream stream_24=new RewriteRuleTokenStream(this._adaptor,"token 24");
    RewriteRuleSubtreeStream stream_functionHeader=new RewriteRuleSubtreeStream(this._adaptor,"rule functionHeader");
    RewriteRuleSubtreeStream stream_block=new RewriteRuleSubtreeStream(this._adaptor,"rule block");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g: 
       21:5: ( variable | functionHeader ';' -> ^( FUNC_DECL functionHeader ) | 
       functionHeader block -> ^( FUNC_DEF functionHeader block ) ) */
      int alt2 = 3;
      alt2 = this.dfas["dfa2"].predict(this.input);
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           21:9: variable*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_variable_in_declaration105);
          	variable2 = this.variable();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, variable2.tree);

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           22:9: functionHeader ';'*/
          {
          	this.pushFollow(FOLLOW_functionHeader_in_declaration115);
          	functionHeader3 = this.functionHeader();

          	this.state.fsp--;

          	stream_functionHeader.add(functionHeader3.tree);

          	char_literal4 = this.matchSymbol(this.input,
          	    24,FOLLOW_24_in_declaration117); 
          	 
          	stream_24.add(char_literal4);


          	// AST REWRITE
          	// elements: functionHeader
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 22:28: -> ^( FUNC_DECL functionHeader )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
          	     22:31: ^( FUNC_DECL functionHeader )*/
          	    {
          	    	Object root_1 = this._adaptor.nil();
          	    	root_1 = this._adaptor.becomeRoot(
          	    	this._adaptor.create(FUNC_DECL, "FUNC_DECL")
          	    	, root_1);

          	    	this._adaptor.addChild(root_1, stream_functionHeader.nextTree());

          	    	this._adaptor.addChild(root_0, root_1);
          	    }

          	}


          	retval.tree = root_0;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           23:9: functionHeader block*/
          {
          	this.pushFollow(FOLLOW_functionHeader_in_declaration135);
          	functionHeader5 = this.functionHeader();

          	this.state.fsp--;

          	stream_functionHeader.add(functionHeader5.tree);

          	this.pushFollow(FOLLOW_block_in_declaration137);
          	block6 = this.block();

          	this.state.fsp--;

          	stream_block.add(block6.tree);

          	// AST REWRITE
          	// elements: block, functionHeader
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 23:30: -> ^( FUNC_DEF functionHeader block )*/
          	{
          	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
          	     23:33: ^( FUNC_DEF functionHeader block )*/
          	    {
          	    	Object root_1 = this._adaptor.nil();
          	    	root_1 = this._adaptor.becomeRoot(
          	    	this._adaptor.create(FUNC_DEF, "FUNC_DEF")
          	    	, root_1);

          	    	this._adaptor.addChild(root_1, stream_functionHeader.nextTree());

          	    	this._adaptor.addChild(root_1, stream_block.nextTree());

          	    	this._adaptor.addChild(root_0, root_1);
          	    }

          	}


          	retval.tree = root_0;

          }
          break;

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
  // $ANTLR end "declaration"


  // $ANTLR start "variable"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   26:1: variable : type declarator ';' -> ^( VAR_DEF type declarator ) ;*/
  t047treeparserParser_variable_return variable() {
    t047treeparserParser_variable_return retval = new t047treeparserParser_variable_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal9 = null;
    t047treeparserParser_type_return type7 =null;

    t047treeparserParser_declarator_return declarator8 =null;


    Object char_literal9_tree=null;
    RewriteRuleTokenStream stream_24=new RewriteRuleTokenStream(this._adaptor,"token 24");
    RewriteRuleSubtreeStream stream_declarator=new RewriteRuleSubtreeStream(this._adaptor,"rule declarator");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       27:5: ( type declarator ';' -> ^( VAR_DEF type declarator ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       27:9: type declarator ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_variable166);
      	type7 = this.type();

      	this.state.fsp--;

      	stream_type.add(type7.tree);

      	this.pushFollow(FOLLOW_declarator_in_variable168);
      	declarator8 = this.declarator();

      	this.state.fsp--;

      	stream_declarator.add(declarator8.tree);

      	char_literal9 = this.matchSymbol(this.input,
      	    24,FOLLOW_24_in_variable170); 
      	 
      	stream_24.add(char_literal9);


      	// AST REWRITE
      	// elements: type, declarator
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 27:29: -> ^( VAR_DEF type declarator )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     27:32: ^( VAR_DEF type declarator )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(VAR_DEF, "VAR_DEF")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	this._adaptor.addChild(root_1, stream_declarator.nextTree());

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
  // $ANTLR end "variable"


  // $ANTLR start "declarator"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   30:1: declarator : ID ;*/
  t047treeparserParser_declarator_return declarator() {
    t047treeparserParser_declarator_return retval = new t047treeparserParser_declarator_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID10 = null;

    Object ID10_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       31:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       31:9: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID10 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_declarator199); 

      	ID10_tree = this._adaptor.createTreeNode(ID10);
      	this._adaptor.addChild(root_0, ID10_tree);


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
  // $ANTLR end "declarator"


  // $ANTLR start "functionHeader"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   34:1: functionHeader : type ID '(' ( formalParameter ( ',' formalParameter )* )? ')' -> ^( FUNC_HDR type ID ( formalParameter )+ ) ;*/
  t047treeparserParser_functionHeader_return functionHeader() {
    t047treeparserParser_functionHeader_return retval = new t047treeparserParser_functionHeader_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID12 = null;
    Token char_literal13 = null;
    Token char_literal15 = null;
    Token char_literal17 = null;
    t047treeparserParser_type_return type11 =null;

    t047treeparserParser_formalParameter_return formalParameter14 =null;

    t047treeparserParser_formalParameter_return formalParameter16 =null;


    Object ID12_tree=null;
    Object char_literal13_tree=null;
    Object char_literal15_tree=null;
    Object char_literal17_tree=null;
    RewriteRuleTokenStream stream_21=new RewriteRuleTokenStream(this._adaptor,"token 21");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_23=new RewriteRuleTokenStream(this._adaptor,"token 23");
    RewriteRuleSubtreeStream stream_formalParameter=new RewriteRuleSubtreeStream(this._adaptor,"rule formalParameter");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       35:5: ( type ID '(' ( formalParameter ( ',' formalParameter )* )? ')' -> ^( FUNC_HDR type ID ( formalParameter )+ ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       35:9: type ID '(' ( formalParameter ( ',' formalParameter )* )? ')'*/
      {
      	this.pushFollow(FOLLOW_type_in_functionHeader219);
      	type11 = this.type();

      	this.state.fsp--;

      	stream_type.add(type11.tree);

      	ID12 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_functionHeader221); 
      	 
      	stream_ID.add(ID12);


      	char_literal13 = this.matchSymbol(this.input,
      	    21,FOLLOW_21_in_functionHeader223); 
      	 
      	stream_21.add(char_literal13);


      	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	 35:21: ( formalParameter ( ',' formalParameter )* )?*/
      	int alt4 = 2;
      	int LA4_0 = this.input.LA(1);

      	if((LA4_0 == 6/*CHAR*/
      	  || LA4_0 == 13/*ID*/
      	  || LA4_0 == 15/*INT_TYPE*/
      	  || LA4_0 == 19/*VOID*/)) {
      	  alt4 = 1;
      	}
      	switch (alt4) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     35:23: formalParameter ( ',' formalParameter )**/
      	    {
      	    	this.pushFollow(FOLLOW_formalParameter_in_functionHeader227);
      	    	formalParameter14 = this.formalParameter();

      	    	this.state.fsp--;

      	    	stream_formalParameter.add(formalParameter14.tree);

      	    	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    	 35:39: ( ',' formalParameter )**/
      	    	loop3:
      	    	do {
      	    	  int alt3 = 2;
      	    	  int LA3_0 = this.input.LA(1);

      	    	  if((LA3_0 == 23/*23*/)) {
      	    	    alt3 = 1;
      	    	  }


      	    	  switch (alt3) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    			   35:41: ',' formalParameter*/
      	    			  {
      	    			  	char_literal15 = this.matchSymbol(this.input,
      	    			  	    23,FOLLOW_23_in_functionHeader231); 
      	    			  	 
      	    			  	stream_23.add(char_literal15);


      	    			  	this.pushFollow(FOLLOW_formalParameter_in_functionHeader233);
      	    			  	formalParameter16 = this.formalParameter();

      	    			  	this.state.fsp--;

      	    			  	stream_formalParameter.add(formalParameter16.tree);

      	    			  }
      	    			  break;

      	    			default :
      	    		    break loop3;
      	    	  }
      	    	} while(true);


      	    }
      	    break;

      	}


      	char_literal17 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_functionHeader241); 
      	 
      	stream_22.add(char_literal17);


      	// AST REWRITE
      	// elements: formalParameter, type, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 36:9: -> ^( FUNC_HDR type ID ( formalParameter )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     36:12: ^( FUNC_HDR type ID ( formalParameter )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(FUNC_HDR, "FUNC_HDR")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	if(!(stream_formalParameter.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_formalParameter.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_formalParameter.nextTree());

      	    	}
      	    	stream_formalParameter.reset();

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
  // $ANTLR end "functionHeader"


  // $ANTLR start "formalParameter"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   39:1: formalParameter : type declarator -> ^( ARG_DEF type declarator ) ;*/
  t047treeparserParser_formalParameter_return formalParameter() {
    t047treeparserParser_formalParameter_return retval = new t047treeparserParser_formalParameter_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t047treeparserParser_type_return type18 =null;

    t047treeparserParser_declarator_return declarator19 =null;


    RewriteRuleSubtreeStream stream_declarator=new RewriteRuleSubtreeStream(this._adaptor,"rule declarator");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       40:5: ( type declarator -> ^( ARG_DEF type declarator ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       40:9: type declarator*/
      {
      	this.pushFollow(FOLLOW_type_in_formalParameter281);
      	type18 = this.type();

      	this.state.fsp--;

      	stream_type.add(type18.tree);

      	this.pushFollow(FOLLOW_declarator_in_formalParameter283);
      	declarator19 = this.declarator();

      	this.state.fsp--;

      	stream_declarator.add(declarator19.tree);

      	// AST REWRITE
      	// elements: declarator, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 40:25: -> ^( ARG_DEF type declarator )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     40:28: ^( ARG_DEF type declarator )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(ARG_DEF, "ARG_DEF")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_type.nextTree());

      	    	this._adaptor.addChild(root_1, stream_declarator.nextTree());

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
  // $ANTLR end "formalParameter"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   43:1: type : ( 'int' | 'char' | 'void' | ID );*/
  t047treeparserParser_type_return type() {
    t047treeparserParser_type_return retval = new t047treeparserParser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set20 = null;

    Object set20_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       44:5: ( 'int' | 'char' | 'void' | ID )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set20 = this.input.LT(1);

      	if(this.input.LA(1) == CHAR
      	  || this.input.LA(1) == ID
      	  || this.input.LA(1) == INT_TYPE
      	  || this.input.LA(1) == VOID) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set20));
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


  // $ANTLR start "block"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   50:1: block : lc= '{' ( variable )* ( stat )* '}' -> ^( BLOCK[$lc,\"BLOCK\"] ( variable )* ( stat )* ) ;*/
  t047treeparserParser_block_return block() {
    t047treeparserParser_block_return retval = new t047treeparserParser_block_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token lc = null;
    Token char_literal23 = null;
    t047treeparserParser_variable_return variable21 =null;

    t047treeparserParser_stat_return stat22 =null;


    Object lc_tree=null;
    Object char_literal23_tree=null;
    RewriteRuleTokenStream stream_25=new RewriteRuleTokenStream(this._adaptor,"token 25");
    RewriteRuleTokenStream stream_26=new RewriteRuleTokenStream(this._adaptor,"token 26");
    RewriteRuleSubtreeStream stream_variable=new RewriteRuleSubtreeStream(this._adaptor,"rule variable");
    RewriteRuleSubtreeStream stream_stat=new RewriteRuleSubtreeStream(this._adaptor,"rule stat");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       51:5: (lc= '{' ( variable )* ( stat )* '}' -> ^( BLOCK[$lc,\"BLOCK\"] ( variable )* ( stat )* ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       51:9: lc= '{' ( variable )* ( stat )* '}'*/
      {
      	lc = this.matchSymbol(this.input,
      	    25,FOLLOW_25_in_block376); 
      	 
      	stream_25.add(lc);


      	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	 52:13: ( variable )**/
      	loop5:
      	do {
      	  int alt5 = 2;
      	  int LA5_0 = this.input.LA(1);

      	  if((LA5_0 == 13/*ID*/)) {
      	    int LA5_2 = this.input.LA(2);

      	    if((LA5_2 == 13/*ID*/)) {
      	      alt5 = 1;
      	    }


      	  }
      	  else if((LA5_0 == 6/*CHAR*/
      	    || LA5_0 == 15/*INT_TYPE*/
      	    || LA5_0 == 19/*VOID*/)) {
      	    alt5 = 1;
      	  }


      	  switch (alt5) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
      			   52:13: variable*/
      			  {
      			  	this.pushFollow(FOLLOW_variable_in_block390);
      			  	variable21 = this.variable();

      			  	this.state.fsp--;

      			  	stream_variable.add(variable21.tree);

      			  }
      			  break;

      			default :
      		    break loop5;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	 53:13: ( stat )**/
      	loop6:
      	do {
      	  int alt6 = 2;
      	  int LA6_0 = this.input.LA(1);

      	  if((LA6_0 == 9/*FOR*/
      	    || (LA6_0 >= ID && LA6_0 <= INT)
      	    || LA6_0 == 21/*21*/
      	    || (LA6_0 >= 24 && LA6_0 <= 25))) {
      	    alt6 = 1;
      	  }


      	  switch (alt6) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
      			   53:13: stat*/
      			  {
      			  	this.pushFollow(FOLLOW_stat_in_block405);
      			  	stat22 = this.stat();

      			  	this.state.fsp--;

      			  	stream_stat.add(stat22.tree);

      			  }
      			  break;

      			default :
      		    break loop6;
      	  }
      	} while(true);


      	char_literal23 = this.matchSymbol(this.input,
      	    26,FOLLOW_26_in_block416); 
      	 
      	stream_26.add(char_literal23);


      	// AST REWRITE
      	// elements: variable, stat
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 55:9: -> ^( BLOCK[$lc,\"BLOCK\"] ( variable )* ( stat )* )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     55:12: ^( BLOCK[$lc,\"BLOCK\"] ( variable )* ( stat )* )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, lc, "BLOCK")
      	    	, root_1);

      	    	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    	 55:33: ( variable )**/
      	    	while ( stream_variable.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_variable.nextTree());

      	    	}
      	    	stream_variable.reset();

      	    	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    	 55:43: ( stat )**/
      	    	while ( stream_stat.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_stat.nextTree());

      	    	}
      	    	stream_stat.reset();

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
  // $ANTLR end "block"


  // $ANTLR start "stat"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   58:1: stat : ( forStat | expr ';' !| block | assignStat ';' !| ';' !);*/
  t047treeparserParser_stat_return stat() {
    t047treeparserParser_stat_return retval = new t047treeparserParser_stat_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal26 = null;
    Token char_literal29 = null;
    Token char_literal30 = null;
    t047treeparserParser_forStat_return forStat24 =null;

    t047treeparserParser_expr_return expr25 =null;

    t047treeparserParser_block_return block27 =null;

    t047treeparserParser_assignStat_return assignStat28 =null;


    Object char_literal26_tree=null;
    Object char_literal29_tree=null;
    Object char_literal30_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g: 
       58:5: ( forStat | expr ';' !| block | assignStat ';' !| ';' !)*/
      int alt7 = 5;
      switch(this.input.LA(1)) {
      case FOR:
        {
        alt7 = 1;
        }
        break;
      case ID:
        {
        int LA7_2 = this.input.LA(2);

        if((LA7_2 == 7/*EQ*/)) {
          alt7 = 4;
        }
        else if((LA7_2 == 8/*EQEQ*/
          || (LA7_2 >= LT && LA7_2 <= PLUS)
          || LA7_2 == 24/*24*/)) {
          alt7 = 2;
        }
        else {
          NoViableAltException nvae =
              new NoViableAltException("", 7, 2, this.input);

          throw nvae;

        }
        }
        break;
      case INT:
      case 21:
        {
        alt7 = 2;
        }
        break;
      case 25:
        {
        alt7 = 3;
        }
        break;
      case 24:
        {
        alt7 = 5;
        }
        break;
      default:
        NoViableAltException nvae =
            new NoViableAltException("", 7, 0, this.input);

        throw nvae;

      }

      switch (alt7) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           58:7: forStat*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_forStat_in_stat449);
          	forStat24 = this.forStat();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, forStat24.tree);

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           59:7: expr ';' !*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_expr_in_stat457);
          	expr25 = this.expr();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, expr25.tree);

          	char_literal26 = this.matchSymbol(this.input,
          	    24,FOLLOW_24_in_stat459); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           60:7: block*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_block_in_stat468);
          	block27 = this.block();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, block27.tree);

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           61:7: assignStat ';' !*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_assignStat_in_stat476);
          	assignStat28 = this.assignStat();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, assignStat28.tree);

          	char_literal29 = this.matchSymbol(this.input,
          	    24,FOLLOW_24_in_stat478); 


          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           62:7: ';' !*/
          {
          	root_0 = this._adaptor.nil();


          	char_literal30 = this.matchSymbol(this.input,
          	    24,FOLLOW_24_in_stat487); 


          }
          break;

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
  // $ANTLR end "stat"


  // $ANTLR start "forStat"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   65:1: forStat : 'for' '(' start= assignStat ';' expr ';' next= assignStat ')' block -> ^( 'for' $start expr $next block ) ;*/
  t047treeparserParser_forStat_return forStat() {
    t047treeparserParser_forStat_return retval = new t047treeparserParser_forStat_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal31 = null;
    Token char_literal32 = null;
    Token char_literal33 = null;
    Token char_literal35 = null;
    Token char_literal36 = null;
    t047treeparserParser_assignStat_return start =null;

    t047treeparserParser_assignStat_return next =null;

    t047treeparserParser_expr_return expr34 =null;

    t047treeparserParser_block_return block37 =null;


    Object string_literal31_tree=null;
    Object char_literal32_tree=null;
    Object char_literal33_tree=null;
    Object char_literal35_tree=null;
    Object char_literal36_tree=null;
    RewriteRuleTokenStream stream_21=new RewriteRuleTokenStream(this._adaptor,"token 21");
    RewriteRuleTokenStream stream_FOR=new RewriteRuleTokenStream(this._adaptor,"token FOR");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleTokenStream stream_24=new RewriteRuleTokenStream(this._adaptor,"token 24");
    RewriteRuleSubtreeStream stream_assignStat=new RewriteRuleSubtreeStream(this._adaptor,"rule assignStat");
    RewriteRuleSubtreeStream stream_block=new RewriteRuleSubtreeStream(this._adaptor,"rule block");
    RewriteRuleSubtreeStream stream_expr=new RewriteRuleSubtreeStream(this._adaptor,"rule expr");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       66:5: ( 'for' '(' start= assignStat ';' expr ';' next= assignStat ')' block -> ^( 'for' $start expr $next block ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       66:9: 'for' '(' start= assignStat ';' expr ';' next= assignStat ')' block*/
      {
      	string_literal31 = this.matchSymbol(this.input,
      	    FOR,FOLLOW_FOR_in_forStat507); 
      	 
      	stream_FOR.add(string_literal31);


      	char_literal32 = this.matchSymbol(this.input,
      	    21,FOLLOW_21_in_forStat509); 
      	 
      	stream_21.add(char_literal32);


      	this.pushFollow(FOLLOW_assignStat_in_forStat513);
      	start = this.assignStat();

      	this.state.fsp--;

      	stream_assignStat.add(start.tree);

      	char_literal33 = this.matchSymbol(this.input,
      	    24,FOLLOW_24_in_forStat515); 
      	 
      	stream_24.add(char_literal33);


      	this.pushFollow(FOLLOW_expr_in_forStat517);
      	expr34 = this.expr();

      	this.state.fsp--;

      	stream_expr.add(expr34.tree);

      	char_literal35 = this.matchSymbol(this.input,
      	    24,FOLLOW_24_in_forStat519); 
      	 
      	stream_24.add(char_literal35);


      	this.pushFollow(FOLLOW_assignStat_in_forStat523);
      	next = this.assignStat();

      	this.state.fsp--;

      	stream_assignStat.add(next.tree);

      	char_literal36 = this.matchSymbol(this.input,
      	    22,FOLLOW_22_in_forStat525); 
      	 
      	stream_22.add(char_literal36);


      	this.pushFollow(FOLLOW_block_in_forStat527);
      	block37 = this.block();

      	this.state.fsp--;

      	stream_block.add(block37.tree);

      	// AST REWRITE
      	// elements: start, expr, FOR, block, next
      	// token labels: 
      	// rule labels: retval, start, next
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_start = new RewriteRuleSubtreeStream(this._adaptor,"rule start",start!=null?start.tree:null);
      	RewriteRuleSubtreeStream stream_next = new RewriteRuleSubtreeStream(this._adaptor,"rule next",next!=null?next.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 67:9: -> ^( 'for' $start expr $next block )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     67:12: ^( 'for' $start expr $next block )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_FOR.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, stream_start.nextTree());

      	    	this._adaptor.addChild(root_1, stream_expr.nextTree());

      	    	this._adaptor.addChild(root_1, stream_next.nextTree());

      	    	this._adaptor.addChild(root_1, stream_block.nextTree());

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
  // $ANTLR end "forStat"


  // $ANTLR start "assignStat"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   70:1: assignStat : ID EQ expr -> ^( EQ ID expr ) ;*/
  t047treeparserParser_assignStat_return assignStat() {
    t047treeparserParser_assignStat_return retval = new t047treeparserParser_assignStat_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID38 = null;
    Token EQ39 = null;
    t047treeparserParser_expr_return expr40 =null;


    Object ID38_tree=null;
    Object EQ39_tree=null;
    RewriteRuleTokenStream stream_EQ=new RewriteRuleTokenStream(this._adaptor,"token EQ");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_expr=new RewriteRuleSubtreeStream(this._adaptor,"rule expr");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       71:5: ( ID EQ expr -> ^( EQ ID expr ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       71:9: ID EQ expr*/
      {
      	ID38 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_assignStat570); 
      	 
      	stream_ID.add(ID38);


      	EQ39 = this.matchSymbol(this.input,
      	    EQ,FOLLOW_EQ_in_assignStat572); 
      	 
      	stream_EQ.add(EQ39);


      	this.pushFollow(FOLLOW_expr_in_assignStat574);
      	expr40 = this.expr();

      	this.state.fsp--;

      	stream_expr.add(expr40.tree);

      	// AST REWRITE
      	// elements: EQ, expr, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 71:20: -> ^( EQ ID expr )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     71:23: ^( EQ ID expr )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_EQ.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
      	    	);

      	    	this._adaptor.addChild(root_1, stream_expr.nextTree());

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
  // $ANTLR end "assignStat"


  // $ANTLR start "expr"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   74:1: expr : condExpr ;*/
  t047treeparserParser_expr_return expr() {
    t047treeparserParser_expr_return retval = new t047treeparserParser_expr_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t047treeparserParser_condExpr_return condExpr41 =null;



    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       74:5: ( condExpr )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       74:9: condExpr*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_condExpr_in_expr598);
      	condExpr41 = this.condExpr();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, condExpr41.tree);

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
  // $ANTLR end "expr"


  // $ANTLR start "condExpr"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   77:1: condExpr : aexpr ( ( '==' ^| '<' ^) aexpr )? ;*/
  t047treeparserParser_condExpr_return condExpr() {
    t047treeparserParser_condExpr_return retval = new t047treeparserParser_condExpr_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal43 = null;
    Token char_literal44 = null;
    t047treeparserParser_aexpr_return aexpr42 =null;

    t047treeparserParser_aexpr_return aexpr45 =null;


    Object string_literal43_tree=null;
    Object char_literal44_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       78:5: ( aexpr ( ( '==' ^| '<' ^) aexpr )? )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       78:9: aexpr ( ( '==' ^| '<' ^) aexpr )?*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_aexpr_in_condExpr617);
      	aexpr42 = this.aexpr();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, aexpr42.tree);

      	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	 78:15: ( ( '==' ^| '<' ^) aexpr )?*/
      	int alt9 = 2;
      	int LA9_0 = this.input.LA(1);

      	if((LA9_0 == 8/*EQEQ*/
      	  || LA9_0 == 16/*LT*/)) {
      	  alt9 = 1;
      	}
      	switch (alt9) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	     78:17: ( '==' ^| '<' ^) aexpr*/
      	    {
      	    	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    	 78:17: ( '==' ^| '<' ^)*/
      	    	int alt8 = 2;
      	    	int LA8_0 = this.input.LA(1);

      	    	if((LA8_0 == 8/*EQEQ*/)) {
      	    	  alt8 = 1;
      	    	}
      	    	else if((LA8_0 == 16/*LT*/)) {
      	    	  alt8 = 2;
      	    	}
      	    	else {
      	    	  NoViableAltException nvae =
      	    	      new NoViableAltException("", 8, 0, this.input);

      	    	  throw nvae;

      	    	}
      	    	switch (alt8) {
      	    	  case 1 :
      	    	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    	     78:18: '==' ^*/
      	    	    {
      	    	    	string_literal43 = this.matchSymbol(this.input,
      	    	    	    EQEQ,FOLLOW_EQEQ_in_condExpr622); 

      	    	    	string_literal43_tree = this._adaptor.createTreeNode(string_literal43);
      	    	    	root_0 = this._adaptor.becomeRoot(string_literal43_tree, root_0);


      	    	    }
      	    	    break;
      	    	  case 2 :
      	    	    /* ../runtime/dart/tests/grammars/t047treeparser.g:
      	    	     78:26: '<' ^*/
      	    	    {
      	    	    	char_literal44 = this.matchSymbol(this.input,
      	    	    	    LT,FOLLOW_LT_in_condExpr627); 

      	    	    	char_literal44_tree = this._adaptor.createTreeNode(char_literal44);
      	    	    	root_0 = this._adaptor.becomeRoot(char_literal44_tree, root_0);


      	    	    }
      	    	    break;

      	    	}


      	    	this.pushFollow(FOLLOW_aexpr_in_condExpr631);
      	    	aexpr45 = this.aexpr();

      	    	this.state.fsp--;

      	    	this._adaptor.addChild(root_0, aexpr45.tree);

      	    }
      	    break;

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
  // $ANTLR end "condExpr"


  // $ANTLR start "aexpr"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   81:1: aexpr : atom ( '+' ^ atom )* ;*/
  t047treeparserParser_aexpr_return aexpr() {
    t047treeparserParser_aexpr_return retval = new t047treeparserParser_aexpr_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal47 = null;
    t047treeparserParser_atom_return atom46 =null;

    t047treeparserParser_atom_return atom48 =null;


    Object char_literal47_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       82:5: ( atom ( '+' ^ atom )* )*/
      /* ../runtime/dart/tests/grammars/t047treeparser.g:
       82:9: atom ( '+' ^ atom )**/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_atom_in_aexpr653);
      	atom46 = this.atom();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, atom46.tree);

      	/* ../runtime/dart/tests/grammars/t047treeparser.g:
      	 82:14: ( '+' ^ atom )**/
      	loop10:
      	do {
      	  int alt10 = 2;
      	  int LA10_0 = this.input.LA(1);

      	  if((LA10_0 == 17/*PLUS*/)) {
      	    alt10 = 1;
      	  }


      	  switch (alt10) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
      			   82:16: '+' ^ atom*/
      			  {
      			  	char_literal47 = this.matchSymbol(this.input,
      			  	    PLUS,FOLLOW_PLUS_in_aexpr657); 

      			  	char_literal47_tree = this._adaptor.createTreeNode(char_literal47);
      			  	root_0 = this._adaptor.becomeRoot(char_literal47_tree, root_0);


      			  	this.pushFollow(FOLLOW_atom_in_aexpr660);
      			  	atom48 = this.atom();

      			  	this.state.fsp--;

      			  	this._adaptor.addChild(root_0, atom48.tree);

      			  }
      			  break;

      			default :
      		    break loop10;
      	  }
      	} while(true);


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
  // $ANTLR end "aexpr"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t047treeparser.g:
   85:1: atom : ( ID | INT | '(' expr ')' -> expr );*/
  t047treeparserParser_atom_return atom() {
    t047treeparserParser_atom_return retval = new t047treeparserParser_atom_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID49 = null;
    Token INT50 = null;
    Token char_literal51 = null;
    Token char_literal53 = null;
    t047treeparserParser_expr_return expr52 =null;


    Object ID49_tree=null;
    Object INT50_tree=null;
    Object char_literal51_tree=null;
    Object char_literal53_tree=null;
    RewriteRuleTokenStream stream_21=new RewriteRuleTokenStream(this._adaptor,"token 21");
    RewriteRuleTokenStream stream_22=new RewriteRuleTokenStream(this._adaptor,"token 22");
    RewriteRuleSubtreeStream stream_expr=new RewriteRuleSubtreeStream(this._adaptor,"rule expr");
    try {
      /* ../runtime/dart/tests/grammars/t047treeparser.g: 
       86:5: ( ID | INT | '(' expr ')' -> expr )*/
      int alt11 = 3;
      switch(this.input.LA(1)) {
      case ID:
        {
        alt11 = 1;
        }
        break;
      case INT:
        {
        alt11 = 2;
        }
        break;
      case 21:
        {
        alt11 = 3;
        }
        break;
      default:
        NoViableAltException nvae =
            new NoViableAltException("", 11, 0, this.input);

        throw nvae;

      }

      switch (alt11) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           86:7: ID*/
          {
          	root_0 = this._adaptor.nil();


          	ID49 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_atom680); 

          	ID49_tree = this._adaptor.createTreeNode(ID49);
          	this._adaptor.addChild(root_0, ID49_tree);


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           87:7: INT*/
          {
          	root_0 = this._adaptor.nil();


          	INT50 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_atom694); 

          	INT50_tree = this._adaptor.createTreeNode(INT50);
          	this._adaptor.addChild(root_0, INT50_tree);


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t047treeparser.g:
           88:7: '(' expr ')'*/
          {
          	char_literal51 = this.matchSymbol(this.input,
          	    21,FOLLOW_21_in_atom708); 
          	 
          	stream_21.add(char_literal51);


          	this.pushFollow(FOLLOW_expr_in_atom710);
          	expr52 = this.expr();

          	this.state.fsp--;

          	stream_expr.add(expr52.tree);

          	char_literal53 = this.matchSymbol(this.input,
          	    22,FOLLOW_22_in_atom712); 
          	 
          	stream_22.add(char_literal53);


          	// AST REWRITE
          	// elements: expr
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 88:20: -> expr*/
          	{
          	    this._adaptor.addChild(root_0, stream_expr.nextTree());

          	}


          	retval.tree = root_0;

          }
          break;

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
  // $ANTLR end "atom"



  static final String DFA2_eotS =
      "\u000d\uffff";
  static final String DFA2_eofS =
      "\u000d\uffff";
  static final String DFA2_minS =
      "\u0001\u0006\u0001\u000d\u0001\u0015\u0001\u0006\u0001\uffff\u0001"
      "\u000d\u0001\u0018\u0001\u0016\u0002\uffff\u0001\u0006\u0001\u000d"
      "\u0001\u0016";
  static final String DFA2_maxS =
      "\u0001\u0013\u0001\u000d\u0001\u0018\u0001\u0016\u0001\uffff\u0001"
      "\u000d\u0001\u0019\u0001\u0017\u0002\uffff\u0001\u0013\u0001\u000d"
      "\u0001\u0017";
  static final String DFA2_acceptS =
      "\u0004\uffff\u0001\u0001\u0003\uffff\u0001\u0002\u0001\u0003\u0003"
      "\uffff";
  static final String DFA2_specialS =
      "\u000d\uffff";
  static final List<String> DFA2_transitionS = const [
      "\u0001\u0001\u0006\uffff\u0001\u0001\u0001\uffff\u0001\u0001\u0003"
      "\uffff\u0001\u0001",
      "\u0001\u0002",
      "\u0001\u0003\u0002\uffff\u0001\u0004",
      "\u0001\u0005\u0006\uffff\u0001\u0005\u0001\uffff\u0001\u0005\u0003"
      "\uffff\u0001\u0005\u0002\uffff\u0001\u0006",
      "",
      "\u0001\u0007",
      "\u0001\u0008\u0001\u0009",
      "\u0001\u0006\u0001\u000a",
      "",
      "",
      "\u0001\u000b\u0006\uffff\u0001\u000b\u0001\uffff\u0001\u000b\u0003"
      "\uffff\u0001\u000b",
      "\u0001\u000c",
      "\u0001\u0006\u0001\u000a"
  ];

  static List<int> _DFA2_eot = null; 
  static List<int> get DFA2_eot() {
    if(_DFA2_eot == null)
      _DFA2_eot = 
        DFA.unpackEncodedString(DFA2_eotS);
    return _DFA2_eot;
  }

  static List<int> _DFA2_eof = null;
  static List<int> get DFA2_eof() {
    if(_DFA2_eof == null)
      _DFA2_eof = 
        DFA.unpackEncodedString(DFA2_eofS);
    return _DFA2_eof;
  }

  static List<int> _DFA2_min = null;
  static List<int> get DFA2_min() {
    if(_DFA2_min == null)
      _DFA2_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA2_minS);
    return _DFA2_min;
  }

  static List<int> _DFA2_max = null;
  static List<int> get DFA2_max() {
    if(_DFA2_max == null)
      _DFA2_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA2_maxS);
    return _DFA2_max;
  }

  static List<int> _DFA2_accept = null;
  static List<int> get DFA2_accept() {
    if(_DFA2_accept == null)
      _DFA2_accept = 
        DFA.unpackEncodedString(DFA2_acceptS);
    return _DFA2_accept;
  }

  static List<int> _DFA2_special = null;
  static List<int> get DFA2_special() {
    if(_DFA2_special == null)
      _DFA2_special = 
        DFA.unpackEncodedString(DFA2_specialS);
    return _DFA2_special;
  }

  static List<List<int>> _DFA2_transition = null;
  static List<List<int>> get DFA2_transition() {
    if(_DFA2_transition == null) {
      int numStates = DFA2_transitionS.length;
      _DFA2_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA2_transition[i] = 
            DFA.unpackEncodedString(DFA2_transitionS[i]);
    }
    return _DFA2_transition;
  } 

  static BitSet _FOLLOW_declaration_in_program85 = null;
  static BitSet get FOLLOW_declaration_in_program85() {
    if(_FOLLOW_declaration_in_program85 == null) 
      _FOLLOW_declaration_in_program85 = 
        new BitSet.fromList([0x000000000008A042]);
    return _FOLLOW_declaration_in_program85;
  }

  static BitSet _FOLLOW_variable_in_declaration105 = null;
  static BitSet get FOLLOW_variable_in_declaration105() {
    if(_FOLLOW_variable_in_declaration105 == null) 
      _FOLLOW_variable_in_declaration105 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_variable_in_declaration105;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration115 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration115() {
    if(_FOLLOW_functionHeader_in_declaration115 == null) 
      _FOLLOW_functionHeader_in_declaration115 = 
        new BitSet.fromList([0x0000000001000000]);
    return _FOLLOW_functionHeader_in_declaration115;
  }

  static BitSet _FOLLOW_24_in_declaration117 = null;
  static BitSet get FOLLOW_24_in_declaration117() {
    if(_FOLLOW_24_in_declaration117 == null) 
      _FOLLOW_24_in_declaration117 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_24_in_declaration117;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration135 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration135() {
    if(_FOLLOW_functionHeader_in_declaration135 == null) 
      _FOLLOW_functionHeader_in_declaration135 = 
        new BitSet.fromList([0x0000000002000000]);
    return _FOLLOW_functionHeader_in_declaration135;
  }

  static BitSet _FOLLOW_block_in_declaration137 = null;
  static BitSet get FOLLOW_block_in_declaration137() {
    if(_FOLLOW_block_in_declaration137 == null) 
      _FOLLOW_block_in_declaration137 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_declaration137;
  }

  static BitSet _FOLLOW_type_in_variable166 = null;
  static BitSet get FOLLOW_type_in_variable166() {
    if(_FOLLOW_type_in_variable166 == null) 
      _FOLLOW_type_in_variable166 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_type_in_variable166;
  }

  static BitSet _FOLLOW_declarator_in_variable168 = null;
  static BitSet get FOLLOW_declarator_in_variable168() {
    if(_FOLLOW_declarator_in_variable168 == null) 
      _FOLLOW_declarator_in_variable168 = 
        new BitSet.fromList([0x0000000001000000]);
    return _FOLLOW_declarator_in_variable168;
  }

  static BitSet _FOLLOW_24_in_variable170 = null;
  static BitSet get FOLLOW_24_in_variable170() {
    if(_FOLLOW_24_in_variable170 == null) 
      _FOLLOW_24_in_variable170 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_24_in_variable170;
  }

  static BitSet _FOLLOW_ID_in_declarator199 = null;
  static BitSet get FOLLOW_ID_in_declarator199() {
    if(_FOLLOW_ID_in_declarator199 == null) 
      _FOLLOW_ID_in_declarator199 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_declarator199;
  }

  static BitSet _FOLLOW_type_in_functionHeader219 = null;
  static BitSet get FOLLOW_type_in_functionHeader219() {
    if(_FOLLOW_type_in_functionHeader219 == null) 
      _FOLLOW_type_in_functionHeader219 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_type_in_functionHeader219;
  }

  static BitSet _FOLLOW_ID_in_functionHeader221 = null;
  static BitSet get FOLLOW_ID_in_functionHeader221() {
    if(_FOLLOW_ID_in_functionHeader221 == null) 
      _FOLLOW_ID_in_functionHeader221 = 
        new BitSet.fromList([0x0000000000200000]);
    return _FOLLOW_ID_in_functionHeader221;
  }

  static BitSet _FOLLOW_21_in_functionHeader223 = null;
  static BitSet get FOLLOW_21_in_functionHeader223() {
    if(_FOLLOW_21_in_functionHeader223 == null) 
      _FOLLOW_21_in_functionHeader223 = 
        new BitSet.fromList([0x000000000048A040]);
    return _FOLLOW_21_in_functionHeader223;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader227 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader227() {
    if(_FOLLOW_formalParameter_in_functionHeader227 == null) 
      _FOLLOW_formalParameter_in_functionHeader227 = 
        new BitSet.fromList([0x0000000000C00000]);
    return _FOLLOW_formalParameter_in_functionHeader227;
  }

  static BitSet _FOLLOW_23_in_functionHeader231 = null;
  static BitSet get FOLLOW_23_in_functionHeader231() {
    if(_FOLLOW_23_in_functionHeader231 == null) 
      _FOLLOW_23_in_functionHeader231 = 
        new BitSet.fromList([0x000000000008A040]);
    return _FOLLOW_23_in_functionHeader231;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader233 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader233() {
    if(_FOLLOW_formalParameter_in_functionHeader233 == null) 
      _FOLLOW_formalParameter_in_functionHeader233 = 
        new BitSet.fromList([0x0000000000C00000]);
    return _FOLLOW_formalParameter_in_functionHeader233;
  }

  static BitSet _FOLLOW_22_in_functionHeader241 = null;
  static BitSet get FOLLOW_22_in_functionHeader241() {
    if(_FOLLOW_22_in_functionHeader241 == null) 
      _FOLLOW_22_in_functionHeader241 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_functionHeader241;
  }

  static BitSet _FOLLOW_type_in_formalParameter281 = null;
  static BitSet get FOLLOW_type_in_formalParameter281() {
    if(_FOLLOW_type_in_formalParameter281 == null) 
      _FOLLOW_type_in_formalParameter281 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_type_in_formalParameter281;
  }

  static BitSet _FOLLOW_declarator_in_formalParameter283 = null;
  static BitSet get FOLLOW_declarator_in_formalParameter283() {
    if(_FOLLOW_declarator_in_formalParameter283 == null) 
      _FOLLOW_declarator_in_formalParameter283 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declarator_in_formalParameter283;
  }

  static BitSet _FOLLOW_25_in_block376 = null;
  static BitSet get FOLLOW_25_in_block376() {
    if(_FOLLOW_25_in_block376 == null) 
      _FOLLOW_25_in_block376 = 
        new BitSet.fromList([0x000000000728E240]);
    return _FOLLOW_25_in_block376;
  }

  static BitSet _FOLLOW_variable_in_block390 = null;
  static BitSet get FOLLOW_variable_in_block390() {
    if(_FOLLOW_variable_in_block390 == null) 
      _FOLLOW_variable_in_block390 = 
        new BitSet.fromList([0x000000000728E240]);
    return _FOLLOW_variable_in_block390;
  }

  static BitSet _FOLLOW_stat_in_block405 = null;
  static BitSet get FOLLOW_stat_in_block405() {
    if(_FOLLOW_stat_in_block405 == null) 
      _FOLLOW_stat_in_block405 = 
        new BitSet.fromList([0x0000000007206200]);
    return _FOLLOW_stat_in_block405;
  }

  static BitSet _FOLLOW_26_in_block416 = null;
  static BitSet get FOLLOW_26_in_block416() {
    if(_FOLLOW_26_in_block416 == null) 
      _FOLLOW_26_in_block416 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_26_in_block416;
  }

  static BitSet _FOLLOW_forStat_in_stat449 = null;
  static BitSet get FOLLOW_forStat_in_stat449() {
    if(_FOLLOW_forStat_in_stat449 == null) 
      _FOLLOW_forStat_in_stat449 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_forStat_in_stat449;
  }

  static BitSet _FOLLOW_expr_in_stat457 = null;
  static BitSet get FOLLOW_expr_in_stat457() {
    if(_FOLLOW_expr_in_stat457 == null) 
      _FOLLOW_expr_in_stat457 = 
        new BitSet.fromList([0x0000000001000000]);
    return _FOLLOW_expr_in_stat457;
  }

  static BitSet _FOLLOW_24_in_stat459 = null;
  static BitSet get FOLLOW_24_in_stat459() {
    if(_FOLLOW_24_in_stat459 == null) 
      _FOLLOW_24_in_stat459 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_24_in_stat459;
  }

  static BitSet _FOLLOW_block_in_stat468 = null;
  static BitSet get FOLLOW_block_in_stat468() {
    if(_FOLLOW_block_in_stat468 == null) 
      _FOLLOW_block_in_stat468 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_stat468;
  }

  static BitSet _FOLLOW_assignStat_in_stat476 = null;
  static BitSet get FOLLOW_assignStat_in_stat476() {
    if(_FOLLOW_assignStat_in_stat476 == null) 
      _FOLLOW_assignStat_in_stat476 = 
        new BitSet.fromList([0x0000000001000000]);
    return _FOLLOW_assignStat_in_stat476;
  }

  static BitSet _FOLLOW_24_in_stat478 = null;
  static BitSet get FOLLOW_24_in_stat478() {
    if(_FOLLOW_24_in_stat478 == null) 
      _FOLLOW_24_in_stat478 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_24_in_stat478;
  }

  static BitSet _FOLLOW_24_in_stat487 = null;
  static BitSet get FOLLOW_24_in_stat487() {
    if(_FOLLOW_24_in_stat487 == null) 
      _FOLLOW_24_in_stat487 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_24_in_stat487;
  }

  static BitSet _FOLLOW_FOR_in_forStat507 = null;
  static BitSet get FOLLOW_FOR_in_forStat507() {
    if(_FOLLOW_FOR_in_forStat507 == null) 
      _FOLLOW_FOR_in_forStat507 = 
        new BitSet.fromList([0x0000000000200000]);
    return _FOLLOW_FOR_in_forStat507;
  }

  static BitSet _FOLLOW_21_in_forStat509 = null;
  static BitSet get FOLLOW_21_in_forStat509() {
    if(_FOLLOW_21_in_forStat509 == null) 
      _FOLLOW_21_in_forStat509 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_21_in_forStat509;
  }

  static BitSet _FOLLOW_assignStat_in_forStat513 = null;
  static BitSet get FOLLOW_assignStat_in_forStat513() {
    if(_FOLLOW_assignStat_in_forStat513 == null) 
      _FOLLOW_assignStat_in_forStat513 = 
        new BitSet.fromList([0x0000000001000000]);
    return _FOLLOW_assignStat_in_forStat513;
  }

  static BitSet _FOLLOW_24_in_forStat515 = null;
  static BitSet get FOLLOW_24_in_forStat515() {
    if(_FOLLOW_24_in_forStat515 == null) 
      _FOLLOW_24_in_forStat515 = 
        new BitSet.fromList([0x0000000000206000]);
    return _FOLLOW_24_in_forStat515;
  }

  static BitSet _FOLLOW_expr_in_forStat517 = null;
  static BitSet get FOLLOW_expr_in_forStat517() {
    if(_FOLLOW_expr_in_forStat517 == null) 
      _FOLLOW_expr_in_forStat517 = 
        new BitSet.fromList([0x0000000001000000]);
    return _FOLLOW_expr_in_forStat517;
  }

  static BitSet _FOLLOW_24_in_forStat519 = null;
  static BitSet get FOLLOW_24_in_forStat519() {
    if(_FOLLOW_24_in_forStat519 == null) 
      _FOLLOW_24_in_forStat519 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_24_in_forStat519;
  }

  static BitSet _FOLLOW_assignStat_in_forStat523 = null;
  static BitSet get FOLLOW_assignStat_in_forStat523() {
    if(_FOLLOW_assignStat_in_forStat523 == null) 
      _FOLLOW_assignStat_in_forStat523 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_assignStat_in_forStat523;
  }

  static BitSet _FOLLOW_22_in_forStat525 = null;
  static BitSet get FOLLOW_22_in_forStat525() {
    if(_FOLLOW_22_in_forStat525 == null) 
      _FOLLOW_22_in_forStat525 = 
        new BitSet.fromList([0x0000000002000000]);
    return _FOLLOW_22_in_forStat525;
  }

  static BitSet _FOLLOW_block_in_forStat527 = null;
  static BitSet get FOLLOW_block_in_forStat527() {
    if(_FOLLOW_block_in_forStat527 == null) 
      _FOLLOW_block_in_forStat527 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_forStat527;
  }

  static BitSet _FOLLOW_ID_in_assignStat570 = null;
  static BitSet get FOLLOW_ID_in_assignStat570() {
    if(_FOLLOW_ID_in_assignStat570 == null) 
      _FOLLOW_ID_in_assignStat570 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_assignStat570;
  }

  static BitSet _FOLLOW_EQ_in_assignStat572 = null;
  static BitSet get FOLLOW_EQ_in_assignStat572() {
    if(_FOLLOW_EQ_in_assignStat572 == null) 
      _FOLLOW_EQ_in_assignStat572 = 
        new BitSet.fromList([0x0000000000206000]);
    return _FOLLOW_EQ_in_assignStat572;
  }

  static BitSet _FOLLOW_expr_in_assignStat574 = null;
  static BitSet get FOLLOW_expr_in_assignStat574() {
    if(_FOLLOW_expr_in_assignStat574 == null) 
      _FOLLOW_expr_in_assignStat574 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expr_in_assignStat574;
  }

  static BitSet _FOLLOW_condExpr_in_expr598 = null;
  static BitSet get FOLLOW_condExpr_in_expr598() {
    if(_FOLLOW_condExpr_in_expr598 == null) 
      _FOLLOW_condExpr_in_expr598 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_condExpr_in_expr598;
  }

  static BitSet _FOLLOW_aexpr_in_condExpr617 = null;
  static BitSet get FOLLOW_aexpr_in_condExpr617() {
    if(_FOLLOW_aexpr_in_condExpr617 == null) 
      _FOLLOW_aexpr_in_condExpr617 = 
        new BitSet.fromList([0x0000000000010102]);
    return _FOLLOW_aexpr_in_condExpr617;
  }

  static BitSet _FOLLOW_EQEQ_in_condExpr622 = null;
  static BitSet get FOLLOW_EQEQ_in_condExpr622() {
    if(_FOLLOW_EQEQ_in_condExpr622 == null) 
      _FOLLOW_EQEQ_in_condExpr622 = 
        new BitSet.fromList([0x0000000000206000]);
    return _FOLLOW_EQEQ_in_condExpr622;
  }

  static BitSet _FOLLOW_LT_in_condExpr627 = null;
  static BitSet get FOLLOW_LT_in_condExpr627() {
    if(_FOLLOW_LT_in_condExpr627 == null) 
      _FOLLOW_LT_in_condExpr627 = 
        new BitSet.fromList([0x0000000000206000]);
    return _FOLLOW_LT_in_condExpr627;
  }

  static BitSet _FOLLOW_aexpr_in_condExpr631 = null;
  static BitSet get FOLLOW_aexpr_in_condExpr631() {
    if(_FOLLOW_aexpr_in_condExpr631 == null) 
      _FOLLOW_aexpr_in_condExpr631 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_aexpr_in_condExpr631;
  }

  static BitSet _FOLLOW_atom_in_aexpr653 = null;
  static BitSet get FOLLOW_atom_in_aexpr653() {
    if(_FOLLOW_atom_in_aexpr653 == null) 
      _FOLLOW_atom_in_aexpr653 = 
        new BitSet.fromList([0x0000000000020002]);
    return _FOLLOW_atom_in_aexpr653;
  }

  static BitSet _FOLLOW_PLUS_in_aexpr657 = null;
  static BitSet get FOLLOW_PLUS_in_aexpr657() {
    if(_FOLLOW_PLUS_in_aexpr657 == null) 
      _FOLLOW_PLUS_in_aexpr657 = 
        new BitSet.fromList([0x0000000000206000]);
    return _FOLLOW_PLUS_in_aexpr657;
  }

  static BitSet _FOLLOW_atom_in_aexpr660 = null;
  static BitSet get FOLLOW_atom_in_aexpr660() {
    if(_FOLLOW_atom_in_aexpr660 == null) 
      _FOLLOW_atom_in_aexpr660 = 
        new BitSet.fromList([0x0000000000020002]);
    return _FOLLOW_atom_in_aexpr660;
  }

  static BitSet _FOLLOW_ID_in_atom680 = null;
  static BitSet get FOLLOW_ID_in_atom680() {
    if(_FOLLOW_ID_in_atom680 == null) 
      _FOLLOW_ID_in_atom680 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_atom680;
  }

  static BitSet _FOLLOW_INT_in_atom694 = null;
  static BitSet get FOLLOW_INT_in_atom694() {
    if(_FOLLOW_INT_in_atom694 == null) 
      _FOLLOW_INT_in_atom694 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom694;
  }

  static BitSet _FOLLOW_21_in_atom708 = null;
  static BitSet get FOLLOW_21_in_atom708() {
    if(_FOLLOW_21_in_atom708 == null) 
      _FOLLOW_21_in_atom708 = 
        new BitSet.fromList([0x0000000000206000]);
    return _FOLLOW_21_in_atom708;
  }

  static BitSet _FOLLOW_expr_in_atom710 = null;
  static BitSet get FOLLOW_expr_in_atom710() {
    if(_FOLLOW_expr_in_atom710 == null) 
      _FOLLOW_expr_in_atom710 = 
        new BitSet.fromList([0x0000000000400000]);
    return _FOLLOW_expr_in_atom710;
  }

  static BitSet _FOLLOW_22_in_atom712 = null;
  static BitSet get FOLLOW_22_in_atom712() {
    if(_FOLLOW_22_in_atom712 == null) 
      _FOLLOW_22_in_atom712 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_22_in_atom712;
  }



 }


class DFA2 extends DFA {

  DFA2(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 2;
    this.eot = t047treeparserParser.DFA2_eot;
    this.eof = t047treeparserParser.DFA2_eof;
    this.min = t047treeparserParser.DFA2_min;
    this.max = t047treeparserParser.DFA2_max;
    this.accept = t047treeparserParser.DFA2_accept;
    this.special = t047treeparserParser.DFA2_special;
    this.transition = t047treeparserParser.DFA2_transition;
  }

  String get description() => 
        """20:1: declaration : ( variable | functionHeader ';' -> ^( FUNC_DECL functionHeader ) | 
functionHeader block -> ^( FUNC_DEF functionHeader block ) ); """;

}



class t047treeparserParser_program_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_declaration_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_variable_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_declarator_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_functionHeader_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_formalParameter_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_block_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_stat_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_forStat_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_assignStat_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_expr_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_condExpr_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_aexpr_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t047treeparserParser_atom_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

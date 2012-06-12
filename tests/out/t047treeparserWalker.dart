// $ANTLR 3.4 t047treeparserWalker.g 2012-06-07 21:59:34
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t047treeparserWalker extends TreeParser {

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
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t047treeparserWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t047treeparserWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t047treeparserWalker._tokenNames;

  String get grammarFileName() => "t047treeparserWalker.g";

  String getRecognizerClassName() => "t047treeparserWalker";


  // $ANTLR start "program"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   9:1: program : ( declaration )+ ;*/
  void program() {
    this.traceIn("program", 1);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       10:5: ( ( declaration )+ )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       10:9: ( declaration )+*/
      {
      	/* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      	 10:9: ( declaration )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if(((LA1_0 >= FUNC_DECL && LA1_0 <= FUNC_DEF)
      	    || LA1_0 == 18/*VAR_DEF*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      			   10:9: declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_declaration_in_program50);
      			  	this.declaration();

      			  	this.state.fsp--;


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

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("program", 1);
  	}
  	return ;
  }
  // $ANTLR end "program"


  // $ANTLR start "declaration"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   13:1: declaration : ( variable | ^( FUNC_DECL functionHeader ) | 
   ^( FUNC_DEF functionHeader block ) );*/
  void declaration() {
    this.traceIn("declaration", 2);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g: 
       14:5: ( variable | ^( FUNC_DECL functionHeader ) | ^( FUNC_DEF functionHeader block ) ) */
      int alt2 = 3;
      switch(this.input.LA(1)) {
      case VAR_DEF:
        {
        alt2 = 1;
        }
        break;
      case FUNC_DECL:
        {
        alt2 = 2;
        }
        break;
      case FUNC_DEF:
        {
        alt2 = 3;
        }
        break;
      default:
        NoViableAltException nvae =
            new NoViableAltException("", 2, 0, this.input);

        throw nvae;

      }

      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           14:9: variable*/
          {
          	this.pushFollow(FOLLOW_variable_in_declaration70);
          	this.variable();

          	this.state.fsp--;


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           15:9: ^( FUNC_DECL functionHeader )*/
          {
          	this.matchSymbol(this.input,
          	    FUNC_DECL,FOLLOW_FUNC_DECL_in_declaration81); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	this.pushFollow(FOLLOW_functionHeader_in_declaration83);
          	this.functionHeader();

          	this.state.fsp--;


          	this.matchSymbol(this.input, Token.UP, null); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           16:9: ^( FUNC_DEF functionHeader block )*/
          {
          	this.matchSymbol(this.input,
          	    FUNC_DEF,FOLLOW_FUNC_DEF_in_declaration95); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	this.pushFollow(FOLLOW_functionHeader_in_declaration97);
          	this.functionHeader();

          	this.state.fsp--;


          	this.pushFollow(FOLLOW_block_in_declaration99);
          	this.block();

          	this.state.fsp--;


          	this.matchSymbol(this.input, Token.UP, null); 


          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("declaration", 2);
  	}
  	return ;
  }
  // $ANTLR end "declaration"


  // $ANTLR start "variable"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   19:1: variable returns [String res] : ^( VAR_DEF type declarator ) ;*/
  String variable() {
    this.traceIn("variable", 3);
    String res = null;


    t047treeparserWalker_declarator_return declarator1 =null;


    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       20:5: ( ^( VAR_DEF type declarator ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       20:9: ^( VAR_DEF type declarator )*/
      {
      	this.matchSymbol(this.input,
      	    VAR_DEF,FOLLOW_VAR_DEF_in_variable124); 


      	this.matchSymbol(this.input, Token.DOWN, null); 
      	this.pushFollow(FOLLOW_type_in_variable126);
      	this.type();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_declarator_in_variable128);
      	declarator1 = this.declarator();

      	this.state.fsp--;


      	this.matchSymbol(this.input, Token.UP, null); 


      	 
      	            res =  (declarator1 != null) ? this.input.tokenStream.toRangeString(this.input.treeAdaptor.getTokenStartIndex(declarator1.start),this.input.treeAdaptor.getTokenStopIndex(declarator1.start)):null;
      	        


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("variable", 3);
  	}
  	return res;
  }
  // $ANTLR end "variable"


  // $ANTLR start "declarator"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   26:1: declarator : ID ;*/
  t047treeparserWalker_declarator_return declarator() {
    this.traceIn("declarator", 4);
    t047treeparserWalker_declarator_return retval = new t047treeparserWalker_declarator_return();
    retval.start = this.input.LT(1);


    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       27:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       27:9: ID*/
      {
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_declarator158); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("declarator", 4);
  	}
  	return retval;
  }
  // $ANTLR end "declarator"


  // $ANTLR start "functionHeader"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   30:1: functionHeader : ^( FUNC_HDR type ID ( formalParameter )+ ) ;*/
  void functionHeader() {
    this.traceIn("functionHeader", 5);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       31:5: ( ^( FUNC_HDR type ID ( formalParameter )+ ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       31:9: ^( FUNC_HDR type ID ( formalParameter )+ )*/
      {
      	this.matchSymbol(this.input,
      	    FUNC_HDR,FOLLOW_FUNC_HDR_in_functionHeader179); 


      	this.matchSymbol(this.input, Token.DOWN, null); 
      	this.pushFollow(FOLLOW_type_in_functionHeader181);
      	this.type();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_functionHeader183); 


      	/* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      	 31:28: ( formalParameter )+*/
      	int cnt3 = 0;
      	loop3:
      	do {
      	  int alt3 = 2;
      	  int LA3_0 = this.input.LA(1);

      	  if((LA3_0 == 4/*ARG_DEF*/)) {
      	    alt3 = 1;
      	  }


      	  switch (alt3) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      			   31:28: formalParameter*/
      			  {
      			  	this.pushFollow(FOLLOW_formalParameter_in_functionHeader185);
      			  	this.formalParameter();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    if(cnt3 >= 1) break loop3;
      	        EarlyExitException eee = new EarlyExitException(3, this.input);
      	        throw eee;
      	  }
      	  cnt3++;
      	} while(true);


      	this.matchSymbol(this.input, Token.UP, null); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("functionHeader", 5);
  	}
  	return ;
  }
  // $ANTLR end "functionHeader"


  // $ANTLR start "formalParameter"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   34:1: formalParameter : ^( ARG_DEF type declarator ) ;*/
  void formalParameter() {
    this.traceIn("formalParameter", 6);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       35:5: ( ^( ARG_DEF type declarator ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       35:9: ^( ARG_DEF type declarator )*/
      {
      	this.matchSymbol(this.input,
      	    ARG_DEF,FOLLOW_ARG_DEF_in_formalParameter207); 


      	this.matchSymbol(this.input, Token.DOWN, null); 
      	this.pushFollow(FOLLOW_type_in_formalParameter209);
      	this.type();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_declarator_in_formalParameter211);
      	this.declarator();

      	this.state.fsp--;


      	this.matchSymbol(this.input, Token.UP, null); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("formalParameter", 6);
  	}
  	return ;
  }
  // $ANTLR end "formalParameter"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   38:1: type : ( 'int' | 'char' | 'void' | ID );*/
  void type() {
    this.traceIn("type", 7);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       39:5: ( 'int' | 'char' | 'void' | ID )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      */
      {
      	if(this.input.LA(1) == CHAR
      	  || this.input.LA(1) == ID
      	  || this.input.LA(1) == INT_TYPE
      	  || this.input.LA(1) == VOID) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("type", 7);
  	}
  	return ;
  }
  // $ANTLR end "type"


  // $ANTLR start "block"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   45:1: block : ^( BLOCK ( variable )* ( stat )* ) ;*/
  void block() {
    this.traceIn("block", 8);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       46:5: ( ^( BLOCK ( variable )* ( stat )* ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       46:9: ^( BLOCK ( variable )* ( stat )* )*/
      {
      	this.matchSymbol(this.input,
      	    BLOCK,FOLLOW_BLOCK_in_block289); 


      	if(this.input.LA(1) == Token.DOWN) {
      	  this.matchSymbol(input, Token.DOWN, null); 
      	  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      	   46:17: ( variable )**/
      	  loop4:
      	  do {
      	    int alt4 = 2;
      	    int LA4_0 = this.input.LA(1);

      	    if((LA4_0 == 18/*VAR_DEF*/)) {
      	      alt4 = 1;
      	    }


      	    switch (alt4) {
      	  		case 1 :
      	  		  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      	  		   46:17: variable*/
      	  		  {
      	  		  	this.pushFollow(FOLLOW_variable_in_block291);
      	  		  	this.variable();

      	  		  	this.state.fsp--;


      	  		  }
      	  		  break;

      	  		default :
      	  	    break loop4;
      	    }
      	  } while(true);


      	  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      	   46:27: ( stat )**/
      	  loop5:
      	  do {
      	    int alt5 = 2;
      	    int LA5_0 = this.input.LA(1);

      	    if((LA5_0 == 5/*BLOCK*/
      	      || (LA5_0 >= EQ && LA5_0 <= FOR)
      	      || (LA5_0 >= ID && LA5_0 <= INT)
      	      || (LA5_0 >= LT && LA5_0 <= PLUS))) {
      	      alt5 = 1;
      	    }


      	    switch (alt5) {
      	  		case 1 :
      	  		  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      	  		   46:27: stat*/
      	  		  {
      	  		  	this.pushFollow(FOLLOW_stat_in_block294);
      	  		  	this.stat();

      	  		  	this.state.fsp--;


      	  		  }
      	  		  break;

      	  		default :
      	  	    break loop5;
      	    }
      	  } while(true);


      	  this.matchSymbol(this.input, Token.UP, null); 
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("block", 8);
  	}
  	return ;
  }
  // $ANTLR end "block"


  // $ANTLR start "stat"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   49:1: stat : ( forStat | expr | block );*/
  void stat() {
    this.traceIn("stat", 9);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g: 
       49:5: ( forStat | expr | block )*/
      int alt6 = 3;
      switch(this.input.LA(1)) {
      case FOR:
        {
        alt6 = 1;
        }
        break;
      case EQ:
      case EQEQ:
      case ID:
      case INT:
      case LT:
      case PLUS:
        {
        alt6 = 2;
        }
        break;
      case BLOCK:
        {
        alt6 = 3;
        }
        break;
      default:
        NoViableAltException nvae =
            new NoViableAltException("", 6, 0, this.input);

        throw nvae;

      }

      switch (alt6) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           49:7: forStat*/
          {
          	this.pushFollow(FOLLOW_forStat_in_stat308);
          	this.forStat();

          	this.state.fsp--;


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           50:7: expr*/
          {
          	this.pushFollow(FOLLOW_expr_in_stat316);
          	this.expr();

          	this.state.fsp--;


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           51:7: block*/
          {
          	this.pushFollow(FOLLOW_block_in_stat324);
          	this.block();

          	this.state.fsp--;


          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("stat", 9);
  	}
  	return ;
  }
  // $ANTLR end "stat"


  // $ANTLR start "forStat"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   54:1: forStat : ^( 'for' expr expr expr block ) ;*/
  void forStat() {
    this.traceIn("forStat", 10);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       55:5: ( ^( 'for' expr expr expr block ) )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       55:9: ^( 'for' expr expr expr block )*/
      {
      	this.matchSymbol(this.input,
      	    FOR,FOLLOW_FOR_in_forStat344); 


      	this.matchSymbol(this.input, Token.DOWN, null); 
      	this.pushFollow(FOLLOW_expr_in_forStat346);
      	this.expr();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_expr_in_forStat348);
      	this.expr();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_expr_in_forStat350);
      	this.expr();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_block_in_forStat352);
      	this.block();

      	this.state.fsp--;


      	this.matchSymbol(this.input, Token.UP, null); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("forStat", 10);
  	}
  	return ;
  }
  // $ANTLR end "forStat"


  // $ANTLR start "expr"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   58:1: expr : ( ^( EQEQ expr expr ) | ^( LT expr expr ) | ^( PLUS expr expr ) | 
   ^( EQ ID expr ) | atom );*/
  void expr() {
    this.traceIn("expr", 11);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g: 
       58:5: ( ^( EQEQ expr expr ) | ^( LT expr expr ) | ^( PLUS expr expr ) | 
       ^( EQ ID expr ) | atom )*/
      int alt7 = 5;
      switch(this.input.LA(1)) {
      case EQEQ:
        {
        alt7 = 1;
        }
        break;
      case LT:
        {
        alt7 = 2;
        }
        break;
      case PLUS:
        {
        alt7 = 3;
        }
        break;
      case EQ:
        {
        alt7 = 4;
        }
        break;
      case ID:
      case INT:
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
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           58:9: ^( EQEQ expr expr )*/
          {
          	this.matchSymbol(this.input,
          	    EQEQ,FOLLOW_EQEQ_in_expr368); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	this.pushFollow(FOLLOW_expr_in_expr370);
          	this.expr();

          	this.state.fsp--;


          	this.pushFollow(FOLLOW_expr_in_expr372);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input, Token.UP, null); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           59:9: ^( LT expr expr )*/
          {
          	this.matchSymbol(this.input,
          	    LT,FOLLOW_LT_in_expr384); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	this.pushFollow(FOLLOW_expr_in_expr386);
          	this.expr();

          	this.state.fsp--;


          	this.pushFollow(FOLLOW_expr_in_expr388);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input, Token.UP, null); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           60:9: ^( PLUS expr expr )*/
          {
          	this.matchSymbol(this.input,
          	    PLUS,FOLLOW_PLUS_in_expr400); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	this.pushFollow(FOLLOW_expr_in_expr402);
          	this.expr();

          	this.state.fsp--;


          	this.pushFollow(FOLLOW_expr_in_expr404);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input, Token.UP, null); 


          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           61:9: ^( EQ ID expr )*/
          {
          	this.matchSymbol(this.input,
          	    EQ,FOLLOW_EQ_in_expr416); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_expr418); 


          	this.pushFollow(FOLLOW_expr_in_expr420);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input, Token.UP, null); 


          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
           62:9: atom*/
          {
          	this.pushFollow(FOLLOW_atom_in_expr431);
          	this.atom();

          	this.state.fsp--;


          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("expr", 11);
  	}
  	return ;
  }
  // $ANTLR end "expr"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
   65:1: atom : ( ID | INT );*/
  void atom() {
    this.traceIn("atom", 12);
    try {
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
       66:5: ( ID | INT )*/
      /* ../runtime/dart/tests/grammars/t047treeparserWalker.g:
      */
      {
      	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("atom", 12);
  	}
  	return ;
  }
  // $ANTLR end "atom"



 

  static BitSet _FOLLOW_declaration_in_program50 = null;
  static BitSet get FOLLOW_declaration_in_program50() {
    if(_FOLLOW_declaration_in_program50 == null) 
      _FOLLOW_declaration_in_program50 = 
        new BitSet.fromList([0x0000000000040C02]);
    return _FOLLOW_declaration_in_program50;
  }

  static BitSet _FOLLOW_variable_in_declaration70 = null;
  static BitSet get FOLLOW_variable_in_declaration70() {
    if(_FOLLOW_variable_in_declaration70 == null) 
      _FOLLOW_variable_in_declaration70 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_variable_in_declaration70;
  }

  static BitSet _FOLLOW_FUNC_DECL_in_declaration81 = null;
  static BitSet get FOLLOW_FUNC_DECL_in_declaration81() {
    if(_FOLLOW_FUNC_DECL_in_declaration81 == null) 
      _FOLLOW_FUNC_DECL_in_declaration81 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_FUNC_DECL_in_declaration81;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration83 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration83() {
    if(_FOLLOW_functionHeader_in_declaration83 == null) 
      _FOLLOW_functionHeader_in_declaration83 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_functionHeader_in_declaration83;
  }

  static BitSet _FOLLOW_FUNC_DEF_in_declaration95 = null;
  static BitSet get FOLLOW_FUNC_DEF_in_declaration95() {
    if(_FOLLOW_FUNC_DEF_in_declaration95 == null) 
      _FOLLOW_FUNC_DEF_in_declaration95 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_FUNC_DEF_in_declaration95;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration97 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration97() {
    if(_FOLLOW_functionHeader_in_declaration97 == null) 
      _FOLLOW_functionHeader_in_declaration97 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_functionHeader_in_declaration97;
  }

  static BitSet _FOLLOW_block_in_declaration99 = null;
  static BitSet get FOLLOW_block_in_declaration99() {
    if(_FOLLOW_block_in_declaration99 == null) 
      _FOLLOW_block_in_declaration99 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_block_in_declaration99;
  }

  static BitSet _FOLLOW_VAR_DEF_in_variable124 = null;
  static BitSet get FOLLOW_VAR_DEF_in_variable124() {
    if(_FOLLOW_VAR_DEF_in_variable124 == null) 
      _FOLLOW_VAR_DEF_in_variable124 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_VAR_DEF_in_variable124;
  }

  static BitSet _FOLLOW_type_in_variable126 = null;
  static BitSet get FOLLOW_type_in_variable126() {
    if(_FOLLOW_type_in_variable126 == null) 
      _FOLLOW_type_in_variable126 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_type_in_variable126;
  }

  static BitSet _FOLLOW_declarator_in_variable128 = null;
  static BitSet get FOLLOW_declarator_in_variable128() {
    if(_FOLLOW_declarator_in_variable128 == null) 
      _FOLLOW_declarator_in_variable128 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_declarator_in_variable128;
  }

  static BitSet _FOLLOW_ID_in_declarator158 = null;
  static BitSet get FOLLOW_ID_in_declarator158() {
    if(_FOLLOW_ID_in_declarator158 == null) 
      _FOLLOW_ID_in_declarator158 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_declarator158;
  }

  static BitSet _FOLLOW_FUNC_HDR_in_functionHeader179 = null;
  static BitSet get FOLLOW_FUNC_HDR_in_functionHeader179() {
    if(_FOLLOW_FUNC_HDR_in_functionHeader179 == null) 
      _FOLLOW_FUNC_HDR_in_functionHeader179 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_FUNC_HDR_in_functionHeader179;
  }

  static BitSet _FOLLOW_type_in_functionHeader181 = null;
  static BitSet get FOLLOW_type_in_functionHeader181() {
    if(_FOLLOW_type_in_functionHeader181 == null) 
      _FOLLOW_type_in_functionHeader181 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_type_in_functionHeader181;
  }

  static BitSet _FOLLOW_ID_in_functionHeader183 = null;
  static BitSet get FOLLOW_ID_in_functionHeader183() {
    if(_FOLLOW_ID_in_functionHeader183 == null) 
      _FOLLOW_ID_in_functionHeader183 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_ID_in_functionHeader183;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader185 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader185() {
    if(_FOLLOW_formalParameter_in_functionHeader185 == null) 
      _FOLLOW_formalParameter_in_functionHeader185 = 
        new BitSet.fromList([0x0000000000000018]);
    return _FOLLOW_formalParameter_in_functionHeader185;
  }

  static BitSet _FOLLOW_ARG_DEF_in_formalParameter207 = null;
  static BitSet get FOLLOW_ARG_DEF_in_formalParameter207() {
    if(_FOLLOW_ARG_DEF_in_formalParameter207 == null) 
      _FOLLOW_ARG_DEF_in_formalParameter207 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ARG_DEF_in_formalParameter207;
  }

  static BitSet _FOLLOW_type_in_formalParameter209 = null;
  static BitSet get FOLLOW_type_in_formalParameter209() {
    if(_FOLLOW_type_in_formalParameter209 == null) 
      _FOLLOW_type_in_formalParameter209 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_type_in_formalParameter209;
  }

  static BitSet _FOLLOW_declarator_in_formalParameter211 = null;
  static BitSet get FOLLOW_declarator_in_formalParameter211() {
    if(_FOLLOW_declarator_in_formalParameter211 == null) 
      _FOLLOW_declarator_in_formalParameter211 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_declarator_in_formalParameter211;
  }

  static BitSet _FOLLOW_BLOCK_in_block289 = null;
  static BitSet get FOLLOW_BLOCK_in_block289() {
    if(_FOLLOW_BLOCK_in_block289 == null) 
      _FOLLOW_BLOCK_in_block289 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_BLOCK_in_block289;
  }

  static BitSet _FOLLOW_variable_in_block291 = null;
  static BitSet get FOLLOW_variable_in_block291() {
    if(_FOLLOW_variable_in_block291 == null) 
      _FOLLOW_variable_in_block291 = 
        new BitSet.fromList([0x00000000000763A8]);
    return _FOLLOW_variable_in_block291;
  }

  static BitSet _FOLLOW_stat_in_block294 = null;
  static BitSet get FOLLOW_stat_in_block294() {
    if(_FOLLOW_stat_in_block294 == null) 
      _FOLLOW_stat_in_block294 = 
        new BitSet.fromList([0x00000000000363A8]);
    return _FOLLOW_stat_in_block294;
  }

  static BitSet _FOLLOW_forStat_in_stat308 = null;
  static BitSet get FOLLOW_forStat_in_stat308() {
    if(_FOLLOW_forStat_in_stat308 == null) 
      _FOLLOW_forStat_in_stat308 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_forStat_in_stat308;
  }

  static BitSet _FOLLOW_expr_in_stat316 = null;
  static BitSet get FOLLOW_expr_in_stat316() {
    if(_FOLLOW_expr_in_stat316 == null) 
      _FOLLOW_expr_in_stat316 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expr_in_stat316;
  }

  static BitSet _FOLLOW_block_in_stat324 = null;
  static BitSet get FOLLOW_block_in_stat324() {
    if(_FOLLOW_block_in_stat324 == null) 
      _FOLLOW_block_in_stat324 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_stat324;
  }

  static BitSet _FOLLOW_FOR_in_forStat344 = null;
  static BitSet get FOLLOW_FOR_in_forStat344() {
    if(_FOLLOW_FOR_in_forStat344 == null) 
      _FOLLOW_FOR_in_forStat344 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_FOR_in_forStat344;
  }

  static BitSet _FOLLOW_expr_in_forStat346 = null;
  static BitSet get FOLLOW_expr_in_forStat346() {
    if(_FOLLOW_expr_in_forStat346 == null) 
      _FOLLOW_expr_in_forStat346 = 
        new BitSet.fromList([0x0000000000036180]);
    return _FOLLOW_expr_in_forStat346;
  }

  static BitSet _FOLLOW_expr_in_forStat348 = null;
  static BitSet get FOLLOW_expr_in_forStat348() {
    if(_FOLLOW_expr_in_forStat348 == null) 
      _FOLLOW_expr_in_forStat348 = 
        new BitSet.fromList([0x0000000000036180]);
    return _FOLLOW_expr_in_forStat348;
  }

  static BitSet _FOLLOW_expr_in_forStat350 = null;
  static BitSet get FOLLOW_expr_in_forStat350() {
    if(_FOLLOW_expr_in_forStat350 == null) 
      _FOLLOW_expr_in_forStat350 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_expr_in_forStat350;
  }

  static BitSet _FOLLOW_block_in_forStat352 = null;
  static BitSet get FOLLOW_block_in_forStat352() {
    if(_FOLLOW_block_in_forStat352 == null) 
      _FOLLOW_block_in_forStat352 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_block_in_forStat352;
  }

  static BitSet _FOLLOW_EQEQ_in_expr368 = null;
  static BitSet get FOLLOW_EQEQ_in_expr368() {
    if(_FOLLOW_EQEQ_in_expr368 == null) 
      _FOLLOW_EQEQ_in_expr368 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_EQEQ_in_expr368;
  }

  static BitSet _FOLLOW_expr_in_expr370 = null;
  static BitSet get FOLLOW_expr_in_expr370() {
    if(_FOLLOW_expr_in_expr370 == null) 
      _FOLLOW_expr_in_expr370 = 
        new BitSet.fromList([0x0000000000036180]);
    return _FOLLOW_expr_in_expr370;
  }

  static BitSet _FOLLOW_expr_in_expr372 = null;
  static BitSet get FOLLOW_expr_in_expr372() {
    if(_FOLLOW_expr_in_expr372 == null) 
      _FOLLOW_expr_in_expr372 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_expr_in_expr372;
  }

  static BitSet _FOLLOW_LT_in_expr384 = null;
  static BitSet get FOLLOW_LT_in_expr384() {
    if(_FOLLOW_LT_in_expr384 == null) 
      _FOLLOW_LT_in_expr384 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_LT_in_expr384;
  }

  static BitSet _FOLLOW_expr_in_expr386 = null;
  static BitSet get FOLLOW_expr_in_expr386() {
    if(_FOLLOW_expr_in_expr386 == null) 
      _FOLLOW_expr_in_expr386 = 
        new BitSet.fromList([0x0000000000036180]);
    return _FOLLOW_expr_in_expr386;
  }

  static BitSet _FOLLOW_expr_in_expr388 = null;
  static BitSet get FOLLOW_expr_in_expr388() {
    if(_FOLLOW_expr_in_expr388 == null) 
      _FOLLOW_expr_in_expr388 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_expr_in_expr388;
  }

  static BitSet _FOLLOW_PLUS_in_expr400 = null;
  static BitSet get FOLLOW_PLUS_in_expr400() {
    if(_FOLLOW_PLUS_in_expr400 == null) 
      _FOLLOW_PLUS_in_expr400 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_PLUS_in_expr400;
  }

  static BitSet _FOLLOW_expr_in_expr402 = null;
  static BitSet get FOLLOW_expr_in_expr402() {
    if(_FOLLOW_expr_in_expr402 == null) 
      _FOLLOW_expr_in_expr402 = 
        new BitSet.fromList([0x0000000000036180]);
    return _FOLLOW_expr_in_expr402;
  }

  static BitSet _FOLLOW_expr_in_expr404 = null;
  static BitSet get FOLLOW_expr_in_expr404() {
    if(_FOLLOW_expr_in_expr404 == null) 
      _FOLLOW_expr_in_expr404 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_expr_in_expr404;
  }

  static BitSet _FOLLOW_EQ_in_expr416 = null;
  static BitSet get FOLLOW_EQ_in_expr416() {
    if(_FOLLOW_EQ_in_expr416 == null) 
      _FOLLOW_EQ_in_expr416 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_EQ_in_expr416;
  }

  static BitSet _FOLLOW_ID_in_expr418 = null;
  static BitSet get FOLLOW_ID_in_expr418() {
    if(_FOLLOW_ID_in_expr418 == null) 
      _FOLLOW_ID_in_expr418 = 
        new BitSet.fromList([0x0000000000036180]);
    return _FOLLOW_ID_in_expr418;
  }

  static BitSet _FOLLOW_expr_in_expr420 = null;
  static BitSet get FOLLOW_expr_in_expr420() {
    if(_FOLLOW_expr_in_expr420 == null) 
      _FOLLOW_expr_in_expr420 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_expr_in_expr420;
  }

  static BitSet _FOLLOW_atom_in_expr431 = null;
  static BitSet get FOLLOW_atom_in_expr431() {
    if(_FOLLOW_atom_in_expr431 == null) 
      _FOLLOW_atom_in_expr431 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_atom_in_expr431;
  }



 }




class t047treeparserWalker_declarator_return extends TreeRuleReturnScope {
}

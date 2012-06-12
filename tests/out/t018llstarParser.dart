// $ANTLR 3.4 t018llstarParser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t018llstarParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'('", "')'", 
    "'+'", "','", "';'", "'<'", "'='", "'=='", "'char'", "'for'", "'int'", 
    "'void'", "'{'", "'}'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int T__12 = 12;
  static final int T__13 = 13;
  static final int T__14 = 14;
  static final int T__15 = 15;
  static final int T__16 = 16;
  static final int T__17 = 17;
  static final int T__18 = 18;
  static final int T__19 = 19;
  static final int T__20 = 20;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      

  Map<String, DFA> dfas;


  t018llstarParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();

	  this.olog = new List();

	  this.dfas["dfa2"] = new DFA2(this);
  }



  t018llstarParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();

    this.olog = new List();

    
    this.dfas["dfa2"] = new DFA2(this);
  }    

  List<String> get tokenNames() => t018llstarParser._tokenNames;

  String get grammarFileName() => "t018llstar.g";

  String getRecognizerClassName() => "t018llstarParser";


  List olog;

  void outputMsg(msg) {
    this.olog.add(msg);
  }


  // $ANTLR start "program"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   19:1: program : ( declaration )+ ;*/
  void program() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       20:5: ( ( declaration )+ )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       20:9: ( declaration )+*/
      {
      	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	 20:9: ( declaration )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/
      	    || LA1_0 == 15/*15*/
      	    || (LA1_0 >= 17 && LA1_0 <= 18))) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t018llstar.g:
      			   20:9: declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_declaration_in_program42);
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
  	}
  	return ;
  }
  // $ANTLR end "program"


  // $ANTLR start "declaration"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   32:1: declaration : ( variable | functionHeader ';' | functionHeader block );*/
  void declaration() {
    String functionHeader1 =null;

    String functionHeader2 =null;


    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g: 
       33:5: ( variable | functionHeader ';' | functionHeader block )*/
      int alt2 = 3;
      alt2 = this.dfas["dfa2"].predict(this.input);
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           33:9: variable*/
          {
          	this.pushFollow(FOLLOW_variable_in_declaration64);
          	this.variable();

          	this.state.fsp--;


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           34:9: functionHeader ';'*/
          {
          	this.pushFollow(FOLLOW_functionHeader_in_declaration74);
          	functionHeader1 = this.functionHeader();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_declaration76); 


          	this.outputMsg("${functionHeader1} is a declaration");


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           36:9: functionHeader block*/
          {
          	this.pushFollow(FOLLOW_functionHeader_in_declaration89);
          	functionHeader2 = this.functionHeader();

          	this.state.fsp--;


          	this.pushFollow(FOLLOW_block_in_declaration91);
          	this.block();

          	this.state.fsp--;


          	this.outputMsg("${functionHeader2} is a definition");


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
  	}
  	return ;
  }
  // $ANTLR end "declaration"


  // $ANTLR start "variable"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   40:1: variable : type declarator ';' ;*/
  void variable() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       41:5: ( type declarator ';' )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       41:9: type declarator ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_variable113);
      	this.type();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_declarator_in_variable115);
      	this.declarator();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_variable117); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "variable"


  // $ANTLR start "declarator"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   44:1: declarator : ID ;*/
  void declarator() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       45:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       45:9: ID*/
      {
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_declarator136); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "declarator"


  // $ANTLR start "functionHeader"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   48:1: functionHeader returns [String name] : type ID '(' ( formalParameter ( ',' formalParameter )* )? ')' ;*/
  String functionHeader() {
    String name = null;


    Token ID3 = null;

    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       49:5: ( type ID '(' ( formalParameter ( ',' formalParameter )* )? ')' )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       49:9: type ID '(' ( formalParameter ( ',' formalParameter )* )? ')'*/
      {
      	this.pushFollow(FOLLOW_type_in_functionHeader160);
      	this.type();

      	this.state.fsp--;


      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_functionHeader162); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_functionHeader164); 


      	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	 49:21: ( formalParameter ( ',' formalParameter )* )?*/
      	int alt4 = 2;
      	int LA4_0 = this.input.LA(1);

      	if((LA4_0 == 4/*ID*/
      	  || LA4_0 == 15/*15*/
      	  || (LA4_0 >= 17 && LA4_0 <= 18))) {
      	  alt4 = 1;
      	}
      	switch (alt4) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t018llstar.g:
      	     49:23: formalParameter ( ',' formalParameter )**/
      	    {
      	    	this.pushFollow(FOLLOW_formalParameter_in_functionHeader168);
      	    	this.formalParameter();

      	    	this.state.fsp--;


      	    	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	    	 49:39: ( ',' formalParameter )**/
      	    	loop3:
      	    	do {
      	    	  int alt3 = 2;
      	    	  int LA3_0 = this.input.LA(1);

      	    	  if((LA3_0 == 10/*10*/)) {
      	    	    alt3 = 1;
      	    	  }


      	    	  switch (alt3) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t018llstar.g:
      	    			   49:41: ',' formalParameter*/
      	    			  {
      	    			  	this.matchSymbol(this.input,
      	    			  	    10,FOLLOW_10_in_functionHeader172); 


      	    			  	this.pushFollow(FOLLOW_formalParameter_in_functionHeader174);
      	    			  	this.formalParameter();

      	    			  	this.state.fsp--;


      	    			  }
      	    			  break;

      	    			default :
      	    		    break loop3;
      	    	  }
      	    	} while(true);


      	    }
      	    break;

      	}


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_functionHeader182); 


      	name =  (ID3 != null) ? ID3.text : null;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return name;
  }
  // $ANTLR end "functionHeader"


  // $ANTLR start "formalParameter"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   53:1: formalParameter : type declarator ;*/
  void formalParameter() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       54:5: ( type declarator )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       54:9: type declarator*/
      {
      	this.pushFollow(FOLLOW_type_in_formalParameter204);
      	this.type();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_declarator_in_formalParameter206);
      	this.declarator();

      	this.state.fsp--;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "formalParameter"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   57:1: type : ( 'int' | 'char' | 'void' | ID );*/
  void type() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       58:5: ( 'int' | 'char' | 'void' | ID )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
      */
      {
      	if(this.input.LA(1) == ID
      	  || this.input.LA(1) == 15
      	  || (this.input.LA(1) >= 17 && this.input.LA(1) <= 18)) {
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
  	}
  	return ;
  }
  // $ANTLR end "type"


  // $ANTLR start "block"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   64:1: block : '{' ( variable )* ( stat )* '}' ;*/
  void block() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       65:5: ( '{' ( variable )* ( stat )* '}' )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       65:9: '{' ( variable )* ( stat )* '}'*/
      {
      	this.matchSymbol(this.input,
      	    19,FOLLOW_19_in_block295); 


      	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	 66:13: ( variable )**/
      	loop5:
      	do {
      	  int alt5 = 2;
      	  int LA5_0 = this.input.LA(1);

      	  if((LA5_0 == 4/*ID*/)) {
      	    int LA5_2 = this.input.LA(2);

      	    if((LA5_2 == 4/*ID*/)) {
      	      alt5 = 1;
      	    }


      	  }
      	  else if((LA5_0 == 15/*15*/
      	    || (LA5_0 >= 17 && LA5_0 <= 18))) {
      	    alt5 = 1;
      	  }


      	  switch (alt5) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t018llstar.g:
      			   66:13: variable*/
      			  {
      			  	this.pushFollow(FOLLOW_variable_in_block309);
      			  	this.variable();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop5;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	 67:13: ( stat )**/
      	loop6:
      	do {
      	  int alt6 = 2;
      	  int LA6_0 = this.input.LA(1);

      	  if(((LA6_0 >= ID && LA6_0 <= INT)
      	    || LA6_0 == 7/*7*/
      	    || LA6_0 == 11/*11*/
      	    || LA6_0 == 16/*16*/
      	    || LA6_0 == 19/*19*/)) {
      	    alt6 = 1;
      	  }


      	  switch (alt6) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t018llstar.g:
      			   67:13: stat*/
      			  {
      			  	this.pushFollow(FOLLOW_stat_in_block324);
      			  	this.stat();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop6;
      	  }
      	} while(true);


      	this.matchSymbol(this.input,
      	    20,FOLLOW_20_in_block335); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "block"


  // $ANTLR start "stat"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   71:1: stat : ( forStat | expr ';' | block | assignStat ';' | ';' );*/
  void stat() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g: 
       71:5: ( forStat | expr ';' | block | assignStat ';' | ';' )*/
      int alt7 = 5;
      switch(this.input.LA(1)) {
      case 16:
        {
        alt7 = 1;
        }
        break;
      case ID:
        {
        int LA7_2 = this.input.LA(2);

        if((LA7_2 == 13/*13*/)) {
          alt7 = 4;
        }
        else if((LA7_2 == 9/*9*/
          || (LA7_2 >= 11 && LA7_2 <= 12)
          || LA7_2 == 14/*14*/)) {
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
      case 7:
        {
        alt7 = 2;
        }
        break;
      case 19:
        {
        alt7 = 3;
        }
        break;
      case 11:
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
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           71:7: forStat*/
          {
          	this.pushFollow(FOLLOW_forStat_in_stat347);
          	this.forStat();

          	this.state.fsp--;


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           72:7: expr ';'*/
          {
          	this.pushFollow(FOLLOW_expr_in_stat355);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_stat357); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           73:7: block*/
          {
          	this.pushFollow(FOLLOW_block_in_stat371);
          	this.block();

          	this.state.fsp--;


          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           74:7: assignStat ';'*/
          {
          	this.pushFollow(FOLLOW_assignStat_in_stat379);
          	this.assignStat();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_stat381); 


          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           75:7: ';'*/
          {
          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_stat389); 


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
  	}
  	return ;
  }
  // $ANTLR end "stat"


  // $ANTLR start "forStat"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   78:1: forStat : 'for' '(' assignStat ';' expr ';' assignStat ')' block ;*/
  void forStat() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       79:5: ( 'for' '(' assignStat ';' expr ';' assignStat ')' block )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       79:9: 'for' '(' assignStat ';' expr ';' assignStat ')' block*/
      {
      	this.matchSymbol(this.input,
      	    16,FOLLOW_16_in_forStat408); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_forStat410); 


      	this.pushFollow(FOLLOW_assignStat_in_forStat412);
      	this.assignStat();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_forStat414); 


      	this.pushFollow(FOLLOW_expr_in_forStat416);
      	this.expr();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_forStat418); 


      	this.pushFollow(FOLLOW_assignStat_in_forStat420);
      	this.assignStat();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_forStat422); 


      	this.pushFollow(FOLLOW_block_in_forStat424);
      	this.block();

      	this.state.fsp--;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "forStat"


  // $ANTLR start "assignStat"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   82:1: assignStat : ID '=' expr ;*/
  void assignStat() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       83:5: ( ID '=' expr )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       83:9: ID '=' expr*/
      {
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_assignStat451); 


      	this.matchSymbol(this.input,
      	    13,FOLLOW_13_in_assignStat453); 


      	this.pushFollow(FOLLOW_expr_in_assignStat455);
      	this.expr();

      	this.state.fsp--;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "assignStat"


  // $ANTLR start "expr"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   86:1: expr : condExpr ;*/
  void expr() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       86:5: ( condExpr )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       86:9: condExpr*/
      {
      	this.pushFollow(FOLLOW_condExpr_in_expr477);
      	this.condExpr();

      	this.state.fsp--;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "expr"


  // $ANTLR start "condExpr"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   89:1: condExpr : aexpr ( ( '==' | '<' ) aexpr )? ;*/
  void condExpr() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       90:5: ( aexpr ( ( '==' | '<' ) aexpr )? )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       90:9: aexpr ( ( '==' | '<' ) aexpr )?*/
      {
      	this.pushFollow(FOLLOW_aexpr_in_condExpr496);
      	this.aexpr();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	 90:15: ( ( '==' | '<' ) aexpr )?*/
      	int alt8 = 2;
      	int LA8_0 = this.input.LA(1);

      	if((LA8_0 == 12/*12*/
      	  || LA8_0 == 14/*14*/)) {
      	  alt8 = 1;
      	}
      	switch (alt8) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t018llstar.g:
      	     90:17: ( '==' | '<' ) aexpr*/
      	    {
      	    	if(this.input.LA(1) == 12
      	    	  || this.input.LA(1) == 14) {
      	    	  this.input.consume();
      	    	  this.state.errorRecovery = false;
      	    	}
      	    	else {
      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	    	  throw mse;
      	    	}


      	    	this.pushFollow(FOLLOW_aexpr_in_condExpr508);
      	    	this.aexpr();

      	    	this.state.fsp--;


      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "condExpr"


  // $ANTLR start "aexpr"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   93:1: aexpr : atom ( '+' atom )* ;*/
  void aexpr() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       94:5: ( atom ( '+' atom )* )*/
      /* ../runtime/dart/tests/grammars/t018llstar.g:
       94:9: atom ( '+' atom )**/
      {
      	this.pushFollow(FOLLOW_atom_in_aexpr530);
      	this.atom();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t018llstar.g:
      	 94:14: ( '+' atom )**/
      	loop9:
      	do {
      	  int alt9 = 2;
      	  int LA9_0 = this.input.LA(1);

      	  if((LA9_0 == 9/*9*/)) {
      	    alt9 = 1;
      	  }


      	  switch (alt9) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t018llstar.g:
      			   94:16: '+' atom*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    9,FOLLOW_9_in_aexpr534); 


      			  	this.pushFollow(FOLLOW_atom_in_aexpr536);
      			  	this.atom();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop9;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "aexpr"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t018llstar.g:
   97:1: atom : ( ID | INT | '(' expr ')' );*/
  void atom() {
    try {
      /* ../runtime/dart/tests/grammars/t018llstar.g: 
       98:5: ( ID | INT | '(' expr ')' )*/
      int alt10 = 3;
      switch(this.input.LA(1)) {
      case ID:
        {
        alt10 = 1;
        }
        break;
      case INT:
        {
        alt10 = 2;
        }
        break;
      case 7:
        {
        alt10 = 3;
        }
        break;
      default:
        NoViableAltException nvae =
            new NoViableAltException("", 10, 0, this.input);

        throw nvae;

      }

      switch (alt10) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           98:7: ID*/
          {
          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_atom556); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           99:7: INT*/
          {
          	this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_atom570); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t018llstar.g:
           100:7: '(' expr ')'*/
          {
          	this.matchSymbol(this.input,
          	    7,FOLLOW_7_in_atom584); 


          	this.pushFollow(FOLLOW_expr_in_atom586);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    8,FOLLOW_8_in_atom588); 


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
  	}
  	return ;
  }
  // $ANTLR end "atom"



  static final String DFA2_eotS =
      "\u000d\uffff";
  static final String DFA2_eofS =
      "\u000d\uffff";
  static final String DFA2_minS =
      "\u0002\u0004\u0001\u0007\u0001\u0004\u0001\uffff\u0001\u0004\u0001"
      "\u000b\u0001\u0008\u0002\uffff\u0002\u0004\u0001\u0008";
  static final String DFA2_maxS =
      "\u0001\u0012\u0001\u0004\u0001\u000b\u0001\u0012\u0001\uffff\u0001"
      "\u0004\u0001\u0013\u0001\u000a\u0002\uffff\u0001\u0012\u0001\u0004"
      "\u0001\u000a";
  static final String DFA2_acceptS =
      "\u0004\uffff\u0001\u0001\u0003\uffff\u0001\u0002\u0001\u0003\u0003"
      "\uffff";
  static final String DFA2_specialS =
      "\u000d\uffff";
  static final List<String> DFA2_transitionS = const [
      "\u0001\u0001\u000a\uffff\u0001\u0001\u0001\uffff\u0002\u0001",
      "\u0001\u0002",
      "\u0001\u0003\u0003\uffff\u0001\u0004",
      "\u0001\u0005\u0003\uffff\u0001\u0006\u0006\uffff\u0001\u0005\u0001"
      "\uffff\u0002\u0005",
      "",
      "\u0001\u0007",
      "\u0001\u0008\u0007\uffff\u0001\u0009",
      "\u0001\u0006\u0001\uffff\u0001\u000a",
      "",
      "",
      "\u0001\u000b\u000a\uffff\u0001\u000b\u0001\uffff\u0002\u000b",
      "\u0001\u000c",
      "\u0001\u0006\u0001\uffff\u0001\u000a"
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

  static BitSet _FOLLOW_declaration_in_program42 = null;
  static BitSet get FOLLOW_declaration_in_program42() {
    if(_FOLLOW_declaration_in_program42 == null) 
      _FOLLOW_declaration_in_program42 = 
        new BitSet.fromList([0x0000000000068012]);
    return _FOLLOW_declaration_in_program42;
  }

  static BitSet _FOLLOW_variable_in_declaration64 = null;
  static BitSet get FOLLOW_variable_in_declaration64() {
    if(_FOLLOW_variable_in_declaration64 == null) 
      _FOLLOW_variable_in_declaration64 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_variable_in_declaration64;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration74 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration74() {
    if(_FOLLOW_functionHeader_in_declaration74 == null) 
      _FOLLOW_functionHeader_in_declaration74 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_functionHeader_in_declaration74;
  }

  static BitSet _FOLLOW_11_in_declaration76 = null;
  static BitSet get FOLLOW_11_in_declaration76() {
    if(_FOLLOW_11_in_declaration76 == null) 
      _FOLLOW_11_in_declaration76 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_declaration76;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration89 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration89() {
    if(_FOLLOW_functionHeader_in_declaration89 == null) 
      _FOLLOW_functionHeader_in_declaration89 = 
        new BitSet.fromList([0x0000000000080000]);
    return _FOLLOW_functionHeader_in_declaration89;
  }

  static BitSet _FOLLOW_block_in_declaration91 = null;
  static BitSet get FOLLOW_block_in_declaration91() {
    if(_FOLLOW_block_in_declaration91 == null) 
      _FOLLOW_block_in_declaration91 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_declaration91;
  }

  static BitSet _FOLLOW_type_in_variable113 = null;
  static BitSet get FOLLOW_type_in_variable113() {
    if(_FOLLOW_type_in_variable113 == null) 
      _FOLLOW_type_in_variable113 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_variable113;
  }

  static BitSet _FOLLOW_declarator_in_variable115 = null;
  static BitSet get FOLLOW_declarator_in_variable115() {
    if(_FOLLOW_declarator_in_variable115 == null) 
      _FOLLOW_declarator_in_variable115 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_declarator_in_variable115;
  }

  static BitSet _FOLLOW_11_in_variable117 = null;
  static BitSet get FOLLOW_11_in_variable117() {
    if(_FOLLOW_11_in_variable117 == null) 
      _FOLLOW_11_in_variable117 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_variable117;
  }

  static BitSet _FOLLOW_ID_in_declarator136 = null;
  static BitSet get FOLLOW_ID_in_declarator136() {
    if(_FOLLOW_ID_in_declarator136 == null) 
      _FOLLOW_ID_in_declarator136 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_declarator136;
  }

  static BitSet _FOLLOW_type_in_functionHeader160 = null;
  static BitSet get FOLLOW_type_in_functionHeader160() {
    if(_FOLLOW_type_in_functionHeader160 == null) 
      _FOLLOW_type_in_functionHeader160 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_functionHeader160;
  }

  static BitSet _FOLLOW_ID_in_functionHeader162 = null;
  static BitSet get FOLLOW_ID_in_functionHeader162() {
    if(_FOLLOW_ID_in_functionHeader162 == null) 
      _FOLLOW_ID_in_functionHeader162 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_functionHeader162;
  }

  static BitSet _FOLLOW_7_in_functionHeader164 = null;
  static BitSet get FOLLOW_7_in_functionHeader164() {
    if(_FOLLOW_7_in_functionHeader164 == null) 
      _FOLLOW_7_in_functionHeader164 = 
        new BitSet.fromList([0x0000000000068110]);
    return _FOLLOW_7_in_functionHeader164;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader168 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader168() {
    if(_FOLLOW_formalParameter_in_functionHeader168 == null) 
      _FOLLOW_formalParameter_in_functionHeader168 = 
        new BitSet.fromList([0x0000000000000500]);
    return _FOLLOW_formalParameter_in_functionHeader168;
  }

  static BitSet _FOLLOW_10_in_functionHeader172 = null;
  static BitSet get FOLLOW_10_in_functionHeader172() {
    if(_FOLLOW_10_in_functionHeader172 == null) 
      _FOLLOW_10_in_functionHeader172 = 
        new BitSet.fromList([0x0000000000068010]);
    return _FOLLOW_10_in_functionHeader172;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader174 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader174() {
    if(_FOLLOW_formalParameter_in_functionHeader174 == null) 
      _FOLLOW_formalParameter_in_functionHeader174 = 
        new BitSet.fromList([0x0000000000000500]);
    return _FOLLOW_formalParameter_in_functionHeader174;
  }

  static BitSet _FOLLOW_8_in_functionHeader182 = null;
  static BitSet get FOLLOW_8_in_functionHeader182() {
    if(_FOLLOW_8_in_functionHeader182 == null) 
      _FOLLOW_8_in_functionHeader182 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_functionHeader182;
  }

  static BitSet _FOLLOW_type_in_formalParameter204 = null;
  static BitSet get FOLLOW_type_in_formalParameter204() {
    if(_FOLLOW_type_in_formalParameter204 == null) 
      _FOLLOW_type_in_formalParameter204 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_formalParameter204;
  }

  static BitSet _FOLLOW_declarator_in_formalParameter206 = null;
  static BitSet get FOLLOW_declarator_in_formalParameter206() {
    if(_FOLLOW_declarator_in_formalParameter206 == null) 
      _FOLLOW_declarator_in_formalParameter206 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declarator_in_formalParameter206;
  }

  static BitSet _FOLLOW_19_in_block295 = null;
  static BitSet get FOLLOW_19_in_block295() {
    if(_FOLLOW_19_in_block295 == null) 
      _FOLLOW_19_in_block295 = 
        new BitSet.fromList([0x00000000001F88B0]);
    return _FOLLOW_19_in_block295;
  }

  static BitSet _FOLLOW_variable_in_block309 = null;
  static BitSet get FOLLOW_variable_in_block309() {
    if(_FOLLOW_variable_in_block309 == null) 
      _FOLLOW_variable_in_block309 = 
        new BitSet.fromList([0x00000000001F88B0]);
    return _FOLLOW_variable_in_block309;
  }

  static BitSet _FOLLOW_stat_in_block324 = null;
  static BitSet get FOLLOW_stat_in_block324() {
    if(_FOLLOW_stat_in_block324 == null) 
      _FOLLOW_stat_in_block324 = 
        new BitSet.fromList([0x00000000001908B0]);
    return _FOLLOW_stat_in_block324;
  }

  static BitSet _FOLLOW_20_in_block335 = null;
  static BitSet get FOLLOW_20_in_block335() {
    if(_FOLLOW_20_in_block335 == null) 
      _FOLLOW_20_in_block335 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_20_in_block335;
  }

  static BitSet _FOLLOW_forStat_in_stat347 = null;
  static BitSet get FOLLOW_forStat_in_stat347() {
    if(_FOLLOW_forStat_in_stat347 == null) 
      _FOLLOW_forStat_in_stat347 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_forStat_in_stat347;
  }

  static BitSet _FOLLOW_expr_in_stat355 = null;
  static BitSet get FOLLOW_expr_in_stat355() {
    if(_FOLLOW_expr_in_stat355 == null) 
      _FOLLOW_expr_in_stat355 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_expr_in_stat355;
  }

  static BitSet _FOLLOW_11_in_stat357 = null;
  static BitSet get FOLLOW_11_in_stat357() {
    if(_FOLLOW_11_in_stat357 == null) 
      _FOLLOW_11_in_stat357 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat357;
  }

  static BitSet _FOLLOW_block_in_stat371 = null;
  static BitSet get FOLLOW_block_in_stat371() {
    if(_FOLLOW_block_in_stat371 == null) 
      _FOLLOW_block_in_stat371 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_stat371;
  }

  static BitSet _FOLLOW_assignStat_in_stat379 = null;
  static BitSet get FOLLOW_assignStat_in_stat379() {
    if(_FOLLOW_assignStat_in_stat379 == null) 
      _FOLLOW_assignStat_in_stat379 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_assignStat_in_stat379;
  }

  static BitSet _FOLLOW_11_in_stat381 = null;
  static BitSet get FOLLOW_11_in_stat381() {
    if(_FOLLOW_11_in_stat381 == null) 
      _FOLLOW_11_in_stat381 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat381;
  }

  static BitSet _FOLLOW_11_in_stat389 = null;
  static BitSet get FOLLOW_11_in_stat389() {
    if(_FOLLOW_11_in_stat389 == null) 
      _FOLLOW_11_in_stat389 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat389;
  }

  static BitSet _FOLLOW_16_in_forStat408 = null;
  static BitSet get FOLLOW_16_in_forStat408() {
    if(_FOLLOW_16_in_forStat408 == null) 
      _FOLLOW_16_in_forStat408 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_16_in_forStat408;
  }

  static BitSet _FOLLOW_7_in_forStat410 = null;
  static BitSet get FOLLOW_7_in_forStat410() {
    if(_FOLLOW_7_in_forStat410 == null) 
      _FOLLOW_7_in_forStat410 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_forStat410;
  }

  static BitSet _FOLLOW_assignStat_in_forStat412 = null;
  static BitSet get FOLLOW_assignStat_in_forStat412() {
    if(_FOLLOW_assignStat_in_forStat412 == null) 
      _FOLLOW_assignStat_in_forStat412 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_assignStat_in_forStat412;
  }

  static BitSet _FOLLOW_11_in_forStat414 = null;
  static BitSet get FOLLOW_11_in_forStat414() {
    if(_FOLLOW_11_in_forStat414 == null) 
      _FOLLOW_11_in_forStat414 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_11_in_forStat414;
  }

  static BitSet _FOLLOW_expr_in_forStat416 = null;
  static BitSet get FOLLOW_expr_in_forStat416() {
    if(_FOLLOW_expr_in_forStat416 == null) 
      _FOLLOW_expr_in_forStat416 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_expr_in_forStat416;
  }

  static BitSet _FOLLOW_11_in_forStat418 = null;
  static BitSet get FOLLOW_11_in_forStat418() {
    if(_FOLLOW_11_in_forStat418 == null) 
      _FOLLOW_11_in_forStat418 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_11_in_forStat418;
  }

  static BitSet _FOLLOW_assignStat_in_forStat420 = null;
  static BitSet get FOLLOW_assignStat_in_forStat420() {
    if(_FOLLOW_assignStat_in_forStat420 == null) 
      _FOLLOW_assignStat_in_forStat420 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_assignStat_in_forStat420;
  }

  static BitSet _FOLLOW_8_in_forStat422 = null;
  static BitSet get FOLLOW_8_in_forStat422() {
    if(_FOLLOW_8_in_forStat422 == null) 
      _FOLLOW_8_in_forStat422 = 
        new BitSet.fromList([0x0000000000080000]);
    return _FOLLOW_8_in_forStat422;
  }

  static BitSet _FOLLOW_block_in_forStat424 = null;
  static BitSet get FOLLOW_block_in_forStat424() {
    if(_FOLLOW_block_in_forStat424 == null) 
      _FOLLOW_block_in_forStat424 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_forStat424;
  }

  static BitSet _FOLLOW_ID_in_assignStat451 = null;
  static BitSet get FOLLOW_ID_in_assignStat451() {
    if(_FOLLOW_ID_in_assignStat451 == null) 
      _FOLLOW_ID_in_assignStat451 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_ID_in_assignStat451;
  }

  static BitSet _FOLLOW_13_in_assignStat453 = null;
  static BitSet get FOLLOW_13_in_assignStat453() {
    if(_FOLLOW_13_in_assignStat453 == null) 
      _FOLLOW_13_in_assignStat453 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_13_in_assignStat453;
  }

  static BitSet _FOLLOW_expr_in_assignStat455 = null;
  static BitSet get FOLLOW_expr_in_assignStat455() {
    if(_FOLLOW_expr_in_assignStat455 == null) 
      _FOLLOW_expr_in_assignStat455 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expr_in_assignStat455;
  }

  static BitSet _FOLLOW_condExpr_in_expr477 = null;
  static BitSet get FOLLOW_condExpr_in_expr477() {
    if(_FOLLOW_condExpr_in_expr477 == null) 
      _FOLLOW_condExpr_in_expr477 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_condExpr_in_expr477;
  }

  static BitSet _FOLLOW_aexpr_in_condExpr496 = null;
  static BitSet get FOLLOW_aexpr_in_condExpr496() {
    if(_FOLLOW_aexpr_in_condExpr496 == null) 
      _FOLLOW_aexpr_in_condExpr496 = 
        new BitSet.fromList([0x0000000000005002]);
    return _FOLLOW_aexpr_in_condExpr496;
  }

  static BitSet _FOLLOW_set_in_condExpr500 = null;
  static BitSet get FOLLOW_set_in_condExpr500() {
    if(_FOLLOW_set_in_condExpr500 == null) 
      _FOLLOW_set_in_condExpr500 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_set_in_condExpr500;
  }

  static BitSet _FOLLOW_aexpr_in_condExpr508 = null;
  static BitSet get FOLLOW_aexpr_in_condExpr508() {
    if(_FOLLOW_aexpr_in_condExpr508 == null) 
      _FOLLOW_aexpr_in_condExpr508 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_aexpr_in_condExpr508;
  }

  static BitSet _FOLLOW_atom_in_aexpr530 = null;
  static BitSet get FOLLOW_atom_in_aexpr530() {
    if(_FOLLOW_atom_in_aexpr530 == null) 
      _FOLLOW_atom_in_aexpr530 = 
        new BitSet.fromList([0x0000000000000202]);
    return _FOLLOW_atom_in_aexpr530;
  }

  static BitSet _FOLLOW_9_in_aexpr534 = null;
  static BitSet get FOLLOW_9_in_aexpr534() {
    if(_FOLLOW_9_in_aexpr534 == null) 
      _FOLLOW_9_in_aexpr534 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_9_in_aexpr534;
  }

  static BitSet _FOLLOW_atom_in_aexpr536 = null;
  static BitSet get FOLLOW_atom_in_aexpr536() {
    if(_FOLLOW_atom_in_aexpr536 == null) 
      _FOLLOW_atom_in_aexpr536 = 
        new BitSet.fromList([0x0000000000000202]);
    return _FOLLOW_atom_in_aexpr536;
  }

  static BitSet _FOLLOW_ID_in_atom556 = null;
  static BitSet get FOLLOW_ID_in_atom556() {
    if(_FOLLOW_ID_in_atom556 == null) 
      _FOLLOW_ID_in_atom556 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_atom556;
  }

  static BitSet _FOLLOW_INT_in_atom570 = null;
  static BitSet get FOLLOW_INT_in_atom570() {
    if(_FOLLOW_INT_in_atom570 == null) 
      _FOLLOW_INT_in_atom570 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom570;
  }

  static BitSet _FOLLOW_7_in_atom584 = null;
  static BitSet get FOLLOW_7_in_atom584() {
    if(_FOLLOW_7_in_atom584 == null) 
      _FOLLOW_7_in_atom584 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_7_in_atom584;
  }

  static BitSet _FOLLOW_expr_in_atom586 = null;
  static BitSet get FOLLOW_expr_in_atom586() {
    if(_FOLLOW_expr_in_atom586 == null) 
      _FOLLOW_expr_in_atom586 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_expr_in_atom586;
  }

  static BitSet _FOLLOW_8_in_atom588 = null;
  static BitSet get FOLLOW_8_in_atom588() {
    if(_FOLLOW_8_in_atom588 == null) 
      _FOLLOW_8_in_atom588 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_atom588;
  }



 }


class DFA2 extends DFA {

  DFA2(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 2;
    this.eot = t018llstarParser.DFA2_eot;
    this.eof = t018llstarParser.DFA2_eof;
    this.min = t018llstarParser.DFA2_min;
    this.max = t018llstarParser.DFA2_max;
    this.accept = t018llstarParser.DFA2_accept;
    this.special = t018llstarParser.DFA2_special;
    this.transition = t018llstarParser.DFA2_transition;
  }

  String get description() => 
        """32:1: declaration : ( variable | functionHeader ';' | functionHeader block );""";

}




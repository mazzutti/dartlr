// $ANTLR 3.4 t017parserParser.g 2012-06-07 21:59:32
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t017parserParser extends Parser {

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


  t017parserParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
	  this.dfas["dfa2"] = new DFA2(this);
  }



  t017parserParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();
    
    this.dfas["dfa2"] = new DFA2(this);
  }    

  List<String> get tokenNames() => t017parserParser._tokenNames;

  String get grammarFileName() => "t017parser.g";

  String getRecognizerClassName() => "t017parserParser";


  // $ANTLR start "program"
  /* ../runtime/dart/tests/grammars/t017parser.g:
   7:1: program : ( declaration )+ ;*/
  void program() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       8:5: ( ( declaration )+ )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       8:9: ( declaration )+*/
      {
      	/* ../runtime/dart/tests/grammars/t017parser.g:
      	 8:9: ( declaration )+*/
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
      			  /* ../runtime/dart/tests/grammars/t017parser.g:
      			   8:9: declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_declaration_in_program32);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   11:1: declaration : ( variable | functionHeader ';' | functionHeader block );*/
  void declaration() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g: 
       12:5: ( variable | functionHeader ';' | functionHeader block )*/
      int alt2 = 3;
      alt2 = this.dfas["dfa2"].predict(this.input);
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           12:9: variable*/
          {
          	this.pushFollow(FOLLOW_variable_in_declaration52);
          	this.variable();

          	this.state.fsp--;


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           13:9: functionHeader ';'*/
          {
          	this.pushFollow(FOLLOW_functionHeader_in_declaration62);
          	this.functionHeader();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_declaration64); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           14:9: functionHeader block*/
          {
          	this.pushFollow(FOLLOW_functionHeader_in_declaration74);
          	this.functionHeader();

          	this.state.fsp--;


          	this.pushFollow(FOLLOW_block_in_declaration76);
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
  	}
  	return ;
  }
  // $ANTLR end "declaration"


  // $ANTLR start "variable"
  /* ../runtime/dart/tests/grammars/t017parser.g:
   17:1: variable : type declarator ';' ;*/
  void variable() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       18:5: ( type declarator ';' )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       18:9: type declarator ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_variable95);
      	this.type();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_declarator_in_variable97);
      	this.declarator();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_variable99); 


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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   21:1: declarator : ID ;*/
  void declarator() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       22:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       22:9: ID*/
      {
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_declarator118); 


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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   25:1: functionHeader : type ID '(' ( formalParameter ( ',' formalParameter )* )? ')' ;*/
  void functionHeader() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       26:5: ( type ID '(' ( formalParameter ( ',' formalParameter )* )? ')' )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       26:9: type ID '(' ( formalParameter ( ',' formalParameter )* )? ')'*/
      {
      	this.pushFollow(FOLLOW_type_in_functionHeader138);
      	this.type();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_functionHeader140); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_functionHeader142); 


      	/* ../runtime/dart/tests/grammars/t017parser.g:
      	 26:21: ( formalParameter ( ',' formalParameter )* )?*/
      	int alt4 = 2;
      	int LA4_0 = this.input.LA(1);

      	if((LA4_0 == 4/*ID*/
      	  || LA4_0 == 15/*15*/
      	  || (LA4_0 >= 17 && LA4_0 <= 18))) {
      	  alt4 = 1;
      	}
      	switch (alt4) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t017parser.g:
      	     26:23: formalParameter ( ',' formalParameter )**/
      	    {
      	    	this.pushFollow(FOLLOW_formalParameter_in_functionHeader146);
      	    	this.formalParameter();

      	    	this.state.fsp--;


      	    	/* ../runtime/dart/tests/grammars/t017parser.g:
      	    	 26:39: ( ',' formalParameter )**/
      	    	loop3:
      	    	do {
      	    	  int alt3 = 2;
      	    	  int LA3_0 = this.input.LA(1);

      	    	  if((LA3_0 == 10/*10*/)) {
      	    	    alt3 = 1;
      	    	  }


      	    	  switch (alt3) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t017parser.g:
      	    			   26:41: ',' formalParameter*/
      	    			  {
      	    			  	this.matchSymbol(this.input,
      	    			  	    10,FOLLOW_10_in_functionHeader150); 


      	    			  	this.pushFollow(FOLLOW_formalParameter_in_functionHeader152);
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
      	    8,FOLLOW_8_in_functionHeader160); 


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
  // $ANTLR end "functionHeader"


  // $ANTLR start "formalParameter"
  /* ../runtime/dart/tests/grammars/t017parser.g:
   29:1: formalParameter : type declarator ;*/
  void formalParameter() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       30:5: ( type declarator )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       30:9: type declarator*/
      {
      	this.pushFollow(FOLLOW_type_in_formalParameter179);
      	this.type();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_declarator_in_formalParameter181);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   33:1: type : ( 'int' | 'char' | 'void' | ID );*/
  void type() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       34:5: ( 'int' | 'char' | 'void' | ID )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   40:1: block : '{' ( variable )* ( stat )* '}' ;*/
  void block() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       41:5: ( '{' ( variable )* ( stat )* '}' )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       41:9: '{' ( variable )* ( stat )* '}'*/
      {
      	this.matchSymbol(this.input,
      	    19,FOLLOW_19_in_block270); 


      	/* ../runtime/dart/tests/grammars/t017parser.g:
      	 42:13: ( variable )**/
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
      			  /* ../runtime/dart/tests/grammars/t017parser.g:
      			   42:13: variable*/
      			  {
      			  	this.pushFollow(FOLLOW_variable_in_block284);
      			  	this.variable();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop5;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t017parser.g:
      	 43:13: ( stat )**/
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
      			  /* ../runtime/dart/tests/grammars/t017parser.g:
      			   43:13: stat*/
      			  {
      			  	this.pushFollow(FOLLOW_stat_in_block299);
      			  	this.stat();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop6;
      	  }
      	} while(true);


      	this.matchSymbol(this.input,
      	    20,FOLLOW_20_in_block310); 


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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   47:1: stat : ( forStat | expr ';' | block | assignStat ';' | ';' );*/
  void stat() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g: 
       47:5: ( forStat | expr ';' | block | assignStat ';' | ';' )*/
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
          /* ../runtime/dart/tests/grammars/t017parser.g:
           47:7: forStat*/
          {
          	this.pushFollow(FOLLOW_forStat_in_stat322);
          	this.forStat();

          	this.state.fsp--;


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           48:7: expr ';'*/
          {
          	this.pushFollow(FOLLOW_expr_in_stat330);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_stat332); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           49:7: block*/
          {
          	this.pushFollow(FOLLOW_block_in_stat346);
          	this.block();

          	this.state.fsp--;


          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           50:7: assignStat ';'*/
          {
          	this.pushFollow(FOLLOW_assignStat_in_stat354);
          	this.assignStat();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_stat356); 


          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           51:7: ';'*/
          {
          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_stat364); 


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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   54:1: forStat : 'for' '(' assignStat ';' expr ';' assignStat ')' block ;*/
  void forStat() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       55:5: ( 'for' '(' assignStat ';' expr ';' assignStat ')' block )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       55:9: 'for' '(' assignStat ';' expr ';' assignStat ')' block*/
      {
      	this.matchSymbol(this.input,
      	    16,FOLLOW_16_in_forStat383); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_forStat385); 


      	this.pushFollow(FOLLOW_assignStat_in_forStat387);
      	this.assignStat();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_forStat389); 


      	this.pushFollow(FOLLOW_expr_in_forStat391);
      	this.expr();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_forStat393); 


      	this.pushFollow(FOLLOW_assignStat_in_forStat395);
      	this.assignStat();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_forStat397); 


      	this.pushFollow(FOLLOW_block_in_forStat399);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   58:1: assignStat : ID '=' expr ;*/
  void assignStat() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       59:5: ( ID '=' expr )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       59:9: ID '=' expr*/
      {
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_assignStat426); 


      	this.matchSymbol(this.input,
      	    13,FOLLOW_13_in_assignStat428); 


      	this.pushFollow(FOLLOW_expr_in_assignStat430);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   62:1: expr : condExpr ;*/
  void expr() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       62:5: ( condExpr )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       62:9: condExpr*/
      {
      	this.pushFollow(FOLLOW_condExpr_in_expr452);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   65:1: condExpr : aexpr ( ( '==' | '<' ) aexpr )? ;*/
  void condExpr() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       66:5: ( aexpr ( ( '==' | '<' ) aexpr )? )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       66:9: aexpr ( ( '==' | '<' ) aexpr )?*/
      {
      	this.pushFollow(FOLLOW_aexpr_in_condExpr471);
      	this.aexpr();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t017parser.g:
      	 66:15: ( ( '==' | '<' ) aexpr )?*/
      	int alt8 = 2;
      	int LA8_0 = this.input.LA(1);

      	if((LA8_0 == 12/*12*/
      	  || LA8_0 == 14/*14*/)) {
      	  alt8 = 1;
      	}
      	switch (alt8) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t017parser.g:
      	     66:17: ( '==' | '<' ) aexpr*/
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


      	    	this.pushFollow(FOLLOW_aexpr_in_condExpr483);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   69:1: aexpr : atom ( '+' atom )* ;*/
  void aexpr() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g:
       70:5: ( atom ( '+' atom )* )*/
      /* ../runtime/dart/tests/grammars/t017parser.g:
       70:9: atom ( '+' atom )**/
      {
      	this.pushFollow(FOLLOW_atom_in_aexpr505);
      	this.atom();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t017parser.g:
      	 70:14: ( '+' atom )**/
      	loop9:
      	do {
      	  int alt9 = 2;
      	  int LA9_0 = this.input.LA(1);

      	  if((LA9_0 == 9/*9*/)) {
      	    alt9 = 1;
      	  }


      	  switch (alt9) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t017parser.g:
      			   70:16: '+' atom*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    9,FOLLOW_9_in_aexpr509); 


      			  	this.pushFollow(FOLLOW_atom_in_aexpr511);
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
  /* ../runtime/dart/tests/grammars/t017parser.g:
   73:1: atom : ( ID | INT | '(' expr ')' );*/
  void atom() {
    try {
      /* ../runtime/dart/tests/grammars/t017parser.g: 
       74:5: ( ID | INT | '(' expr ')' )*/
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
          /* ../runtime/dart/tests/grammars/t017parser.g:
           74:7: ID*/
          {
          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_atom531); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           75:7: INT*/
          {
          	this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_atom545); 


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t017parser.g:
           76:7: '(' expr ')'*/
          {
          	this.matchSymbol(this.input,
          	    7,FOLLOW_7_in_atom559); 


          	this.pushFollow(FOLLOW_expr_in_atom561);
          	this.expr();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    8,FOLLOW_8_in_atom563); 


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

  static BitSet _FOLLOW_declaration_in_program32 = null;
  static BitSet get FOLLOW_declaration_in_program32() {
    if(_FOLLOW_declaration_in_program32 == null) 
      _FOLLOW_declaration_in_program32 = 
        new BitSet.fromList([0x0000000000068012]);
    return _FOLLOW_declaration_in_program32;
  }

  static BitSet _FOLLOW_variable_in_declaration52 = null;
  static BitSet get FOLLOW_variable_in_declaration52() {
    if(_FOLLOW_variable_in_declaration52 == null) 
      _FOLLOW_variable_in_declaration52 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_variable_in_declaration52;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration62 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration62() {
    if(_FOLLOW_functionHeader_in_declaration62 == null) 
      _FOLLOW_functionHeader_in_declaration62 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_functionHeader_in_declaration62;
  }

  static BitSet _FOLLOW_11_in_declaration64 = null;
  static BitSet get FOLLOW_11_in_declaration64() {
    if(_FOLLOW_11_in_declaration64 == null) 
      _FOLLOW_11_in_declaration64 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_declaration64;
  }

  static BitSet _FOLLOW_functionHeader_in_declaration74 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration74() {
    if(_FOLLOW_functionHeader_in_declaration74 == null) 
      _FOLLOW_functionHeader_in_declaration74 = 
        new BitSet.fromList([0x0000000000080000]);
    return _FOLLOW_functionHeader_in_declaration74;
  }

  static BitSet _FOLLOW_block_in_declaration76 = null;
  static BitSet get FOLLOW_block_in_declaration76() {
    if(_FOLLOW_block_in_declaration76 == null) 
      _FOLLOW_block_in_declaration76 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_declaration76;
  }

  static BitSet _FOLLOW_type_in_variable95 = null;
  static BitSet get FOLLOW_type_in_variable95() {
    if(_FOLLOW_type_in_variable95 == null) 
      _FOLLOW_type_in_variable95 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_variable95;
  }

  static BitSet _FOLLOW_declarator_in_variable97 = null;
  static BitSet get FOLLOW_declarator_in_variable97() {
    if(_FOLLOW_declarator_in_variable97 == null) 
      _FOLLOW_declarator_in_variable97 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_declarator_in_variable97;
  }

  static BitSet _FOLLOW_11_in_variable99 = null;
  static BitSet get FOLLOW_11_in_variable99() {
    if(_FOLLOW_11_in_variable99 == null) 
      _FOLLOW_11_in_variable99 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_variable99;
  }

  static BitSet _FOLLOW_ID_in_declarator118 = null;
  static BitSet get FOLLOW_ID_in_declarator118() {
    if(_FOLLOW_ID_in_declarator118 == null) 
      _FOLLOW_ID_in_declarator118 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_declarator118;
  }

  static BitSet _FOLLOW_type_in_functionHeader138 = null;
  static BitSet get FOLLOW_type_in_functionHeader138() {
    if(_FOLLOW_type_in_functionHeader138 == null) 
      _FOLLOW_type_in_functionHeader138 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_functionHeader138;
  }

  static BitSet _FOLLOW_ID_in_functionHeader140 = null;
  static BitSet get FOLLOW_ID_in_functionHeader140() {
    if(_FOLLOW_ID_in_functionHeader140 == null) 
      _FOLLOW_ID_in_functionHeader140 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_functionHeader140;
  }

  static BitSet _FOLLOW_7_in_functionHeader142 = null;
  static BitSet get FOLLOW_7_in_functionHeader142() {
    if(_FOLLOW_7_in_functionHeader142 == null) 
      _FOLLOW_7_in_functionHeader142 = 
        new BitSet.fromList([0x0000000000068110]);
    return _FOLLOW_7_in_functionHeader142;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader146 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader146() {
    if(_FOLLOW_formalParameter_in_functionHeader146 == null) 
      _FOLLOW_formalParameter_in_functionHeader146 = 
        new BitSet.fromList([0x0000000000000500]);
    return _FOLLOW_formalParameter_in_functionHeader146;
  }

  static BitSet _FOLLOW_10_in_functionHeader150 = null;
  static BitSet get FOLLOW_10_in_functionHeader150() {
    if(_FOLLOW_10_in_functionHeader150 == null) 
      _FOLLOW_10_in_functionHeader150 = 
        new BitSet.fromList([0x0000000000068010]);
    return _FOLLOW_10_in_functionHeader150;
  }

  static BitSet _FOLLOW_formalParameter_in_functionHeader152 = null;
  static BitSet get FOLLOW_formalParameter_in_functionHeader152() {
    if(_FOLLOW_formalParameter_in_functionHeader152 == null) 
      _FOLLOW_formalParameter_in_functionHeader152 = 
        new BitSet.fromList([0x0000000000000500]);
    return _FOLLOW_formalParameter_in_functionHeader152;
  }

  static BitSet _FOLLOW_8_in_functionHeader160 = null;
  static BitSet get FOLLOW_8_in_functionHeader160() {
    if(_FOLLOW_8_in_functionHeader160 == null) 
      _FOLLOW_8_in_functionHeader160 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_functionHeader160;
  }

  static BitSet _FOLLOW_type_in_formalParameter179 = null;
  static BitSet get FOLLOW_type_in_formalParameter179() {
    if(_FOLLOW_type_in_formalParameter179 == null) 
      _FOLLOW_type_in_formalParameter179 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_formalParameter179;
  }

  static BitSet _FOLLOW_declarator_in_formalParameter181 = null;
  static BitSet get FOLLOW_declarator_in_formalParameter181() {
    if(_FOLLOW_declarator_in_formalParameter181 == null) 
      _FOLLOW_declarator_in_formalParameter181 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declarator_in_formalParameter181;
  }

  static BitSet _FOLLOW_19_in_block270 = null;
  static BitSet get FOLLOW_19_in_block270() {
    if(_FOLLOW_19_in_block270 == null) 
      _FOLLOW_19_in_block270 = 
        new BitSet.fromList([0x00000000001F88B0]);
    return _FOLLOW_19_in_block270;
  }

  static BitSet _FOLLOW_variable_in_block284 = null;
  static BitSet get FOLLOW_variable_in_block284() {
    if(_FOLLOW_variable_in_block284 == null) 
      _FOLLOW_variable_in_block284 = 
        new BitSet.fromList([0x00000000001F88B0]);
    return _FOLLOW_variable_in_block284;
  }

  static BitSet _FOLLOW_stat_in_block299 = null;
  static BitSet get FOLLOW_stat_in_block299() {
    if(_FOLLOW_stat_in_block299 == null) 
      _FOLLOW_stat_in_block299 = 
        new BitSet.fromList([0x00000000001908B0]);
    return _FOLLOW_stat_in_block299;
  }

  static BitSet _FOLLOW_20_in_block310 = null;
  static BitSet get FOLLOW_20_in_block310() {
    if(_FOLLOW_20_in_block310 == null) 
      _FOLLOW_20_in_block310 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_20_in_block310;
  }

  static BitSet _FOLLOW_forStat_in_stat322 = null;
  static BitSet get FOLLOW_forStat_in_stat322() {
    if(_FOLLOW_forStat_in_stat322 == null) 
      _FOLLOW_forStat_in_stat322 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_forStat_in_stat322;
  }

  static BitSet _FOLLOW_expr_in_stat330 = null;
  static BitSet get FOLLOW_expr_in_stat330() {
    if(_FOLLOW_expr_in_stat330 == null) 
      _FOLLOW_expr_in_stat330 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_expr_in_stat330;
  }

  static BitSet _FOLLOW_11_in_stat332 = null;
  static BitSet get FOLLOW_11_in_stat332() {
    if(_FOLLOW_11_in_stat332 == null) 
      _FOLLOW_11_in_stat332 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat332;
  }

  static BitSet _FOLLOW_block_in_stat346 = null;
  static BitSet get FOLLOW_block_in_stat346() {
    if(_FOLLOW_block_in_stat346 == null) 
      _FOLLOW_block_in_stat346 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_stat346;
  }

  static BitSet _FOLLOW_assignStat_in_stat354 = null;
  static BitSet get FOLLOW_assignStat_in_stat354() {
    if(_FOLLOW_assignStat_in_stat354 == null) 
      _FOLLOW_assignStat_in_stat354 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_assignStat_in_stat354;
  }

  static BitSet _FOLLOW_11_in_stat356 = null;
  static BitSet get FOLLOW_11_in_stat356() {
    if(_FOLLOW_11_in_stat356 == null) 
      _FOLLOW_11_in_stat356 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat356;
  }

  static BitSet _FOLLOW_11_in_stat364 = null;
  static BitSet get FOLLOW_11_in_stat364() {
    if(_FOLLOW_11_in_stat364 == null) 
      _FOLLOW_11_in_stat364 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat364;
  }

  static BitSet _FOLLOW_16_in_forStat383 = null;
  static BitSet get FOLLOW_16_in_forStat383() {
    if(_FOLLOW_16_in_forStat383 == null) 
      _FOLLOW_16_in_forStat383 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_16_in_forStat383;
  }

  static BitSet _FOLLOW_7_in_forStat385 = null;
  static BitSet get FOLLOW_7_in_forStat385() {
    if(_FOLLOW_7_in_forStat385 == null) 
      _FOLLOW_7_in_forStat385 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_forStat385;
  }

  static BitSet _FOLLOW_assignStat_in_forStat387 = null;
  static BitSet get FOLLOW_assignStat_in_forStat387() {
    if(_FOLLOW_assignStat_in_forStat387 == null) 
      _FOLLOW_assignStat_in_forStat387 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_assignStat_in_forStat387;
  }

  static BitSet _FOLLOW_11_in_forStat389 = null;
  static BitSet get FOLLOW_11_in_forStat389() {
    if(_FOLLOW_11_in_forStat389 == null) 
      _FOLLOW_11_in_forStat389 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_11_in_forStat389;
  }

  static BitSet _FOLLOW_expr_in_forStat391 = null;
  static BitSet get FOLLOW_expr_in_forStat391() {
    if(_FOLLOW_expr_in_forStat391 == null) 
      _FOLLOW_expr_in_forStat391 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_expr_in_forStat391;
  }

  static BitSet _FOLLOW_11_in_forStat393 = null;
  static BitSet get FOLLOW_11_in_forStat393() {
    if(_FOLLOW_11_in_forStat393 == null) 
      _FOLLOW_11_in_forStat393 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_11_in_forStat393;
  }

  static BitSet _FOLLOW_assignStat_in_forStat395 = null;
  static BitSet get FOLLOW_assignStat_in_forStat395() {
    if(_FOLLOW_assignStat_in_forStat395 == null) 
      _FOLLOW_assignStat_in_forStat395 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_assignStat_in_forStat395;
  }

  static BitSet _FOLLOW_8_in_forStat397 = null;
  static BitSet get FOLLOW_8_in_forStat397() {
    if(_FOLLOW_8_in_forStat397 == null) 
      _FOLLOW_8_in_forStat397 = 
        new BitSet.fromList([0x0000000000080000]);
    return _FOLLOW_8_in_forStat397;
  }

  static BitSet _FOLLOW_block_in_forStat399 = null;
  static BitSet get FOLLOW_block_in_forStat399() {
    if(_FOLLOW_block_in_forStat399 == null) 
      _FOLLOW_block_in_forStat399 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_block_in_forStat399;
  }

  static BitSet _FOLLOW_ID_in_assignStat426 = null;
  static BitSet get FOLLOW_ID_in_assignStat426() {
    if(_FOLLOW_ID_in_assignStat426 == null) 
      _FOLLOW_ID_in_assignStat426 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_ID_in_assignStat426;
  }

  static BitSet _FOLLOW_13_in_assignStat428 = null;
  static BitSet get FOLLOW_13_in_assignStat428() {
    if(_FOLLOW_13_in_assignStat428 == null) 
      _FOLLOW_13_in_assignStat428 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_13_in_assignStat428;
  }

  static BitSet _FOLLOW_expr_in_assignStat430 = null;
  static BitSet get FOLLOW_expr_in_assignStat430() {
    if(_FOLLOW_expr_in_assignStat430 == null) 
      _FOLLOW_expr_in_assignStat430 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expr_in_assignStat430;
  }

  static BitSet _FOLLOW_condExpr_in_expr452 = null;
  static BitSet get FOLLOW_condExpr_in_expr452() {
    if(_FOLLOW_condExpr_in_expr452 == null) 
      _FOLLOW_condExpr_in_expr452 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_condExpr_in_expr452;
  }

  static BitSet _FOLLOW_aexpr_in_condExpr471 = null;
  static BitSet get FOLLOW_aexpr_in_condExpr471() {
    if(_FOLLOW_aexpr_in_condExpr471 == null) 
      _FOLLOW_aexpr_in_condExpr471 = 
        new BitSet.fromList([0x0000000000005002]);
    return _FOLLOW_aexpr_in_condExpr471;
  }

  static BitSet _FOLLOW_set_in_condExpr475 = null;
  static BitSet get FOLLOW_set_in_condExpr475() {
    if(_FOLLOW_set_in_condExpr475 == null) 
      _FOLLOW_set_in_condExpr475 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_set_in_condExpr475;
  }

  static BitSet _FOLLOW_aexpr_in_condExpr483 = null;
  static BitSet get FOLLOW_aexpr_in_condExpr483() {
    if(_FOLLOW_aexpr_in_condExpr483 == null) 
      _FOLLOW_aexpr_in_condExpr483 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_aexpr_in_condExpr483;
  }

  static BitSet _FOLLOW_atom_in_aexpr505 = null;
  static BitSet get FOLLOW_atom_in_aexpr505() {
    if(_FOLLOW_atom_in_aexpr505 == null) 
      _FOLLOW_atom_in_aexpr505 = 
        new BitSet.fromList([0x0000000000000202]);
    return _FOLLOW_atom_in_aexpr505;
  }

  static BitSet _FOLLOW_9_in_aexpr509 = null;
  static BitSet get FOLLOW_9_in_aexpr509() {
    if(_FOLLOW_9_in_aexpr509 == null) 
      _FOLLOW_9_in_aexpr509 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_9_in_aexpr509;
  }

  static BitSet _FOLLOW_atom_in_aexpr511 = null;
  static BitSet get FOLLOW_atom_in_aexpr511() {
    if(_FOLLOW_atom_in_aexpr511 == null) 
      _FOLLOW_atom_in_aexpr511 = 
        new BitSet.fromList([0x0000000000000202]);
    return _FOLLOW_atom_in_aexpr511;
  }

  static BitSet _FOLLOW_ID_in_atom531 = null;
  static BitSet get FOLLOW_ID_in_atom531() {
    if(_FOLLOW_ID_in_atom531 == null) 
      _FOLLOW_ID_in_atom531 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_atom531;
  }

  static BitSet _FOLLOW_INT_in_atom545 = null;
  static BitSet get FOLLOW_INT_in_atom545() {
    if(_FOLLOW_INT_in_atom545 == null) 
      _FOLLOW_INT_in_atom545 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom545;
  }

  static BitSet _FOLLOW_7_in_atom559 = null;
  static BitSet get FOLLOW_7_in_atom559() {
    if(_FOLLOW_7_in_atom559 == null) 
      _FOLLOW_7_in_atom559 = 
        new BitSet.fromList([0x00000000000000B0]);
    return _FOLLOW_7_in_atom559;
  }

  static BitSet _FOLLOW_expr_in_atom561 = null;
  static BitSet get FOLLOW_expr_in_atom561() {
    if(_FOLLOW_expr_in_atom561 == null) 
      _FOLLOW_expr_in_atom561 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_expr_in_atom561;
  }

  static BitSet _FOLLOW_8_in_atom563 = null;
  static BitSet get FOLLOW_8_in_atom563() {
    if(_FOLLOW_8_in_atom563 == null) 
      _FOLLOW_8_in_atom563 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_atom563;
  }



 }


class DFA2 extends DFA {

  DFA2(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 2;
    this.eot = t017parserParser.DFA2_eot;
    this.eof = t017parserParser.DFA2_eof;
    this.min = t017parserParser.DFA2_min;
    this.max = t017parserParser.DFA2_max;
    this.accept = t017parserParser.DFA2_accept;
    this.special = t017parserParser.DFA2_special;
    this.transition = t017parserParser.DFA2_transition;
  }

  String get description() => 
        """11:1: declaration : ( variable | functionHeader ';' | functionHeader block );""";

}




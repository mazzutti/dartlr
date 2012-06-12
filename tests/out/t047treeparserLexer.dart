// $ANTLR 3.4 t047treeparserLexer.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t047treeparserLexer extends Lexer {

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
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t047treeparserLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t047treeparserLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t047treeparser.g";

  String getRecognizerClassName() => "t047treeparserLexer";
  
  // $ANTLR start "T__21"
  void mT__21() {
    try {
  	  int _type = T__21;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   7:7: ( '(' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   7:9: '('*/
  	  {
  	  	this.match(40 /*'('*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__21"

  // $ANTLR start "T__22"
  void mT__22() {
    try {
  	  int _type = T__22;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   8:7: ( ')' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   8:9: ')'*/
  	  {
  	  	this.match(41 /*')'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__22"

  // $ANTLR start "T__23"
  void mT__23() {
    try {
  	  int _type = T__23;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   9:7: ( ',' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   9:9: ','*/
  	  {
  	  	this.match(44 /*','*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__23"

  // $ANTLR start "T__24"
  void mT__24() {
    try {
  	  int _type = T__24;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   10:7: ( ';' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   10:9: ';'*/
  	  {
  	  	this.match(59 /*';'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__24"

  // $ANTLR start "T__25"
  void mT__25() {
    try {
  	  int _type = T__25;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   11:7: ( '{' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   11:9: '{'*/
  	  {
  	  	this.match(123 /*'{'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__25"

  // $ANTLR start "T__26"
  void mT__26() {
    try {
  	  int _type = T__26;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   12:7: ( '}' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   12:9: '}'*/
  	  {
  	  	this.match(125 /*'}'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__26"

  // $ANTLR start "FOR"
  void mFOR() {
    try {
  	  int _type = FOR;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   91:5: ( 'for' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   91:7: 'for'*/
  	  {
  	  	this.match("for"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "FOR"

  // $ANTLR start "INT_TYPE"
  void mINT_TYPE() {
    try {
  	  int _type = INT_TYPE;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   92:10: ( 'int' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   92:12: 'int'*/
  	  {
  	  	this.match("int"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "INT_TYPE"

  // $ANTLR start "CHAR"
  void mCHAR() {
    try {
  	  int _type = CHAR;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   93:5: ( 'char' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   93:7: 'char'*/
  	  {
  	  	this.match("char"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CHAR"

  // $ANTLR start "VOID"
  void mVOID() {
    try {
  	  int _type = VOID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   94:5: ( 'void' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   94:7: 'void'*/
  	  {
  	  	this.match("void"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "VOID"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   96:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '0' .. '9' | '_' )* )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   96:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '0' .. '9' | '_' )**/
  	  {
  	  	if((this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  	  || this.input.LA(1) == 95 /*'_'*/
  	  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t047treeparser.g:
  	  	 96:33: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )**/
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/)
  	  	    || (LA1_0 >= 65 /*'A'*/ && LA1_0 <= 90 /*'Z'*/)
  	  	    || LA1_0 == 95/*95 /*'_'*/*/
  	  	    || (LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
  	  			  	  || (this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  			  	  || this.input.LA(1) == 95 /*'_'*/
  	  			  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  			  	  this.input.consume();
  	  			  	}
  	  			  	else {
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop1;
  	  	  }
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ID"

  // $ANTLR start "INT"
  void mINT() {
    try {
  	  int _type = INT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   99:5: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   99:7: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t047treeparser.g:
  	  	 99:7: ( '0' .. '9' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if(((LA2_0 >= 48 /*'0'*/ && LA2_0 <= 57 /*'9'*/))) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)) {
  	  			  	  this.input.consume();
  	  			  	}
  	  			  	else {
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt2 >= 1) break loop2;
  	  	        EarlyExitException eee = new EarlyExitException(2, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt2++;
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "INT"

  // $ANTLR start "EQ"
  void mEQ() {
    try {
  	  int _type = EQ;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   102:6: ( '=' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   102:8: '='*/
  	  {
  	  	this.match(61 /*'='*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "EQ"

  // $ANTLR start "EQEQ"
  void mEQEQ() {
    try {
  	  int _type = EQEQ;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   103:6: ( '==' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   103:8: '=='*/
  	  {
  	  	this.match("=="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "EQEQ"

  // $ANTLR start "LT"
  void mLT() {
    try {
  	  int _type = LT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   104:6: ( '<' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   104:8: '<'*/
  	  {
  	  	this.match(60 /*'<'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "LT"

  // $ANTLR start "PLUS"
  void mPLUS() {
    try {
  	  int _type = PLUS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   105:6: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   105:8: '+'*/
  	  {
  	  	this.match(43 /*'+'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "PLUS"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   107:5: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	   107:9: ( ' ' | '\\t' | '\\r' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t047treeparser.g:
  	  	 107:9: ( ' ' | '\\t' | '\\r' | '\\n' )+*/
  	  	int cnt3 = 0;
  	  	loop3:
  	  	do {
  	  	  int alt3 = 2;
  	  	  int LA3_0 = this.input.LA(1);

  	  	  if(((LA3_0 >= 9 /*'\t'*/ && LA3_0 <= 10 /*'\n'*/)
  	  	    || LA3_0 == 13/*13 /*'\r'*/*/
  	  	    || LA3_0 == 32/*32 /*' '*/*/)) {
  	  	    alt3 = 1;
  	  	  }


  	  	  switch (alt3) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t047treeparser.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 9 /*'\t'*/ && this.input.LA(1) <= 10 /*'\n'*/)
  	  			  	  || this.input.LA(1) == 13 /*'\r'*/
  	  			  	  || this.input.LA(1) == 32 /*' '*/) {
  	  			  	  this.input.consume();
  	  			  	}
  	  			  	else {
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt3 >= 1) break loop3;
  	  	        EarlyExitException eee = new EarlyExitException(3, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt3++;
  	  	} while(true);


  	  	 _channel=HIDDEN; 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t047treeparser.g: 
     1:8: ( T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | FOR | 
     INT_TYPE | CHAR | VOID | ID | INT | EQ | EQEQ | LT | PLUS | WS ) */
    int alt4 = 17;
    switch(this.input.LA(1)) {
    case 40 /*'('*/:
      {
      alt4 = 1;
      }
      break;
    case 41 /*')'*/:
      {
      alt4 = 2;
      }
      break;
    case 44 /*','*/:
      {
      alt4 = 3;
      }
      break;
    case 59 /*';'*/:
      {
      alt4 = 4;
      }
      break;
    case 123 /*'{'*/:
      {
      alt4 = 5;
      }
      break;
    case 125 /*'}'*/:
      {
      alt4 = 6;
      }
      break;
    case 102 /*'f'*/:
      {
      int LA4_7 = this.input.LA(2);

      if((LA4_7 == 111/*111 /*'o'*/*/)) {
        int LA4_17 = this.input.LA(3);

        if((LA4_17 == 114/*114 /*'r'*/*/)) {
          int LA4_23 = this.input.LA(4);

          if(((LA4_23 >= 48 /*'0'*/ && LA4_23 <= 57 /*'9'*/)
            || (LA4_23 >= 65 /*'A'*/ && LA4_23 <= 90 /*'Z'*/)
            || LA4_23 == 95/*95 /*'_'*/*/
            || (LA4_23 >= 97 /*'a'*/ && LA4_23 <= 122 /*'z'*/))) {
            alt4 = 11;
          }
          else {
            alt4 = 7;
          }
        }
        else {
          alt4 = 11;
        }
      }
      else {
        alt4 = 11;
      }
      }
      break;
    case 105 /*'i'*/:
      {
      int LA4_8 = this.input.LA(2);

      if((LA4_8 == 110/*110 /*'n'*/*/)) {
        int LA4_18 = this.input.LA(3);

        if((LA4_18 == 116/*116 /*'t'*/*/)) {
          int LA4_24 = this.input.LA(4);

          if(((LA4_24 >= 48 /*'0'*/ && LA4_24 <= 57 /*'9'*/)
            || (LA4_24 >= 65 /*'A'*/ && LA4_24 <= 90 /*'Z'*/)
            || LA4_24 == 95/*95 /*'_'*/*/
            || (LA4_24 >= 97 /*'a'*/ && LA4_24 <= 122 /*'z'*/))) {
            alt4 = 11;
          }
          else {
            alt4 = 8;
          }
        }
        else {
          alt4 = 11;
        }
      }
      else {
        alt4 = 11;
      }
      }
      break;
    case 99 /*'c'*/:
      {
      int LA4_9 = this.input.LA(2);

      if((LA4_9 == 104/*104 /*'h'*/*/)) {
        int LA4_19 = this.input.LA(3);

        if((LA4_19 == 97/*97 /*'a'*/*/)) {
          int LA4_25 = this.input.LA(4);

          if((LA4_25 == 114/*114 /*'r'*/*/)) {
            int LA4_29 = this.input.LA(5);

            if(((LA4_29 >= 48 /*'0'*/ && LA4_29 <= 57 /*'9'*/)
              || (LA4_29 >= 65 /*'A'*/ && LA4_29 <= 90 /*'Z'*/)
              || LA4_29 == 95/*95 /*'_'*/*/
              || (LA4_29 >= 97 /*'a'*/ && LA4_29 <= 122 /*'z'*/))) {
              alt4 = 11;
            }
            else {
              alt4 = 9;
            }
          }
          else {
            alt4 = 11;
          }
        }
        else {
          alt4 = 11;
        }
      }
      else {
        alt4 = 11;
      }
      }
      break;
    case 118 /*'v'*/:
      {
      int LA4_10 = this.input.LA(2);

      if((LA4_10 == 111/*111 /*'o'*/*/)) {
        int LA4_20 = this.input.LA(3);

        if((LA4_20 == 105/*105 /*'i'*/*/)) {
          int LA4_26 = this.input.LA(4);

          if((LA4_26 == 100/*100 /*'d'*/*/)) {
            int LA4_30 = this.input.LA(5);

            if(((LA4_30 >= 48 /*'0'*/ && LA4_30 <= 57 /*'9'*/)
              || (LA4_30 >= 65 /*'A'*/ && LA4_30 <= 90 /*'Z'*/)
              || LA4_30 == 95/*95 /*'_'*/*/
              || (LA4_30 >= 97 /*'a'*/ && LA4_30 <= 122 /*'z'*/))) {
              alt4 = 11;
            }
            else {
              alt4 = 10;
            }
          }
          else {
            alt4 = 11;
          }
        }
        else {
          alt4 = 11;
        }
      }
      else {
        alt4 = 11;
      }
      }
      break;
    case 65 /*'A'*/:
    case 66 /*'B'*/:
    case 67 /*'C'*/:
    case 68 /*'D'*/:
    case 69 /*'E'*/:
    case 70 /*'F'*/:
    case 71 /*'G'*/:
    case 72 /*'H'*/:
    case 73 /*'I'*/:
    case 74 /*'J'*/:
    case 75 /*'K'*/:
    case 76 /*'L'*/:
    case 77 /*'M'*/:
    case 78 /*'N'*/:
    case 79 /*'O'*/:
    case 80 /*'P'*/:
    case 81 /*'Q'*/:
    case 82 /*'R'*/:
    case 83 /*'S'*/:
    case 84 /*'T'*/:
    case 85 /*'U'*/:
    case 86 /*'V'*/:
    case 87 /*'W'*/:
    case 88 /*'X'*/:
    case 89 /*'Y'*/:
    case 90 /*'Z'*/:
    case 95 /*'_'*/:
    case 97 /*'a'*/:
    case 98 /*'b'*/:
    case 100 /*'d'*/:
    case 101 /*'e'*/:
    case 103 /*'g'*/:
    case 104 /*'h'*/:
    case 106 /*'j'*/:
    case 107 /*'k'*/:
    case 108 /*'l'*/:
    case 109 /*'m'*/:
    case 110 /*'n'*/:
    case 111 /*'o'*/:
    case 112 /*'p'*/:
    case 113 /*'q'*/:
    case 114 /*'r'*/:
    case 115 /*'s'*/:
    case 116 /*'t'*/:
    case 117 /*'u'*/:
    case 119 /*'w'*/:
    case 120 /*'x'*/:
    case 121 /*'y'*/:
    case 122 /*'z'*/:
      {
      alt4 = 11;
      }
      break;
    case 48 /*'0'*/:
    case 49 /*'1'*/:
    case 50 /*'2'*/:
    case 51 /*'3'*/:
    case 52 /*'4'*/:
    case 53 /*'5'*/:
    case 54 /*'6'*/:
    case 55 /*'7'*/:
    case 56 /*'8'*/:
    case 57 /*'9'*/:
      {
      alt4 = 12;
      }
      break;
    case 61 /*'='*/:
      {
      int LA4_13 = this.input.LA(2);

      if((LA4_13 == 61/*61 /*'='*/*/)) {
        alt4 = 14;
      }
      else {
        alt4 = 13;
      }
      }
      break;
    case 60 /*'<'*/:
      {
      alt4 = 15;
      }
      break;
    case 43 /*'+'*/:
      {
      alt4 = 16;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 13 /*'\r'*/:
    case 32 /*' '*/:
      {
      alt4 = 17;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 4, 0, this.input);

      throw nvae;

    }

    switch (alt4) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:10: T__21*/
        {
        	this.mT__21(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:16: T__22*/
        {
        	this.mT__22(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:22: T__23*/
        {
        	this.mT__23(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:28: T__24*/
        {
        	this.mT__24(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:34: T__25*/
        {
        	this.mT__25(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:40: T__26*/
        {
        	this.mT__26(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:46: FOR*/
        {
        	this.mFOR(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:50: INT_TYPE*/
        {
        	this.mINT_TYPE(); 


        }
        break;
      case 9 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:59: CHAR*/
        {
        	this.mCHAR(); 


        }
        break;
      case 10 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:64: VOID*/
        {
        	this.mVOID(); 


        }
        break;
      case 11 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:69: ID*/
        {
        	this.mID(); 


        }
        break;
      case 12 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:72: INT*/
        {
        	this.mINT(); 


        }
        break;
      case 13 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:76: EQ*/
        {
        	this.mEQ(); 


        }
        break;
      case 14 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:79: EQEQ*/
        {
        	this.mEQEQ(); 


        }
        break;
      case 15 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:84: LT*/
        {
        	this.mLT(); 


        }
        break;
      case 16 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:87: PLUS*/
        {
        	this.mPLUS(); 


        }
        break;
      case 17 :
        /* ../runtime/dart/tests/grammars/t047treeparser.g:
         1:92: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



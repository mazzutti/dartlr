// $ANTLR 3.4 t016actionsLexer.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t016actionsLexer extends Lexer {

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int ID = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t016actionsLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t016actionsLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t016actions.g";

  String getRecognizerClassName() => "t016actionsLexer";
  
  // $ANTLR start "T__6"
  void mT__6() {
    try {
  	  int _type = T__6;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   7:6: ( ';' )*/
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   7:8: ';'*/
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
  // $ANTLR end "T__6"

  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   8:6: ( 'char' )*/
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   8:8: 'char'*/
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
  // $ANTLR end "T__7"

  // $ANTLR start "T__8"
  void mT__8() {
    try {
  	  int _type = T__8;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   9:6: ( 'int' )*/
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   9:8: 'int'*/
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
  // $ANTLR end "T__8"

  // $ANTLR start "T__9"
  void mT__9() {
    try {
  	  int _type = T__9;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   10:6: ( 'void' )*/
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   10:8: 'void'*/
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
  // $ANTLR end "T__9"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   22:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '0' .. '9' | '_' )* )*/
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   22:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
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


  	  	/* ../runtime/dart/tests/grammars/t016actions.g:
  	  	 22:33: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )**/
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
  	  			  /* ../runtime/dart/tests/grammars/t016actions.g:
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

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   25:5: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t016actions.g:
  	   25:9: ( ' ' | '\\t' | '\\r' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t016actions.g:
  	  	 25:9: ( ' ' | '\\t' | '\\r' | '\\n' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if(((LA2_0 >= 9 /*'\t'*/ && LA2_0 <= 10 /*'\n'*/)
  	  	    || LA2_0 == 13/*13 /*'\r'*/*/
  	  	    || LA2_0 == 32/*32 /*' '*/*/)) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t016actions.g:
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
  	  		    if(cnt2 >= 1) break loop2;
  	  	        EarlyExitException eee = new EarlyExitException(2, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt2++;
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
    /* ../runtime/dart/tests/grammars/t016actions.g: 
     1:8: ( T__6 | T__7 | T__8 | T__9 | ID | WS )*/
    int alt3 = 6;
    switch(this.input.LA(1)) {
    case 59 /*';'*/:
      {
      alt3 = 1;
      }
      break;
    case 99 /*'c'*/:
      {
      int LA3_2 = this.input.LA(2);

      if((LA3_2 == 104/*104 /*'h'*/*/)) {
        int LA3_7 = this.input.LA(3);

        if((LA3_7 == 97/*97 /*'a'*/*/)) {
          int LA3_10 = this.input.LA(4);

          if((LA3_10 == 114/*114 /*'r'*/*/)) {
            int LA3_13 = this.input.LA(5);

            if(((LA3_13 >= 48 /*'0'*/ && LA3_13 <= 57 /*'9'*/)
              || (LA3_13 >= 65 /*'A'*/ && LA3_13 <= 90 /*'Z'*/)
              || LA3_13 == 95/*95 /*'_'*/*/
              || (LA3_13 >= 97 /*'a'*/ && LA3_13 <= 122 /*'z'*/))) {
              alt3 = 5;
            }
            else {
              alt3 = 2;
            }
          }
          else {
            alt3 = 5;
          }
        }
        else {
          alt3 = 5;
        }
      }
      else {
        alt3 = 5;
      }
      }
      break;
    case 105 /*'i'*/:
      {
      int LA3_3 = this.input.LA(2);

      if((LA3_3 == 110/*110 /*'n'*/*/)) {
        int LA3_8 = this.input.LA(3);

        if((LA3_8 == 116/*116 /*'t'*/*/)) {
          int LA3_11 = this.input.LA(4);

          if(((LA3_11 >= 48 /*'0'*/ && LA3_11 <= 57 /*'9'*/)
            || (LA3_11 >= 65 /*'A'*/ && LA3_11 <= 90 /*'Z'*/)
            || LA3_11 == 95/*95 /*'_'*/*/
            || (LA3_11 >= 97 /*'a'*/ && LA3_11 <= 122 /*'z'*/))) {
            alt3 = 5;
          }
          else {
            alt3 = 3;
          }
        }
        else {
          alt3 = 5;
        }
      }
      else {
        alt3 = 5;
      }
      }
      break;
    case 118 /*'v'*/:
      {
      int LA3_4 = this.input.LA(2);

      if((LA3_4 == 111/*111 /*'o'*/*/)) {
        int LA3_9 = this.input.LA(3);

        if((LA3_9 == 105/*105 /*'i'*/*/)) {
          int LA3_12 = this.input.LA(4);

          if((LA3_12 == 100/*100 /*'d'*/*/)) {
            int LA3_15 = this.input.LA(5);

            if(((LA3_15 >= 48 /*'0'*/ && LA3_15 <= 57 /*'9'*/)
              || (LA3_15 >= 65 /*'A'*/ && LA3_15 <= 90 /*'Z'*/)
              || LA3_15 == 95/*95 /*'_'*/*/
              || (LA3_15 >= 97 /*'a'*/ && LA3_15 <= 122 /*'z'*/))) {
              alt3 = 5;
            }
            else {
              alt3 = 4;
            }
          }
          else {
            alt3 = 5;
          }
        }
        else {
          alt3 = 5;
        }
      }
      else {
        alt3 = 5;
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
    case 102 /*'f'*/:
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
      alt3 = 5;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 13 /*'\r'*/:
    case 32 /*' '*/:
      {
      alt3 = 6;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 3, 0, this.input);

      throw nvae;

    }

    switch (alt3) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t016actions.g:
         1:10: T__6*/
        {
        	this.mT__6(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t016actions.g:
         1:15: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t016actions.g:
         1:20: T__8*/
        {
        	this.mT__8(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t016actions.g:
         1:25: T__9*/
        {
        	this.mT__9(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t016actions.g:
         1:30: ID*/
        {
        	this.mID(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t016actions.g:
         1:33: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



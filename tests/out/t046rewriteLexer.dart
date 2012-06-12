// $ANTLR 3.4 t046rewriteLexer.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t046rewriteLexer extends Lexer {

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
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t046rewriteLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t046rewriteLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t046rewrite.g";

  String getRecognizerClassName() => "t046rewriteLexer";
  
  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   7:6: ( '(' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   7:8: '('*/
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
  // $ANTLR end "T__7"

  // $ANTLR start "T__8"
  void mT__8() {
    try {
  	  int _type = T__8;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   8:6: ( ')' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   8:8: ')'*/
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
  // $ANTLR end "T__8"

  // $ANTLR start "T__9"
  void mT__9() {
    try {
  	  int _type = T__9;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   9:6: ( '*' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   9:8: '*'*/
  	  {
  	  	this.match(42 /*'*'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__9"

  // $ANTLR start "T__10"
  void mT__10() {
    try {
  	  int _type = T__10;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   10:7: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   10:9: '+'*/
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
  // $ANTLR end "T__10"

  // $ANTLR start "T__11"
  void mT__11() {
    try {
  	  int _type = T__11;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   11:7: ( ';' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   11:9: ';'*/
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
  // $ANTLR end "T__11"

  // $ANTLR start "T__12"
  void mT__12() {
    try {
  	  int _type = T__12;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   12:7: ( '=' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   12:9: '='*/
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
  // $ANTLR end "T__12"

  // $ANTLR start "T__13"
  void mT__13() {
    try {
  	  int _type = T__13;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   13:7: ( 'method' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   13:9: 'method'*/
  	  {
  	  	this.match("method"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__13"

  // $ANTLR start "T__14"
  void mT__14() {
    try {
  	  int _type = T__14;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   14:7: ( '{' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   14:9: '{'*/
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
  // $ANTLR end "T__14"

  // $ANTLR start "T__15"
  void mT__15() {
    try {
  	  int _type = T__15;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   15:7: ( '}' )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   15:9: '}'*/
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
  // $ANTLR end "T__15"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   51:5: ( ( 'a' .. 'z' | 'A' .. 'Z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   51:9: ( 'a' .. 'z' | 'A' .. 'Z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t046rewrite.g:
  	  	 51:9: ( 'a' .. 'z' | 'A' .. 'Z' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 65 /*'A'*/ && LA1_0 <= 90 /*'Z'*/)
  	  	    || (LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
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
  	  		    if(cnt1 >= 1) break loop1;
  	  	        EarlyExitException eee = new EarlyExitException(1, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt1++;
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
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   53:5: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   53:9: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t046rewrite.g:
  	  	 53:9: ( '0' .. '9' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
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

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   55:5: ( ( ' ' | '\\t' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	   55:9: ( ' ' | '\\t' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t046rewrite.g:
  	  	 55:9: ( ' ' | '\\t' | '\\n' )+*/
  	  	int cnt3 = 0;
  	  	loop3:
  	  	do {
  	  	  int alt3 = 2;
  	  	  int LA3_0 = this.input.LA(1);

  	  	  if(((LA3_0 >= 9 /*'\t'*/ && LA3_0 <= 10 /*'\n'*/)
  	  	    || LA3_0 == 32/*32 /*' '*/*/)) {
  	  	    alt3 = 1;
  	  	  }


  	  	  switch (alt3) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 9 /*'\t'*/ && this.input.LA(1) <= 10 /*'\n'*/)
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


  	  	_channel = HIDDEN;


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
    /* ../runtime/dart/tests/grammars/t046rewrite.g: 
     1:8: ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | 
     T__15 | ID | INT | WS )*/
    int alt4 = 12;
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
    case 42 /*'*'*/:
      {
      alt4 = 3;
      }
      break;
    case 43 /*'+'*/:
      {
      alt4 = 4;
      }
      break;
    case 59 /*';'*/:
      {
      alt4 = 5;
      }
      break;
    case 61 /*'='*/:
      {
      alt4 = 6;
      }
      break;
    case 109 /*'m'*/:
      {
      int LA4_7 = this.input.LA(2);

      if((LA4_7 == 101/*101 /*'e'*/*/)) {
        int LA4_13 = this.input.LA(3);

        if((LA4_13 == 116/*116 /*'t'*/*/)) {
          int LA4_14 = this.input.LA(4);

          if((LA4_14 == 104/*104 /*'h'*/*/)) {
            int LA4_15 = this.input.LA(5);

            if((LA4_15 == 111/*111 /*'o'*/*/)) {
              int LA4_16 = this.input.LA(6);

              if((LA4_16 == 100/*100 /*'d'*/*/)) {
                int LA4_17 = this.input.LA(7);

                if(((LA4_17 >= 65 /*'A'*/ && LA4_17 <= 90 /*'Z'*/)
                  || (LA4_17 >= 97 /*'a'*/ && LA4_17 <= 122 /*'z'*/))) {
                  alt4 = 10;
                }
                else {
                  alt4 = 7;
                }
              }
              else {
                alt4 = 10;
              }
            }
            else {
              alt4 = 10;
            }
          }
          else {
            alt4 = 10;
          }
        }
        else {
          alt4 = 10;
        }
      }
      else {
        alt4 = 10;
      }
      }
      break;
    case 123 /*'{'*/:
      {
      alt4 = 8;
      }
      break;
    case 125 /*'}'*/:
      {
      alt4 = 9;
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
    case 97 /*'a'*/:
    case 98 /*'b'*/:
    case 99 /*'c'*/:
    case 100 /*'d'*/:
    case 101 /*'e'*/:
    case 102 /*'f'*/:
    case 103 /*'g'*/:
    case 104 /*'h'*/:
    case 105 /*'i'*/:
    case 106 /*'j'*/:
    case 107 /*'k'*/:
    case 108 /*'l'*/:
    case 110 /*'n'*/:
    case 111 /*'o'*/:
    case 112 /*'p'*/:
    case 113 /*'q'*/:
    case 114 /*'r'*/:
    case 115 /*'s'*/:
    case 116 /*'t'*/:
    case 117 /*'u'*/:
    case 118 /*'v'*/:
    case 119 /*'w'*/:
    case 120 /*'x'*/:
    case 121 /*'y'*/:
    case 122 /*'z'*/:
      {
      alt4 = 10;
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
      alt4 = 11;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt4 = 12;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 4, 0, this.input);

      throw nvae;

    }

    switch (alt4) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:10: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:15: T__8*/
        {
        	this.mT__8(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:20: T__9*/
        {
        	this.mT__9(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:25: T__10*/
        {
        	this.mT__10(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:31: T__11*/
        {
        	this.mT__11(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:37: T__12*/
        {
        	this.mT__12(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:43: T__13*/
        {
        	this.mT__13(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:49: T__14*/
        {
        	this.mT__14(); 


        }
        break;
      case 9 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:55: T__15*/
        {
        	this.mT__15(); 


        }
        break;
      case 10 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:61: ID*/
        {
        	this.mID(); 


        }
        break;
      case 11 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:64: INT*/
        {
        	this.mINT(); 


        }
        break;
      case 12 :
        /* ../runtime/dart/tests/grammars/t046rewrite.g:
         1:68: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



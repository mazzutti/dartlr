// $ANTLR 3.4 t045dfabugLexer.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t045dfabugLexer extends Lexer {

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t045dfabugLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t045dfabugLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t045dfabug.g";

  String getRecognizerClassName() => "t045dfabugLexer";
  
  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   7:6: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   7:8: '+'*/
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
  // $ANTLR end "T__7"

  // $ANTLR start "T__8"
  void mT__8() {
    try {
  	  int _type = T__8;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   8:6: ( 'fooze' )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   8:8: 'fooze'*/
  	  {
  	  	this.match("fooze"); 




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
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   9:6: ( 'fooze2' )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   9:8: 'fooze2'*/
  	  {
  	  	this.match("fooze2"); 




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
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   10:7: ( 'private' )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   10:9: 'private'*/
  	  {
  	  	this.match("private"); 




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
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   11:7: ( 'public' )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   11:9: 'public'*/
  	  {
  	  	this.match("public"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__11"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   28:4: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   28:6: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t045dfabug.g:
  	  	 28:6: ( 'a' .. 'z' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
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
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   29:5: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   29:7: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t045dfabug.g:
  	  	 29:7: ( '0' .. '9' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t045dfabug.g:
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
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   30:3: ( ( ' ' | '\\n' | '\\t' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t045dfabug.g:
  	   30:5: ( ' ' | '\\n' | '\\t' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t045dfabug.g:
  	  	 30:5: ( ' ' | '\\n' | '\\t' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t045dfabug.g:
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
    /* ../runtime/dart/tests/grammars/t045dfabug.g: 
     1:8: ( T__7 | T__8 | T__9 | T__10 | T__11 | ID | INT | WS )*/
    int alt4 = 8;
    switch(this.input.LA(1)) {
    case 43 /*'+'*/:
      {
      alt4 = 1;
      }
      break;
    case 102 /*'f'*/:
      {
      int LA4_2 = this.input.LA(2);

      if((LA4_2 == 111/*111 /*'o'*/*/)) {
        int LA4_7 = this.input.LA(3);

        if((LA4_7 == 111/*111 /*'o'*/*/)) {
          int LA4_10 = this.input.LA(4);

          if((LA4_10 == 122/*122 /*'z'*/*/)) {
            int LA4_13 = this.input.LA(5);

            if((LA4_13 == 101/*101 /*'e'*/*/)) {
              switch(this.input.LA(6)) {
              case 50 /*'2'*/:
                {
                alt4 = 3;
                }
                break;
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
              case 109 /*'m'*/:
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
                alt4 = 6;
                }
                break;
              default:
                alt4 = 2;
              }

            }
            else {
              alt4 = 6;
            }
          }
          else {
            alt4 = 6;
          }
        }
        else {
          alt4 = 6;
        }
      }
      else {
        alt4 = 6;
      }
      }
      break;
    case 112 /*'p'*/:
      {
      switch(this.input.LA(2)) {
      case 114 /*'r'*/:
        {
        int LA4_8 = this.input.LA(3);

        if((LA4_8 == 105/*105 /*'i'*/*/)) {
          int LA4_11 = this.input.LA(4);

          if((LA4_11 == 118/*118 /*'v'*/*/)) {
            int LA4_14 = this.input.LA(5);

            if((LA4_14 == 97/*97 /*'a'*/*/)) {
              int LA4_17 = this.input.LA(6);

              if((LA4_17 == 116/*116 /*'t'*/*/)) {
                int LA4_21 = this.input.LA(7);

                if((LA4_21 == 101/*101 /*'e'*/*/)) {
                  int LA4_23 = this.input.LA(8);

                  if(((LA4_23 >= 97 /*'a'*/ && LA4_23 <= 122 /*'z'*/))) {
                    alt4 = 6;
                  }
                  else {
                    alt4 = 4;
                  }
                }
                else {
                  alt4 = 6;
                }
              }
              else {
                alt4 = 6;
              }
            }
            else {
              alt4 = 6;
            }
          }
          else {
            alt4 = 6;
          }
        }
        else {
          alt4 = 6;
        }
        }
        break;
      case 117 /*'u'*/:
        {
        int LA4_9 = this.input.LA(3);

        if((LA4_9 == 98/*98 /*'b'*/*/)) {
          int LA4_12 = this.input.LA(4);

          if((LA4_12 == 108/*108 /*'l'*/*/)) {
            int LA4_15 = this.input.LA(5);

            if((LA4_15 == 105/*105 /*'i'*/*/)) {
              int LA4_18 = this.input.LA(6);

              if((LA4_18 == 99/*99 /*'c'*/*/)) {
                int LA4_22 = this.input.LA(7);

                if(((LA4_22 >= 97 /*'a'*/ && LA4_22 <= 122 /*'z'*/))) {
                  alt4 = 6;
                }
                else {
                  alt4 = 5;
                }
              }
              else {
                alt4 = 6;
              }
            }
            else {
              alt4 = 6;
            }
          }
          else {
            alt4 = 6;
          }
        }
        else {
          alt4 = 6;
        }
        }
        break;
      default:
        alt4 = 6;
      }

      }
      break;
    case 97 /*'a'*/:
    case 98 /*'b'*/:
    case 99 /*'c'*/:
    case 100 /*'d'*/:
    case 101 /*'e'*/:
    case 103 /*'g'*/:
    case 104 /*'h'*/:
    case 105 /*'i'*/:
    case 106 /*'j'*/:
    case 107 /*'k'*/:
    case 108 /*'l'*/:
    case 109 /*'m'*/:
    case 110 /*'n'*/:
    case 111 /*'o'*/:
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
      alt4 = 6;
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
      alt4 = 7;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt4 = 8;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 4, 0, this.input);

      throw nvae;

    }

    switch (alt4) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:10: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:15: T__8*/
        {
        	this.mT__8(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:20: T__9*/
        {
        	this.mT__9(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:25: T__10*/
        {
        	this.mT__10(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:31: T__11*/
        {
        	this.mT__11(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:37: ID*/
        {
        	this.mID(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:40: INT*/
        {
        	this.mINT(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t045dfabug.g:
         1:44: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



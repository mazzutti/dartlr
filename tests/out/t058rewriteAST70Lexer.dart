// $ANTLR 3.4 t058rewriteAST70Lexer.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST70Lexer extends Lexer {

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int ID = 4;
  static final int PARMS = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t058rewriteAST70Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t058rewriteAST70Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t058rewriteAST70.g";

  String getRecognizerClassName() => "t058rewriteAST70Lexer";
  
  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   7:6: ( '#' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   7:8: '#'*/
  	  {
  	  	this.match(35 /*'#'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   8:6: ( '(' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   8:8: '('*/
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
  // $ANTLR end "T__8"

  // $ANTLR start "T__9"
  void mT__9() {
    try {
  	  int _type = T__9;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   9:6: ( ')' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   9:8: ')'*/
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
  // $ANTLR end "T__9"

  // $ANTLR start "T__10"
  void mT__10() {
    try {
  	  int _type = T__10;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   10:7: ( 'modulo' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   10:9: 'modulo'*/
  	  {
  	  	this.match("modulo"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__10"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   8:4: ( ( 'a' .. 'z' | 'A' .. 'Z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   8:6: ( 'a' .. 'z' | 'A' .. 'Z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	  	 8:6: ( 'a' .. 'z' | 'A' .. 'Z' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
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

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   9:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
  	   9:6: ( ' ' | '\\n' )*/
  	  {
  	  	if(this.input.LA(1) == 10 /*'\n'*/
  	  	  || this.input.LA(1) == 32 /*' '*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


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
    /* ../runtime/dart/tests/grammars/t058rewriteAST70.g: 
     1:8: ( T__7 | T__8 | T__9 | T__10 | ID | WS )*/
    int alt2 = 6;
    switch(this.input.LA(1)) {
    case 35 /*'#'*/:
      {
      alt2 = 1;
      }
      break;
    case 40 /*'('*/:
      {
      alt2 = 2;
      }
      break;
    case 41 /*')'*/:
      {
      alt2 = 3;
      }
      break;
    case 109 /*'m'*/:
      {
      int LA2_4 = this.input.LA(2);

      if((LA2_4 == 111/*111 /*'o'*/*/)) {
        int LA2_7 = this.input.LA(3);

        if((LA2_7 == 100/*100 /*'d'*/*/)) {
          int LA2_8 = this.input.LA(4);

          if((LA2_8 == 117/*117 /*'u'*/*/)) {
            int LA2_9 = this.input.LA(5);

            if((LA2_9 == 108/*108 /*'l'*/*/)) {
              int LA2_10 = this.input.LA(6);

              if((LA2_10 == 111/*111 /*'o'*/*/)) {
                int LA2_11 = this.input.LA(7);

                if(((LA2_11 >= 65 /*'A'*/ && LA2_11 <= 90 /*'Z'*/)
                  || (LA2_11 >= 97 /*'a'*/ && LA2_11 <= 122 /*'z'*/))) {
                  alt2 = 5;
                }
                else {
                  alt2 = 4;
                }
              }
              else {
                alt2 = 5;
              }
            }
            else {
              alt2 = 5;
            }
          }
          else {
            alt2 = 5;
          }
        }
        else {
          alt2 = 5;
        }
      }
      else {
        alt2 = 5;
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
      alt2 = 5;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt2 = 6;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 2, 0, this.input);

      throw nvae;

    }

    switch (alt2) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
         1:10: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
         1:15: T__8*/
        {
        	this.mT__8(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
         1:20: T__9*/
        {
        	this.mT__9(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
         1:25: T__10*/
        {
        	this.mT__10(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
         1:31: ID*/
        {
        	this.mID(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST70.g:
         1:34: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



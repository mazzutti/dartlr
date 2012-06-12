// $ANTLR 3.4 t031emptyAltLexer.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t031emptyAltLexer extends Lexer {

  static final int EOF = -1;
  static final int NAME = 4;
  static final int NUMBER = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t031emptyAltLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t031emptyAltLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t031emptyAlt.g";

  String getRecognizerClassName() => "t031emptyAltLexer";
  
  // $ANTLR start "NAME"
  void mNAME() {
    try {
  	  int _type = NAME;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	   19:5: ( ( 'a' .. 'z' ) ( 'a' .. 'z' | '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	   19:7: ( 'a' .. 'z' ) ( 'a' .. 'z' | '0' .. '9' )+*/
  	  {
  	  	if((this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	  	 19:18: ( 'a' .. 'z' | '0' .. '9' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/)
  	  	    || (LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
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
  // $ANTLR end "NAME"

  // $ANTLR start "NUMBER"
  void mNUMBER() {
    try {
  	  int _type = NUMBER;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	   20:7: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	   20:9: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	  	 20:9: ( '0' .. '9' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
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
  // $ANTLR end "NUMBER"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	   21:3: ( ( ' ' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	   21:5: ( ' ' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	  	 21:5: ( ' ' )+*/
  	  	int cnt3 = 0;
  	  	loop3:
  	  	do {
  	  	  int alt3 = 2;
  	  	  int LA3_0 = this.input.LA(1);

  	  	  if((LA3_0 == 32/*32 /*' '*/*/)) {
  	  	    alt3 = 1;
  	  	  }


  	  	  switch (alt3) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
  	  			   21:5: ' '*/
  	  			  {
  	  			  	this.match(32 /*' '*/); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt3 >= 1) break loop3;
  	  	        EarlyExitException eee = new EarlyExitException(3, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt3++;
  	  	} while(true);


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
    /* ../runtime/dart/tests/grammars/t031emptyAlt.g: 
     1:8: ( NAME | NUMBER | WS )*/
    int alt4 = 3;
    switch(this.input.LA(1)) {
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
      alt4 = 1;
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
      alt4 = 2;
      }
      break;
    case 32 /*' '*/:
      {
      alt4 = 3;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 4, 0, this.input);

      throw nvae;

    }

    switch (alt4) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
         1:10: NAME*/
        {
        	this.mNAME(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
         1:15: NUMBER*/
        {
        	this.mNUMBER(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
         1:22: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



// $ANTLR 3.4 t053heteroT12Lexer.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t053heteroT12Lexer extends Lexer {

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t053heteroT12Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t053heteroT12Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t053heteroT12.g";

  String getRecognizerClassName() => "t053heteroT12Lexer";
  
  // $ANTLR start "T__7"
  void mT__7() {
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   7:6: ( 'begin' )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   7:8: 'begin'*/
  	  {
  	  	this.match("begin"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__7"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   10:4: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   10:6: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	  	 10:6: ( 'a' .. 'z' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
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
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   11:5: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   11:7: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	  	 11:7: ( '0' .. '9' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
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
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   12:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
  	   12:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t053heteroT12.g: 
     1:8: ( T__7 | ID | INT | WS )*/
    int alt3 = 4;
    switch(this.input.LA(1)) {
    case 98 /*'b'*/:
      {
      int LA3_1 = this.input.LA(2);

      if((LA3_1 == 101/*101 /*'e'*/*/)) {
        int LA3_5 = this.input.LA(3);

        if((LA3_5 == 103/*103 /*'g'*/*/)) {
          int LA3_6 = this.input.LA(4);

          if((LA3_6 == 105/*105 /*'i'*/*/)) {
            int LA3_7 = this.input.LA(5);

            if((LA3_7 == 110/*110 /*'n'*/*/)) {
              int LA3_8 = this.input.LA(6);

              if(((LA3_8 >= 97 /*'a'*/ && LA3_8 <= 122 /*'z'*/))) {
                alt3 = 2;
              }
              else {
                alt3 = 1;
              }
            }
            else {
              alt3 = 2;
            }
          }
          else {
            alt3 = 2;
          }
        }
        else {
          alt3 = 2;
        }
      }
      else {
        alt3 = 2;
      }
      }
      break;
    case 97 /*'a'*/:
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
      alt3 = 2;
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
      alt3 = 3;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt3 = 4;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 3, 0, this.input);

      throw nvae;

    }

    switch (alt3) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t053heteroT12.g:
         1:10: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t053heteroT12.g:
         1:15: ID*/
        {
        	this.mID(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t053heteroT12.g:
         1:18: INT*/
        {
        	this.mINT(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t053heteroT12.g:
         1:22: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



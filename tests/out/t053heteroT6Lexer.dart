// $ANTLR 3.4 t053heteroT6Lexer.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t053heteroT6Lexer extends Lexer {

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int ID = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t053heteroT6Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t053heteroT6Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t053heteroT6.g";

  String getRecognizerClassName() => "t053heteroT6Lexer";
  
  // $ANTLR start "T__6"
  void mT__6() {
    try {
  	  int _type = T__6;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
  	   7:6: ( 'begin' )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
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
  // $ANTLR end "T__6"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
  	   10:4: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
  	   10:6: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t053heteroT6.g:
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
  	  			  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
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

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
  	   11:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
  	   11:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t053heteroT6.g: 
     1:8: ( T__6 | ID | WS )*/
    int alt2 = 3;
    switch(this.input.LA(1)) {
    case 98 /*'b'*/:
      {
      int LA2_1 = this.input.LA(2);

      if((LA2_1 == 101/*101 /*'e'*/*/)) {
        int LA2_4 = this.input.LA(3);

        if((LA2_4 == 103/*103 /*'g'*/*/)) {
          int LA2_5 = this.input.LA(4);

          if((LA2_5 == 105/*105 /*'i'*/*/)) {
            int LA2_6 = this.input.LA(5);

            if((LA2_6 == 110/*110 /*'n'*/*/)) {
              int LA2_7 = this.input.LA(6);

              if(((LA2_7 >= 97 /*'a'*/ && LA2_7 <= 122 /*'z'*/))) {
                alt2 = 2;
              }
              else {
                alt2 = 1;
              }
            }
            else {
              alt2 = 2;
            }
          }
          else {
            alt2 = 2;
          }
        }
        else {
          alt2 = 2;
        }
      }
      else {
        alt2 = 2;
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
      alt2 = 2;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
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
        /* ../runtime/dart/tests/grammars/t053heteroT6.g:
         1:10: T__6*/
        {
        	this.mT__6(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t053heteroT6.g:
         1:15: ID*/
        {
        	this.mID(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t053heteroT6.g:
         1:18: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



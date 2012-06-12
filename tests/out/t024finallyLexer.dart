// $ANTLR 3.4 t024finallyLexer.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t024finallyLexer extends Lexer {

  static final int EOF = -1;
  static final int ID = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t024finallyLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t024finallyLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t024finally.g";

  String getRecognizerClassName() => "t024finallyLexer";
  
  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t024finally.g:
  	   15:5: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t024finally.g:
  	   15:9: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t024finally.g:
  	  	 15:9: ( 'a' .. 'z' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t024finally.g:
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
  	  /* ../runtime/dart/tests/grammars/t024finally.g:
  	   18:5: ( ( ' ' | '\\n' | '\\r' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t024finally.g:
  	   18:9: ( ' ' | '\\n' | '\\r' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t024finally.g:
  	  	 18:9: ( ' ' | '\\n' | '\\r' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if((LA2_0 == 10/*10 /*'\n'*/*/
  	  	    || LA2_0 == 13/*13 /*'\r'*/*/
  	  	    || LA2_0 == 32/*32 /*' '*/*/)) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t024finally.g:
  	  			  */
  	  			  {
  	  			  	if(this.input.LA(1) == 10 /*'\n'*/
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
    /* ../runtime/dart/tests/grammars/t024finally.g: 
     1:8: ( ID | WS )*/
    int alt3 = 2;
    int LA3_0 = this.input.LA(1);

    if(((LA3_0 >= 97 /*'a'*/ && LA3_0 <= 122 /*'z'*/))) {
      alt3 = 1;
    }
    else if((LA3_0 == 10/*10 /*'\n'*/*/
      || LA3_0 == 13/*13 /*'\r'*/*/
      || LA3_0 == 32/*32 /*' '*/*/)) {
      alt3 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 3, 0, this.input);

      throw nvae;

    }
    switch (alt3) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t024finally.g:
         1:10: ID*/
        {
        	this.mID(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t024finally.g:
         1:13: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



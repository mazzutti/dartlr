// $ANTLR 3.4 t058rewriteAST48Lexer.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST48Lexer extends Lexer {

  static final int EOF = -1;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int WS = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t058rewriteAST48Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t058rewriteAST48Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t058rewriteAST48.g";

  String getRecognizerClassName() => "t058rewriteAST48Lexer";
  
  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
  	   7:4: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
  	   7:6: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
  	  	 7:6: ( 'a' .. 'z' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
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
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
  	   8:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
  	   8:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t058rewriteAST48.g: 
     1:8: ( ID | WS )*/
    int alt2 = 2;
    int LA2_0 = this.input.LA(1);

    if(((LA2_0 >= 97 /*'a'*/ && LA2_0 <= 122 /*'z'*/))) {
      alt2 = 1;
    }
    else if((LA2_0 == 10/*10 /*'\n'*/*/
      || LA2_0 == 32/*32 /*' '*/*/)) {
      alt2 = 2;
    }
    else {
      NoViableAltException nvae =
          new NoViableAltException("", 2, 0, this.input);

      throw nvae;

    }
    switch (alt2) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
         1:10: ID*/
        {
        	this.mID(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST48.g:
         1:13: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



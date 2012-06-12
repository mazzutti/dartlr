// $ANTLR 3.4 t036multipleReturnValuesLexer.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t036multipleReturnValuesLexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t036multipleReturnValuesLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t036multipleReturnValuesLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t036multipleReturnValues.g";

  String getRecognizerClassName() => "t036multipleReturnValuesLexer";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	   13:2: ( 'a' .. 'z' )*/
  	  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
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

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	   15:5: ( ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+ )*/
  	  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	   16:9: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  	 16:9: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 4;
  	  	  switch ( this.input.LA(1) ) {
  	  	  case 32 /*' '*/:
  	  	    {
  	  	    alt2 = 1;
  	  	    }
  	  	    break;
  	  	  case 9 /*'\t'*/:
  	  	    {
  	  	    alt2 = 2;
  	  	    }
  	  	    break;
  	  	  case 10 /*'\n'*/:
  	  	  case 13 /*'\r'*/:
  	  	    {
  	  	    alt2 = 3;
  	  	    }
  	  	    break;

  	  	  }

  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			   16:13: ' '*/
  	  			  {
  	  			  	this.match(32 /*' '*/); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			   17:13: '\\t'*/
  	  			  {
  	  			  	this.match(9 /*'\t'*/); 


  	  			  }
  	  			  break;
  	  			case 3 :
  	  			  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			   18:12: ( '\\n' | '\\r\\n' | '\\r' )*/
  	  			  {
  	  			  	/* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			  	 18:12: ( '\\n' | '\\r\\n' | '\\r' )*/
  	  			  	int alt1 = 3;
  	  			  	int LA1_0 = this.input.LA(1);

  	  			  	if((LA1_0 == 10/*10 /*'\n'*/*/)) {
  	  			  	  alt1 = 1;
  	  			  	}
  	  			  	else if((LA1_0 == 13/*13 /*'\r'*/*/)) {
  	  			  	  int LA1_2 = this.input.LA(2);

  	  			  	  if((LA1_2 == 10/*10 /*'\n'*/*/)) {
  	  			  	    alt1 = 2;
  	  			  	  }
  	  			  	  else {
  	  			  	    alt1 = 3;
  	  			  	  }
  	  			  	}
  	  			  	else {
  	  			  	  NoViableAltException nvae =
  	  			  	      new NoViableAltException("", 1, 0, this.input);

  	  			  	  throw nvae;

  	  			  	}
  	  			  	switch (alt1) {
  	  			  	  case 1 :
  	  			  	    /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			  	     18:14: '\\n'*/
  	  			  	    {
  	  			  	    	this.match(10 /*'\n'*/); 


  	  			  	    }
  	  			  	    break;
  	  			  	  case 2 :
  	  			  	    /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			  	     19:15: '\\r\\n'*/
  	  			  	    {
  	  			  	    	this.match("\r\n"); 




  	  			  	    }
  	  			  	    break;
  	  			  	  case 3 :
  	  			  	    /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
  	  			  	     20:15: '\\r'*/
  	  			  	    {
  	  			  	    	this.match(13 /*'\r'*/); 


  	  			  	    }
  	  			  	    break;

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
    /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g: 
     1:8: ( A | WS )*/
    int alt3 = 2;
    int LA3_0 = this.input.LA(1);

    if(((LA3_0 >= 97 /*'a'*/ && LA3_0 <= 122 /*'z'*/))) {
      alt3 = 1;
    }
    else if(((LA3_0 >= 9 /*'\t'*/ && LA3_0 <= 10 /*'\n'*/)
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
        /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
         1:12: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



// $ANTLR 3.4 t040bug80.g 2012-06-07 21:59:38
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t040bug80 extends Lexer {

  static final int EOF = -1;
  static final int ID_LIKE = 4;
  static final int Identifier = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t040bug80([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t040bug80.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t040bug80.g";

  String getRecognizerClassName() => "t040bug80";
  
  // $ANTLR start "ID_LIKE"
  void mID_LIKE() {
    try {
  	  int _type = ID_LIKE;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t040bug80.g: 
  	   7:5: ( 'defined' |{...}? Identifier | Identifier )*/
  	  int alt1 = 3;
  	  int LA1_0 = this.input.LA(1);

  	  if((LA1_0 == 100/*100 /*'d'*/*/)) {
  	    int LA1_1 = this.input.LA(2);

  	    if((LA1_1 == 101/*101 /*'e'*/*/)) {
  	      alt1 = 1;
  	    }
  	    else if(((false))) {
  	      alt1 = 2;
  	    }
  	    else if((true)) {
  	      alt1 = 3;
  	    }
  	    else {
  	      NoViableAltException nvae =
  	          new NoViableAltException("", 1, 1, this.input);

  	      throw nvae;

  	    }
  	  }
  	  else if(((LA1_0 >= 97 /*'a'*/ && LA1_0 <= 99 /*'c'*/)
  	    || (LA1_0 >= 101 /*'e'*/ && LA1_0 <= 122 /*'z'*/))) {
  	    int LA1_2 = this.input.LA(2);

  	    if(((false))) {
  	      alt1 = 2;
  	    }
  	    else if((true)) {
  	      alt1 = 3;
  	    }
  	    else {
  	      NoViableAltException nvae =
  	          new NoViableAltException("", 1, 2, this.input);

  	      throw nvae;

  	    }
  	  }
  	  else {
  	    NoViableAltException nvae =
  	        new NoViableAltException("", 1, 0, this.input);

  	    throw nvae;

  	  }
  	  switch (alt1) {
  	    case 1 :
  	      /* ../runtime/dart/tests/grammars/t040bug80.g:
  	       7:7: 'defined'*/
  	      {
  	      	this.match("defined"); 




  	      }
  	      break;
  	    case 2 :
  	      /* ../runtime/dart/tests/grammars/t040bug80.g:
  	       8:7: {...}? Identifier*/
  	      {
  	      	if(!((false))) {
  	      	  throw new FailedPredicateException(input, "ID_LIKE", @"false");
  	      	}

  	      	this.mIdentifier(); 


  	      }
  	      break;
  	    case 3 :
  	      /* ../runtime/dart/tests/grammars/t040bug80.g:
  	       9:7: Identifier*/
  	      {
  	      	this.mIdentifier(); 


  	      }
  	      break;

  	  }
  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ID_LIKE"

  // $ANTLR start "Identifier"
  void mIdentifier() {
    try {
  	  /* ../runtime/dart/tests/grammars/t040bug80.g:
  	   13:11: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t040bug80.g:
  	   13:13: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t040bug80.g:
  	  	 13:13: ( 'a' .. 'z' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if(((LA2_0 >= 97 /*'a'*/ && LA2_0 <= 122 /*'z'*/))) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t040bug80.g:
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
  	  		    if(cnt2 >= 1) break loop2;
  	  	        EarlyExitException eee = new EarlyExitException(2, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt2++;
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "Identifier"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t040bug80.g:
     1:8: ( ID_LIKE )*/
    /* ../runtime/dart/tests/grammars/t040bug80.g:
     1:10: ID_LIKE*/
    {
    	this.mID_LIKE(); 


    }


  }  

  
}



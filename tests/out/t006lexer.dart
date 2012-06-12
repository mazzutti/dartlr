// $ANTLR 3.4 t006lexer.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t006lexer extends Lexer {

  static final int EOF = -1;
  static final int FOO = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t006lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t006lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t006lexer.g";

  String getRecognizerClassName() => "t006lexer";
  
  // $ANTLR start "FOO"
  void mFOO() {
    try {
  	  int _type = FOO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t006lexer.g:
  	   6:4: ( 'f' ( 'o' | 'a' )* )*/
  	  /* ../runtime/dart/tests/grammars/t006lexer.g:
  	   6:6: 'f' ( 'o' | 'a' )**/
  	  {
  	  	this.match(102 /*'f'*/); 


  	  	/* ../runtime/dart/tests/grammars/t006lexer.g:
  	  	 6:10: ( 'o' | 'a' )**/
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if((LA1_0 == 97/*97 /*'a'*/*/
  	  	    || LA1_0 == 111/*111 /*'o'*/*/)) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t006lexer.g:
  	  			  */
  	  			  {
  	  			  	if(this.input.LA(1) == 97 /*'a'*/
  	  			  	  || this.input.LA(1) == 111 /*'o'*/) {
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
  	  		    break loop1;
  	  	  }
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "FOO"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t006lexer.g:
     1:8: ( FOO )*/
    /* ../runtime/dart/tests/grammars/t006lexer.g:
     1:10: FOO*/
    {
    	this.mFOO(); 


    }


  }  

  
}



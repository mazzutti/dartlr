// $ANTLR 3.4 t004lexer.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t004lexer extends Lexer {

  static final int EOF = -1;
  static final int FOO = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t004lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t004lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t004lexer.g";

  String getRecognizerClassName() => "t004lexer";
  
  // $ANTLR start "FOO"
  void mFOO() {
    try {
  	  int _type = FOO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t004lexer.g:
  	   6:4: ( 'f' ( 'o' )* )*/
  	  /* ../runtime/dart/tests/grammars/t004lexer.g:
  	   6:6: 'f' ( 'o' )**/
  	  {
  	  	this.match(102 /*'f'*/); 


  	  	/* ../runtime/dart/tests/grammars/t004lexer.g:
  	  	 6:10: ( 'o' )**/
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if((LA1_0 == 111/*111 /*'o'*/*/)) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t004lexer.g:
  	  			   6:10: 'o'*/
  	  			  {
  	  			  	this.match(111 /*'o'*/); 


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
    /* ../runtime/dart/tests/grammars/t004lexer.g:
     1:8: ( FOO )*/
    /* ../runtime/dart/tests/grammars/t004lexer.g:
     1:10: FOO*/
    {
    	this.mFOO(); 


    }


  }  

  
}



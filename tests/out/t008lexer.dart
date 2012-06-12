// $ANTLR 3.4 t008lexer.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t008lexer extends Lexer {

  static final int EOF = -1;
  static final int FOO = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t008lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t008lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t008lexer.g";

  String getRecognizerClassName() => "t008lexer";
  
  // $ANTLR start "FOO"
  void mFOO() {
    try {
  	  int _type = FOO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t008lexer.g:
  	   6:4: ( 'f' ( 'a' )? )*/
  	  /* ../runtime/dart/tests/grammars/t008lexer.g:
  	   6:6: 'f' ( 'a' )?*/
  	  {
  	  	this.match(102 /*'f'*/); 


  	  	/* ../runtime/dart/tests/grammars/t008lexer.g:
  	  	 6:10: ( 'a' )?*/
  	  	int alt1 = 2;
  	  	int LA1_0 = this.input.LA(1);

  	  	if((LA1_0 == 97/*97 /*'a'*/*/)) {
  	  	  alt1 = 1;
  	  	}
  	  	switch (alt1) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t008lexer.g:
  	  	     6:10: 'a'*/
  	  	    {
  	  	    	this.match(97 /*'a'*/); 


  	  	    }
  	  	    break;

  	  	}


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
    /* ../runtime/dart/tests/grammars/t008lexer.g:
     1:8: ( FOO )*/
    /* ../runtime/dart/tests/grammars/t008lexer.g:
     1:10: FOO*/
    {
    	this.mFOO(); 


    }


  }  

  
}



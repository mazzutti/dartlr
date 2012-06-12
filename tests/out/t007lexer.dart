// $ANTLR 3.4 t007lexer.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t007lexer extends Lexer {

  static final int EOF = -1;
  static final int FOO = 4;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t007lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t007lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t007lexer.g";

  String getRecognizerClassName() => "t007lexer";
  
  // $ANTLR start "FOO"
  void mFOO() {
    try {
  	  int _type = FOO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t007lexer.g:
  	   6:4: ( 'f' ( 'o' | 'a' ( 'b' )+ )* )*/
  	  /* ../runtime/dart/tests/grammars/t007lexer.g:
  	   6:6: 'f' ( 'o' | 'a' ( 'b' )+ )**/
  	  {
  	  	this.match(102 /*'f'*/); 


  	  	/* ../runtime/dart/tests/grammars/t007lexer.g:
  	  	 6:10: ( 'o' | 'a' ( 'b' )+ )**/
  	  	loop2:
  	  	do {
  	  	  int alt2 = 3;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if((LA2_0 == 111/*111 /*'o'*/*/)) {
  	  	    alt2 = 1;
  	  	  }
  	  	  else if((LA2_0 == 97/*97 /*'a'*/*/)) {
  	  	    alt2 = 2;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t007lexer.g:
  	  			   6:11: 'o'*/
  	  			  {
  	  			  	this.match(111 /*'o'*/); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t007lexer.g:
  	  			   6:17: 'a' ( 'b' )+*/
  	  			  {
  	  			  	this.match(97 /*'a'*/); 


  	  			  	/* ../runtime/dart/tests/grammars/t007lexer.g:
  	  			  	 6:21: ( 'b' )+*/
  	  			  	int cnt1 = 0;
  	  			  	loop1:
  	  			  	do {
  	  			  	  int alt1 = 2;
  	  			  	  int LA1_0 = this.input.LA(1);

  	  			  	  if((LA1_0 == 98/*98 /*'b'*/*/)) {
  	  			  	    alt1 = 1;
  	  			  	  }


  	  			  	  switch (alt1) {
  	  			  			case 1 :
  	  			  			  /* ../runtime/dart/tests/grammars/t007lexer.g:
  	  			  			   6:21: 'b'*/
  	  			  			  {
  	  			  			  	this.match(98 /*'b'*/); 


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
  	  			  break;

  	  			default :
  	  		    break loop2;
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
    /* ../runtime/dart/tests/grammars/t007lexer.g:
     1:8: ( FOO )*/
    /* ../runtime/dart/tests/grammars/t007lexer.g:
     1:10: FOO*/
    {
    	this.mFOO(); 


    }


  }  

  
}



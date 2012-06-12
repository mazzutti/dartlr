// $ANTLR 3.4 t038lexerRuleLabel.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t038lexerRuleLabel extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t038lexerRuleLabel([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t038lexerRuleLabel.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t038lexerRuleLabel.g";

  String getRecognizerClassName() => "t038lexerRuleLabel";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken WS1 = null;

  	  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	   6:2: ( 'a' .. 'z' WS '0' .. '9' )*/
  	  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	   6:4: 'a' .. 'z' WS '0' .. '9'*/
  	  {
  	  	this.matchRange(97 /*'a'*/, 122 /*'z'*/); 


  	  	int WS1Start28 = this.charIndex;
  	  	int WS1StartLine28 = this.line;
  	  	int WS1StartCharPos28 = this.charPositionInLine;
  	  	this.mWS(); 
  	  	WS1 = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, WS1Start28, this.charIndex-1);
  	  	WS1.line = WS1StartLine28;
  	  	WS1.charPositionInLine = WS1StartCharPos28;


  	  	this.matchRange(48 /*'0'*/, 57 /*'9'*/); 



  	  	            print(WS1);
  	  	            print((WS1!=null?WS1.type:0));
  	  	            print((WS1!=null?WS1.line:0));
  	  	            print((WS1!=null?WS1.charPositionInLine:-1));
  	  	            print((WS1!=null?WS1.channel:0));
  	  	            print((WS1!=null?WS1.tokenIndex:0));
  	  	            print((WS1!=null?WS1.text:null));
  	  	        


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
  	  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	   18:14: ( ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+ )*/
  	  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	   19:9: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  	 19:9: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			   19:13: ' '*/
  	  			  {
  	  			  	this.match(32 /*' '*/); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			   20:13: '\\t'*/
  	  			  {
  	  			  	this.match(9 /*'\t'*/); 


  	  			  }
  	  			  break;
  	  			case 3 :
  	  			  /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			   21:12: ( '\\n' | '\\r\\n' | '\\r' )*/
  	  			  {
  	  			  	/* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			  	 21:12: ( '\\n' | '\\r\\n' | '\\r' )*/
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
  	  			  	    /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			  	     21:14: '\\n'*/
  	  			  	    {
  	  			  	    	this.match(10 /*'\n'*/); 


  	  			  	    }
  	  			  	    break;
  	  			  	  case 2 :
  	  			  	    /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			  	     22:15: '\\r\\n'*/
  	  			  	    {
  	  			  	    	this.match("\r\n"); 




  	  			  	    }
  	  			  	    break;
  	  			  	  case 3 :
  	  			  	    /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
  	  			  	     23:15: '\\r'*/
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


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
     1:8: ( A )*/
    /* ../runtime/dart/tests/grammars/t038lexerRuleLabel.g:
     1:10: A*/
    {
    	this.mA(); 


    }


  }  

  
}



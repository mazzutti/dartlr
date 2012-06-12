// $ANTLR 3.4 t026actionsLexer.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t026actionsLexer extends Lexer {

  static final int EOF = -1;
  static final int IDENTIFIER = 4;
  static final int WS = 5;  

  List xlog;
  String foobar;
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t026actionsLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {

    this.xlog = new List();
    this.foobar = "attribute;";

  }

  t026actionsLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {

    this.xlog = new List();
    this.foobar = "attribute;";

  }

  String get grammarFileName() => "t026actions.g";

  String getRecognizerClassName() => "t026actionsLexer";
  
  // $ANTLR start "IDENTIFIER"
  void mIDENTIFIER() {
    try {
  	  int _type = IDENTIFIER;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t026actions.g:
  	   42:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '0' .. '9' | '_' )* )*/
  	  /* ../runtime/dart/tests/grammars/t026actions.g:
  	   42:7: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '0' .. '9' | '_' )**/
  	  {
  	  	if((this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  	  || this.input.LA(1) == 95 /*'_'*/
  	  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t026actions.g:
  	  	 42:31: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )**/
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/)
  	  	    || (LA1_0 >= 65 /*'A'*/ && LA1_0 <= 90 /*'Z'*/)
  	  	    || LA1_0 == 95/*95 /*'_'*/*/
  	  	    || (LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t026actions.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
  	  			  	  || (this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  			  	  || this.input.LA(1) == 95 /*'_'*/
  	  			  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
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



  	  	          // a comment
  	  	          this.xlog.add("action;");
  	  	          StringBuffer sb = new StringBuffer();
  	  	          List temp = [text, _type, this.state.tokenStartLine, this.state.tokenStartCharPositionInLine, -1, _channel, this.state.tokenStartCharIndex, (this.charIndex-1)];
  	  	          sb.add(temp[0]);
  	  	          for(int i = 1; i < temp.length; i++){
  	  	             sb.add(" ");
  	  	             sb.add(temp[i]);
  	  	          }
  	  	          this.xlog.add(sb.toString());                    
  	  	          if (true)
  	  	              this.xlog.add(this.foobar);
  	  	        


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "IDENTIFIER"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t026actions.g:
  	   59:3: ( ( ' ' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t026actions.g:
  	   59:5: ( ' ' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t026actions.g:
  	  	 59:5: ( ' ' | '\\n' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if((LA2_0 == 10/*10 /*'\n'*/*/
  	  	    || LA2_0 == 32/*32 /*' '*/*/)) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t026actions.g:
  	  			  */
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

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t026actions.g: 
     1:8: ( IDENTIFIER | WS )*/
    int alt3 = 2;
    int LA3_0 = this.input.LA(1);

    if(((LA3_0 >= 65 /*'A'*/ && LA3_0 <= 90 /*'Z'*/)
      || LA3_0 == 95/*95 /*'_'*/*/
      || (LA3_0 >= 97 /*'a'*/ && LA3_0 <= 122 /*'z'*/))) {
      alt3 = 1;
    }
    else if((LA3_0 == 10/*10 /*'\n'*/*/
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
        /* ../runtime/dart/tests/grammars/t026actions.g:
         1:10: IDENTIFIER*/
        {
        	this.mIDENTIFIER(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t026actions.g:
         1:21: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



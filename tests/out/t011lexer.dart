// $ANTLR 3.4 t011lexer.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t011lexer extends Lexer {

  static final int EOF = -1;
  static final int IDENTIFIER = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t011lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t011lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t011lexer.g";

  String getRecognizerClassName() => "t011lexer";
  
  // $ANTLR start "IDENTIFIER"
  void mIDENTIFIER() {
    try {
  	  int _type = IDENTIFIER;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	   6:11: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '0' .. '9' | '_' )* )*/
  	  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	   7:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
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


  	  	/* ../runtime/dart/tests/grammars/t011lexer.g:
  	  	 8:9: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )**/
  	  	loop1:
  	  	do {
  	  	  int alt1 = 5;
  	  	  switch ( this.input.LA(1) ) {
  	  	  case 97 /*'a'*/:
  	  	  case 98 /*'b'*/:
  	  	  case 99 /*'c'*/:
  	  	  case 100 /*'d'*/:
  	  	  case 101 /*'e'*/:
  	  	  case 102 /*'f'*/:
  	  	  case 103 /*'g'*/:
  	  	  case 104 /*'h'*/:
  	  	  case 105 /*'i'*/:
  	  	  case 106 /*'j'*/:
  	  	  case 107 /*'k'*/:
  	  	  case 108 /*'l'*/:
  	  	  case 109 /*'m'*/:
  	  	  case 110 /*'n'*/:
  	  	  case 111 /*'o'*/:
  	  	  case 112 /*'p'*/:
  	  	  case 113 /*'q'*/:
  	  	  case 114 /*'r'*/:
  	  	  case 115 /*'s'*/:
  	  	  case 116 /*'t'*/:
  	  	  case 117 /*'u'*/:
  	  	  case 118 /*'v'*/:
  	  	  case 119 /*'w'*/:
  	  	  case 120 /*'x'*/:
  	  	  case 121 /*'y'*/:
  	  	  case 122 /*'z'*/:
  	  	    {
  	  	    alt1 = 1;
  	  	    }
  	  	    break;
  	  	  case 65 /*'A'*/:
  	  	  case 66 /*'B'*/:
  	  	  case 67 /*'C'*/:
  	  	  case 68 /*'D'*/:
  	  	  case 69 /*'E'*/:
  	  	  case 70 /*'F'*/:
  	  	  case 71 /*'G'*/:
  	  	  case 72 /*'H'*/:
  	  	  case 73 /*'I'*/:
  	  	  case 74 /*'J'*/:
  	  	  case 75 /*'K'*/:
  	  	  case 76 /*'L'*/:
  	  	  case 77 /*'M'*/:
  	  	  case 78 /*'N'*/:
  	  	  case 79 /*'O'*/:
  	  	  case 80 /*'P'*/:
  	  	  case 81 /*'Q'*/:
  	  	  case 82 /*'R'*/:
  	  	  case 83 /*'S'*/:
  	  	  case 84 /*'T'*/:
  	  	  case 85 /*'U'*/:
  	  	  case 86 /*'V'*/:
  	  	  case 87 /*'W'*/:
  	  	  case 88 /*'X'*/:
  	  	  case 89 /*'Y'*/:
  	  	  case 90 /*'Z'*/:
  	  	    {
  	  	    alt1 = 2;
  	  	    }
  	  	    break;
  	  	  case 48 /*'0'*/:
  	  	  case 49 /*'1'*/:
  	  	  case 50 /*'2'*/:
  	  	  case 51 /*'3'*/:
  	  	  case 52 /*'4'*/:
  	  	  case 53 /*'5'*/:
  	  	  case 54 /*'6'*/:
  	  	  case 55 /*'7'*/:
  	  	  case 56 /*'8'*/:
  	  	  case 57 /*'9'*/:
  	  	    {
  	  	    alt1 = 3;
  	  	    }
  	  	    break;
  	  	  case 95 /*'_'*/:
  	  	    {
  	  	    alt1 = 4;
  	  	    }
  	  	    break;

  	  	  }

  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	  			   8:10: 'a' .. 'z'*/
  	  			  {
  	  			  	this.matchRange(97 /*'a'*/, 122 /*'z'*/); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	  			   9:10: 'A' .. 'Z'*/
  	  			  {
  	  			  	this.matchRange(65 /*'A'*/, 90 /*'Z'*/); 


  	  			  }
  	  			  break;
  	  			case 3 :
  	  			  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	  			   10:10: '0' .. '9'*/
  	  			  {
  	  			  	this.matchRange(48 /*'0'*/, 57 /*'9'*/); 


  	  			  }
  	  			  break;
  	  			case 4 :
  	  			  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	  			   11:10: '_'*/
  	  			  {
  	  			  	this.match(95 /*'_'*/); 


  	  			  	 
  	  			  	              print("Underscore");
  	  			  	              print("foo");
  	  			  	            


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
  // $ANTLR end "IDENTIFIER"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	   19:3: ( ( ' ' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t011lexer.g:
  	   19:5: ( ' ' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t011lexer.g:
  	  	 19:5: ( ' ' | '\\n' )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t011lexer.g:
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
    /* ../runtime/dart/tests/grammars/t011lexer.g: 
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
        /* ../runtime/dart/tests/grammars/t011lexer.g:
         1:10: IDENTIFIER*/
        {
        	this.mIDENTIFIER(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t011lexer.g:
         1:21: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



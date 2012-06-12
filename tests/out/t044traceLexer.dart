// $ANTLR 3.4 t044traceLexer.g 2012-06-07 21:59:32
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t044traceLexer extends Lexer {

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int INT = 4;
  static final int WS = 5;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t044traceLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t044traceLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t044trace.g";

  String getRecognizerClassName() => "t044traceLexer";
  
  // $ANTLR start "T__6"
  void mT__6() {
    this.traceIn("T__6", 1);
    try {
  	  int _type = T__6;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   7:6: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   7:8: '+'*/
  	  {
  	  	this.match(43 /*'+'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
      this.traceOut("T__6", 1);
    }
  }
  // $ANTLR end "T__6"

  // $ANTLR start "T__7"
  void mT__7() {
    this.traceIn("T__7", 2);
    try {
  	  int _type = T__7;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   8:6: ( '<' )*/
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   8:8: '<'*/
  	  {
  	  	this.match(60 /*'<'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
      this.traceOut("T__7", 2);
    }
  }
  // $ANTLR end "T__7"

  // $ANTLR start "T__8"
  void mT__8() {
    this.traceIn("T__8", 3);
    try {
  	  int _type = T__8;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   9:6: ( '>' )*/
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   9:8: '>'*/
  	  {
  	  	this.match(62 /*'>'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
      this.traceOut("T__8", 3);
    }
  }
  // $ANTLR end "T__8"

  // $ANTLR start "INT"
  void mINT() {
    this.traceIn("INT", 4);
    try {
  	  int _type = INT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   11:4: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   11:6: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t044trace.g:
  	  	 11:6: ( '0' .. '9' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t044trace.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)) {
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
      this.traceOut("INT", 4);
    }
  }
  // $ANTLR end "INT"

  // $ANTLR start "WS"
  void mWS() {
    this.traceIn("WS", 5);
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   12:3: ( ( ' ' | '\\n' | '\\t' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t044trace.g:
  	   12:5: ( ' ' | '\\n' | '\\t' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t044trace.g:
  	  	 12:5: ( ' ' | '\\n' | '\\t' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if(((LA2_0 >= 9 /*'\t'*/ && LA2_0 <= 10 /*'\n'*/)
  	  	    || LA2_0 == 32/*32 /*' '*/*/)) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t044trace.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 9 /*'\t'*/ && this.input.LA(1) <= 10 /*'\n'*/)
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


  	  	_channel = HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
      this.traceOut("WS", 5);
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t044trace.g: 
     1:8: ( T__6 | T__7 | T__8 | INT | WS )*/
    int alt3 = 5;
    switch(this.input.LA(1)) {
    case 43 /*'+'*/:
      {
      alt3 = 1;
      }
      break;
    case 60 /*'<'*/:
      {
      alt3 = 2;
      }
      break;
    case 62 /*'>'*/:
      {
      alt3 = 3;
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
      alt3 = 4;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt3 = 5;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 3, 0, this.input);

      throw nvae;

    }

    switch (alt3) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t044trace.g:
         1:10: T__6*/
        {
        	this.mT__6(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t044trace.g:
         1:15: T__7*/
        {
        	this.mT__7(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t044trace.g:
         1:20: T__8*/
        {
        	this.mT__8(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t044trace.g:
         1:25: INT*/
        {
        	this.mINT(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t044trace.g:
         1:29: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



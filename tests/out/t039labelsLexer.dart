// $ANTLR 3.4 t039labelsLexer.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t039labelsLexer extends Lexer {

  static final int EOF = -1;
  static final int T__11 = 11;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int D = 7;
  static final int E = 8;
  static final int F = 9;
  static final int WS = 10;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t039labelsLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t039labelsLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t039labels.g";

  String getRecognizerClassName() => "t039labelsLexer";
  
  // $ANTLR start "T__11"
  void mT__11() {
    try {
  	  int _type = T__11;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   7:7: ( ',' )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   7:9: ','*/
  	  {
  	  	this.match(44 /*','*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__11"

  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   11:2: ( 'a' .. 'z' )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
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

  // $ANTLR start "B"
  void mB() {
    try {
  	  int _type = B;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   12:2: ( '0' .. '9' )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
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

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "B"

  // $ANTLR start "C"
  void mC() {
    try {
  	  int _type = C;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  int a;

  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   13:2: (a= 'A' )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   13:4: a= 'A'*/
  	  {
  	  	a = this.input.LA(1);

  	  	this.match(65 /*'A'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "C"

  // $ANTLR start "D"
  void mD() {
    try {
  	  int _type = D;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken a = null;

  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   14:2: (a= 'FOOBAR' )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   14:4: a= 'FOOBAR'*/
  	  {
  	  	int aStart = this.charIndex;
  	  	this.match("FOOBAR"); 
  	  	int aStartLine59 = this.line;
  	  	int aStartCharPos59 = this.charPositionInLine;
  	  	a = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, aStart, this.charIndex-1);
  	  	a.line = aStartLine59;
  	  	a.charPositionInLine = aStartCharPos59;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "D"

  // $ANTLR start "E"
  void mE() {
    try {
  	  int _type = E;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  int a;

  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   15:2: ( 'GNU' a= . )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   15:4: 'GNU' a= .*/
  	  {
  	  	this.match("GNU"); 




  	  	a = this.input.LA(1);

  	  	this.matchAny(); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "E"

  // $ANTLR start "F"
  void mF() {
    try {
  	  int _type = F;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken a = null;

  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   16:2: ( 'BLARZ' a= EOF )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   16:4: 'BLARZ' a= EOF*/
  	  {
  	  	this.match("BLARZ"); 




  	  	int aStart79 = this.charIndex;
  	  	int aStartLine79 = this.line;
  	  	int aStartCharPos79 = this.charPositionInLine;
  	  	this.match(EOF); 
  	  	a = new CommonToken.fromCharStream(this.input, EOF, 
  	  	  Token.DEFAULT_CHANNEL, aStart79, this.charIndex-1);
  	  	a.line = aStartLine79;
  	  	a.charPositionInLine = aStartCharPos79;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "F"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   18:3: ( ( ' ' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t039labels.g:
  	   18:5: ( ' ' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t039labels.g:
  	  	 18:5: ( ' ' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if((LA1_0 == 32/*32 /*' '*/*/)) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t039labels.g:
  	  			   18:5: ' '*/
  	  			  {
  	  			  	this.match(32 /*' '*/); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt1 >= 1) break loop1;
  	  	        EarlyExitException eee = new EarlyExitException(1, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt1++;
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
    /* ../runtime/dart/tests/grammars/t039labels.g: 
     1:8: ( T__11 | A | B | C | D | E | F | WS )*/
    int alt2 = 8;
    switch(this.input.LA(1)) {
    case 44 /*','*/:
      {
      alt2 = 1;
      }
      break;
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
      alt2 = 2;
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
      alt2 = 3;
      }
      break;
    case 65 /*'A'*/:
      {
      alt2 = 4;
      }
      break;
    case 70 /*'F'*/:
      {
      alt2 = 5;
      }
      break;
    case 71 /*'G'*/:
      {
      alt2 = 6;
      }
      break;
    case 66 /*'B'*/:
      {
      alt2 = 7;
      }
      break;
    case 32 /*' '*/:
      {
      alt2 = 8;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 2, 0, this.input);

      throw nvae;

    }

    switch (alt2) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:10: T__11*/
        {
        	this.mT__11(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:16: A*/
        {
        	this.mA(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:18: B*/
        {
        	this.mB(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:20: C*/
        {
        	this.mC(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:22: D*/
        {
        	this.mD(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:24: E*/
        {
        	this.mE(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:26: F*/
        {
        	this.mF(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t039labels.g:
         1:28: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



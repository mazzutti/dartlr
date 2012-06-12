// $ANTLR 3.4 t058rewriteAST55Lexer.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST55Lexer extends Lexer {

  static final int EOF = -1;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int A = 4;
  static final int B = 5;
  static final int BLOCK = 6;
  static final int C = 7;
  static final int D = 8;
  static final int WS = 9;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t058rewriteAST55Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t058rewriteAST55Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t058rewriteAST55.g";

  String getRecognizerClassName() => "t058rewriteAST55Lexer";
  
  // $ANTLR start "T__10"
  void mT__10() {
    try {
  	  int _type = T__10;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   7:7: ( 'float' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   7:9: 'float'*/
  	  {
  	  	this.match("float"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__10"

  // $ANTLR start "T__11"
  void mT__11() {
    try {
  	  int _type = T__11;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   8:7: ( 'int' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   8:9: 'int'*/
  	  {
  	  	this.match("int"); 




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
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   7:3: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   7:5: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   8:3: ( 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   8:5: 'b'*/
  	  {
  	  	this.match(98 /*'b'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   9:3: ( 'c' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   9:5: 'c'*/
  	  {
  	  	this.match(99 /*'c'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   10:3: ( 'd' )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   10:5: 'd'*/
  	  {
  	  	this.match(100 /*'d'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "D"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   11:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
  	   11:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t058rewriteAST55.g: 
     1:8: ( T__10 | T__11 | A | B | C | D | WS )*/
    int alt1 = 7;
    switch(this.input.LA(1)) {
    case 102 /*'f'*/:
      {
      alt1 = 1;
      }
      break;
    case 105 /*'i'*/:
      {
      alt1 = 2;
      }
      break;
    case 97 /*'a'*/:
      {
      alt1 = 3;
      }
      break;
    case 98 /*'b'*/:
      {
      alt1 = 4;
      }
      break;
    case 99 /*'c'*/:
      {
      alt1 = 5;
      }
      break;
    case 100 /*'d'*/:
      {
      alt1 = 6;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt1 = 7;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }

    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:10: T__10*/
        {
        	this.mT__10(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:16: T__11*/
        {
        	this.mT__11(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:22: A*/
        {
        	this.mA(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:24: B*/
        {
        	this.mB(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:26: C*/
        {
        	this.mC(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:28: D*/
        {
        	this.mD(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
         1:30: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



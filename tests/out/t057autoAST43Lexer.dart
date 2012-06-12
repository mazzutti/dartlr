// $ANTLR 3.4 t057autoAST43Lexer.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST43Lexer extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int D = 7;
  static final int WS = 8;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t057autoAST43Lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t057autoAST43Lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t057autoAST43.g";

  String getRecognizerClassName() => "t057autoAST43Lexer";
  
  // $ANTLR start "A"
  void mA() {
    try {
  	  int _type = A;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   4:3: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   4:5: 'a'*/
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
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   5:3: ( 'b' )*/
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   5:5: 'b'*/
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
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   6:3: ( 'c' )*/
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   6:5: 'c'*/
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
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   7:3: ( 'd' )*/
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   7:5: 'd'*/
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
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   8:4: ( ( ' ' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
  	   8:6: ( ' ' | '\\n' )*/
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
    /* ../runtime/dart/tests/grammars/t057autoAST43.g: 
     1:8: ( A | B | C | D | WS )*/
    int alt1 = 5;
    switch(this.input.LA(1)) {
    case 97 /*'a'*/:
      {
      alt1 = 1;
      }
      break;
    case 98 /*'b'*/:
      {
      alt1 = 2;
      }
      break;
    case 99 /*'c'*/:
      {
      alt1 = 3;
      }
      break;
    case 100 /*'d'*/:
      {
      alt1 = 4;
      }
      break;
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt1 = 5;
      }
      break;
    default:
      NoViableAltException nvae =
          new NoViableAltException("", 1, 0, this.input);

      throw nvae;

    }

    switch (alt1) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t057autoAST43.g:
         1:10: A*/
        {
        	this.mA(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t057autoAST43.g:
         1:12: B*/
        {
        	this.mB(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t057autoAST43.g:
         1:14: C*/
        {
        	this.mC(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t057autoAST43.g:
         1:16: D*/
        {
        	this.mD(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t057autoAST43.g:
         1:18: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  
}



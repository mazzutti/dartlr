// $ANTLR 3.4 t029synpredgate.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t029synpredgate extends Lexer {

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int FOO = 6;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t029synpredgate([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t029synpredgate.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t029synpredgate.g";

  String getRecognizerClassName() => "t029synpredgate";
  
  // $ANTLR start "FOO"
  void mFOO() {
    try {
  	  int _type = FOO;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t029synpredgate.g: 
  	   7:5: ( ( 'ab' )=> A | ( 'ac' )=> B )*/
  	  int alt1 = 2;
  	  int LA1_0 = this.input.LA(1);

  	  if((LA1_0 == 97/*97 /*'a'*/*/)) {
  	    int LA1_1 = this.input.LA(2);

  	    if((synpred1_t029synpredgate())) {
  	      alt1 = 1;
  	    }
  	    else if((synpred2_t029synpredgate())) {
  	      alt1 = 2;
  	    }
  	    else {
  	      if(this.state.backtracking > 0) {
  	        this.state.failed = true; 
  	        return ;
  	      }
  	      NoViableAltException nvae =
  	          new NoViableAltException("", 1, 1, this.input);

  	      throw nvae;

  	    }
  	  }
  	  else {
  	    if(this.state.backtracking > 0) {
  	      this.state.failed = true; 
  	      return ;
  	    }
  	    NoViableAltException nvae =
  	        new NoViableAltException("", 1, 0, this.input);

  	    throw nvae;

  	  }
  	  switch (alt1) {
  	    case 1 :
  	      /* ../runtime/dart/tests/grammars/t029synpredgate.g:
  	       7:7: ( 'ab' )=> A*/
  	      {
  	      	this.mA(); 
  	      	if(this.state.failed) 
  	      	  return ;


  	      }
  	      break;
  	    case 2 :
  	      /* ../runtime/dart/tests/grammars/t029synpredgate.g:
  	       8:7: ( 'ac' )=> B*/
  	      {
  	      	this.mB(); 
  	      	if(this.state.failed) 
  	      	  return ;


  	      }
  	      break;

  	  }
  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "FOO"

  // $ANTLR start "A"
  void mA() {
    try {
  	  /* ../runtime/dart/tests/grammars/t029synpredgate.g:
  	   12:2: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t029synpredgate.g:
  	   12:4: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "A"

  // $ANTLR start "B"
  void mB() {
    try {
  	  /* ../runtime/dart/tests/grammars/t029synpredgate.g:
  	   15:2: ( 'a' )*/
  	  /* ../runtime/dart/tests/grammars/t029synpredgate.g:
  	   15:4: 'a'*/
  	  {
  	  	this.match(97 /*'a'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "B"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t029synpredgate.g:
     1:8: ( FOO )*/
    /* ../runtime/dart/tests/grammars/t029synpredgate.g:
     1:10: FOO*/
    {
    	this.mFOO(); 
    	if(this.state.failed) 
    	  return ;


    }


  }

  // $ANTLR start synpred1_t029synpredgate
  void synpred1_t029synpredgate_fragment() {
    /* ../runtime/dart/tests/grammars/t029synpredgate.g:
     7:7: ( 'ab' )*/
    /* ../runtime/dart/tests/grammars/t029synpredgate.g:
     7:8: 'ab'*/
    {
    	this.match("ab"); 
    	if(this.state.failed) 
    	  return ;



    }

  }
  // $ANTLR end synpred1_t029synpredgate

  // $ANTLR start synpred2_t029synpredgate
  void synpred2_t029synpredgate_fragment() {
    /* ../runtime/dart/tests/grammars/t029synpredgate.g:
     8:7: ( 'ac' )*/
    /* ../runtime/dart/tests/grammars/t029synpredgate.g:
     8:8: 'ac'*/
    {
    	this.match("ac"); 
    	if(this.state.failed) 
    	  return ;



    }

  }
  // $ANTLR end synpred2_t029synpredgate  
  bool synpred2_t029synpredgate() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred2_t029synpredgate_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred1_t029synpredgate() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred1_t029synpredgate_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


  
}



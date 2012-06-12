// $ANTLR 3.4 t044traceParser.g 2012-06-07 21:59:31
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t044traceParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "INT", "WS", "'+'", "'<'", "'>'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int INT = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t044traceParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t044traceParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t044traceParser._tokenNames;

  String get grammarFileName() => "t044trace.g";

  String getRecognizerClassName() => "t044traceParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t044trace.g:
   7:1: a : '<' ( ( INT '+' )=> b | c ) '>' ;*/
  void a() {
    this.traceIn("a", 1);
    try {
      /* ../runtime/dart/tests/grammars/t044trace.g:
       7:2: ( '<' ( ( INT '+' )=> b | c ) '>' )*/
      /* ../runtime/dart/tests/grammars/t044trace.g:
       7:4: '<' ( ( INT '+' )=> b | c ) '>'*/
      {
      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a23); 
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t044trace.g:
      	 7:8: ( ( INT '+' )=> b | c )*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 4/*INT*/)) {
      	  int LA1_1 = this.input.LA(2);

      	  if((synpred1_t044trace())) {
      	    alt1 = 1;
      	  }
      	  else if((true)) {
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
      	    /* ../runtime/dart/tests/grammars/t044trace.g:
      	     7:9: ( INT '+' )=> b*/
      	    {
      	    	this.pushFollow(FOLLOW_b_in_a32);
      	    	this.b();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t044trace.g:
      	     7:22: c*/
      	    {
      	    	this.pushFollow(FOLLOW_c_in_a34);
      	    	this.c();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_a37); 
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("a", 1);
  	}
  	return ;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t044trace.g:
   8:1: b : c ( '+' c )* ;*/
  void b() {
    this.traceIn("b", 2);
    try {
      /* ../runtime/dart/tests/grammars/t044trace.g:
       8:2: ( c ( '+' c )* )*/
      /* ../runtime/dart/tests/grammars/t044trace.g:
       8:4: c ( '+' c )**/
      {
      	this.pushFollow(FOLLOW_c_in_b43);
      	this.c();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t044trace.g:
      	 8:6: ( '+' c )**/
      	loop2:
      	do {
      	  int alt2 = 2;
      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 6/*6*/)) {
      	    alt2 = 1;
      	  }


      	  switch (alt2) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t044trace.g:
      			   8:7: '+' c*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    6,FOLLOW_6_in_b46); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_c_in_b48);
      			  	this.c();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("b", 2);
  	}
  	return ;
  }
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t044trace.g:
   9:1: c : INT ;*/
  void c() {
    this.traceIn("c", 3);
    try {
      /* ../runtime/dart/tests/grammars/t044trace.g:
       9:2: ( INT )*/
      /* ../runtime/dart/tests/grammars/t044trace.g:
       9:4: INT*/
      {
      	this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c56); 
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("c", 3);
  	}
  	return ;
  }
  // $ANTLR end "c"

  // $ANTLR start synpred1_t044trace
  void synpred1_t044trace_fragment() {
    this.traceIn("synpred1_t044trace_fragment", 4);
    try {
      /* ../runtime/dart/tests/grammars/t044trace.g:
       7:9: ( INT '+' )*/
      /* ../runtime/dart/tests/grammars/t044trace.g:
       7:10: INT '+'*/
      {
      	this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_synpred1_t044trace27); 
      	if(this.state.failed) 
      	  return ;

      	this.matchSymbol(this.input,
      	    6,FOLLOW_6_in_synpred1_t044trace29); 
      	if(this.state.failed) 
      	  return ;

      }

    }
    finally {
      this.traceOut("synpred1_t044trace_fragment", 4);
    }
  }
  // $ANTLR end synpred1_t044trace


  bool synpred1_t044trace() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred1_t044trace_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


 

  static BitSet _FOLLOW_7_in_a23 = null;
  static BitSet get FOLLOW_7_in_a23() {
    if(_FOLLOW_7_in_a23 == null) 
      _FOLLOW_7_in_a23 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_a23;
  }

  static BitSet _FOLLOW_b_in_a32 = null;
  static BitSet get FOLLOW_b_in_a32() {
    if(_FOLLOW_b_in_a32 == null) 
      _FOLLOW_b_in_a32 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_b_in_a32;
  }

  static BitSet _FOLLOW_c_in_a34 = null;
  static BitSet get FOLLOW_c_in_a34() {
    if(_FOLLOW_c_in_a34 == null) 
      _FOLLOW_c_in_a34 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_c_in_a34;
  }

  static BitSet _FOLLOW_8_in_a37 = null;
  static BitSet get FOLLOW_8_in_a37() {
    if(_FOLLOW_8_in_a37 == null) 
      _FOLLOW_8_in_a37 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_a37;
  }

  static BitSet _FOLLOW_c_in_b43 = null;
  static BitSet get FOLLOW_c_in_b43() {
    if(_FOLLOW_c_in_b43 == null) 
      _FOLLOW_c_in_b43 = 
        new BitSet.fromList([0x0000000000000042]);
    return _FOLLOW_c_in_b43;
  }

  static BitSet _FOLLOW_6_in_b46 = null;
  static BitSet get FOLLOW_6_in_b46() {
    if(_FOLLOW_6_in_b46 == null) 
      _FOLLOW_6_in_b46 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_6_in_b46;
  }

  static BitSet _FOLLOW_c_in_b48 = null;
  static BitSet get FOLLOW_c_in_b48() {
    if(_FOLLOW_c_in_b48 == null) 
      _FOLLOW_c_in_b48 = 
        new BitSet.fromList([0x0000000000000042]);
    return _FOLLOW_c_in_b48;
  }

  static BitSet _FOLLOW_INT_in_c56 = null;
  static BitSet get FOLLOW_INT_in_c56() {
    if(_FOLLOW_INT_in_c56 == null) 
      _FOLLOW_INT_in_c56 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c56;
  }

  static BitSet _FOLLOW_INT_in_synpred1_t044trace27 = null;
  static BitSet get FOLLOW_INT_in_synpred1_t044trace27() {
    if(_FOLLOW_INT_in_synpred1_t044trace27 == null) 
      _FOLLOW_INT_in_synpred1_t044trace27 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_INT_in_synpred1_t044trace27;
  }

  static BitSet _FOLLOW_6_in_synpred1_t044trace29 = null;
  static BitSet get FOLLOW_6_in_synpred1_t044trace29() {
    if(_FOLLOW_6_in_synpred1_t044trace29 == null) 
      _FOLLOW_6_in_synpred1_t044trace29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_6_in_synpred1_t044trace29;
  }



 }





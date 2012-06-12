// $ANTLR 3.4 t043synpredParser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t043synpredParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "E", "P", "S", "'foo'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int E = 4;
  static final int P = 5;
  static final int S = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t043synpredParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t043synpredParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t043synpredParser._tokenNames;

  String get grammarFileName() => "t043synpred.g";

  String getRecognizerClassName() => "t043synpredParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t043synpred.g:
   6:1: a : ( ( ( s )+ P )=> ( s )+ b )? E ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t043synpred.g:
       6:2: ( ( ( ( s )+ P )=> ( s )+ b )? E )*/
      /* ../runtime/dart/tests/grammars/t043synpred.g:
       6:4: ( ( ( s )+ P )=> ( s )+ b )? E*/
      {
      	/* ../runtime/dart/tests/grammars/t043synpred.g:
      	 6:4: ( ( ( s )+ P )=> ( s )+ b )?*/
      	int alt2 = 2;
      	int LA2_0 = this.input.LA(1);

      	if((LA2_0 == 6/*S*/) && (synpred1_t043synpred())) {
      	  alt2 = 1;
      	}
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t043synpred.g:
      	     6:5: ( ( s )+ P )=> ( s )+ b*/
      	    {
      	    	/* ../runtime/dart/tests/grammars/t043synpred.g:
      	    	 6:14: ( s )+*/
      	    	int cnt1 = 0;
      	    	loop1:
      	    	do {
      	    	  int alt1 = 2;
      	    	  int LA1_0 = this.input.LA(1);

      	    	  if((LA1_0 == 6/*S*/)) {
      	    	    alt1 = 1;
      	    	  }


      	    	  switch (alt1) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t043synpred.g:
      	    			   6:14: s*/
      	    			  {
      	    			  	this.pushFollow(FOLLOW_s_in_a31);
      	    			  	this.s();

      	    			  	this.state.fsp--;
      	    			  	if(this.state.failed) 
      	    			  	  return ;

      	    			  }
      	    			  break;

      	    			default :
      	    		    if(cnt1 >= 1) break loop1;
      	    		      if(this.state.backtracking > 0) {
      	    		        this.state.failed = true; 
      	    		        return ;
      	    		      }
      	    	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	    	        throw eee;
      	    	  }
      	    	  cnt1++;
      	    	} while(true);


      	    	this.pushFollow(FOLLOW_b_in_a34);
      	    	this.b();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      	this.matchSymbol(this.input,
      	    E,FOLLOW_E_in_a38); 
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
  	}
  	return ;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t043synpred.g:
   7:1: b : P 'foo' ;*/
  void b() {
    try {
      /* ../runtime/dart/tests/grammars/t043synpred.g:
       7:2: ( P 'foo' )*/
      /* ../runtime/dart/tests/grammars/t043synpred.g:
       7:4: P 'foo'*/
      {
      	this.matchSymbol(this.input,
      	    P,FOLLOW_P_in_b44); 
      	if(this.state.failed) 
      	  return ;

      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_b46); 
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
  	}
  	return ;
  }
  // $ANTLR end "b"


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t043synpred.g:
   9:1: s : S ;*/
  void s() {
    try {
      /* ../runtime/dart/tests/grammars/t043synpred.g:
       9:2: ( S )*/
      /* ../runtime/dart/tests/grammars/t043synpred.g:
       9:4: S*/
      {
      	this.matchSymbol(this.input,
      	    S,FOLLOW_S_in_s53); 
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
  	}
  	return ;
  }
  // $ANTLR end "s"

  // $ANTLR start synpred1_t043synpred
  void synpred1_t043synpred_fragment() {
    /* ../runtime/dart/tests/grammars/t043synpred.g:
     6:5: ( ( s )+ P )*/
    /* ../runtime/dart/tests/grammars/t043synpred.g:
     6:6: ( s )+ P*/
    {
    	/* ../runtime/dart/tests/grammars/t043synpred.g:
    	 6:6: ( s )+*/
    	int cnt3 = 0;
    	loop3:
    	do {
    	  int alt3 = 2;
    	  int LA3_0 = this.input.LA(1);

    	  if((LA3_0 == 6/*S*/)) {
    	    alt3 = 1;
    	  }


    	  switch (alt3) {
    			case 1 :
    			  /* ../runtime/dart/tests/grammars/t043synpred.g:
    			   6:6: s*/
    			  {
    			  	this.pushFollow(FOLLOW_s_in_synpred1_t043synpred24);
    			  	this.s();

    			  	this.state.fsp--;
    			  	if(this.state.failed) 
    			  	  return ;

    			  }
    			  break;

    			default :
    		    if(cnt3 >= 1) break loop3;
    		      if(this.state.backtracking > 0) {
    		        this.state.failed = true; 
    		        return ;
    		      }
    	        EarlyExitException eee = new EarlyExitException(3, this.input);
    	        throw eee;
    	  }
    	  cnt3++;
    	} while(true);


    	this.matchSymbol(this.input,
    	    P,FOLLOW_P_in_synpred1_t043synpred27); 
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred1_t043synpred


  bool synpred1_t043synpred() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred1_t043synpred_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


 

  static BitSet _FOLLOW_s_in_a31 = null;
  static BitSet get FOLLOW_s_in_a31() {
    if(_FOLLOW_s_in_a31 == null) 
      _FOLLOW_s_in_a31 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_s_in_a31;
  }

  static BitSet _FOLLOW_b_in_a34 = null;
  static BitSet get FOLLOW_b_in_a34() {
    if(_FOLLOW_b_in_a34 == null) 
      _FOLLOW_b_in_a34 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_b_in_a34;
  }

  static BitSet _FOLLOW_E_in_a38 = null;
  static BitSet get FOLLOW_E_in_a38() {
    if(_FOLLOW_E_in_a38 == null) 
      _FOLLOW_E_in_a38 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_E_in_a38;
  }

  static BitSet _FOLLOW_P_in_b44 = null;
  static BitSet get FOLLOW_P_in_b44() {
    if(_FOLLOW_P_in_b44 == null) 
      _FOLLOW_P_in_b44 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_P_in_b44;
  }

  static BitSet _FOLLOW_7_in_b46 = null;
  static BitSet get FOLLOW_7_in_b46() {
    if(_FOLLOW_7_in_b46 == null) 
      _FOLLOW_7_in_b46 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_b46;
  }

  static BitSet _FOLLOW_S_in_s53 = null;
  static BitSet get FOLLOW_S_in_s53() {
    if(_FOLLOW_S_in_s53 == null) 
      _FOLLOW_S_in_s53 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_S_in_s53;
  }

  static BitSet _FOLLOW_s_in_synpred1_t043synpred24 = null;
  static BitSet get FOLLOW_s_in_synpred1_t043synpred24() {
    if(_FOLLOW_s_in_synpred1_t043synpred24 == null) 
      _FOLLOW_s_in_synpred1_t043synpred24 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_s_in_synpred1_t043synpred24;
  }

  static BitSet _FOLLOW_P_in_synpred1_t043synpred27 = null;
  static BitSet get FOLLOW_P_in_synpred1_t043synpred27() {
    if(_FOLLOW_P_in_synpred1_t043synpred27 == null) 
      _FOLLOW_P_in_synpred1_t043synpred27 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_P_in_synpred1_t043synpred27;
  }



 }





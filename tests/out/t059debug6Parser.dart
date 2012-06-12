// $ANTLR 3.4 t059debug6Parser.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t059debug6Parser extends DebugParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



	static final List<String> ruleNames = const <String>[
	  "invalidRule", "c", "b", "a"
	];

	static final List<bool> decisionCanBacktrack = const <bool>[
	  false,
	  false
	];

 
  int _ruleLevel = 0;
  int get ruleLevel() => this._ruleLevel;
  void incRuleLevel() { this._ruleLevel++; }
  void decRuleLevel() {this._ruleLevel--;}

  t059debug6Parser.async(TokenStream input, 
     [int port = DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, 
         RecognizerSharedState state, Function callback]) 
            :super.fromRecognizerSharedState(input, state) {
    this.debugListener = 
       new DebugEventSocketProxy(this, null, port, callback);

    this.debugListener.dynamic.handshake();
  }


	t059debug6Parser(TokenStream input, [DebugEventListener dbg]) 
	    :super(input, dbg, new RecognizerSharedState()) {
  }

	bool _evalPredicate(bool result, String predicate) {
	  this.debugListener.semanticPredicate(result, predicate);
	  return result;
	}


  List<String> get tokenNames() => t059debug6Parser._tokenNames;

  String get grammarFileName() => "t059debug6.g";

  String getRecognizerClassName() => "t059debug6Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t059debug6.g:
   5:1: a : ID ( b | c ) EOF ;*/
  void a() {
    try { this.debugListener.enterRule("a", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(5, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug6.g:
       5:3: ( ID ( b | c ) EOF )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug6.g:
       5:5: ID ( b | c ) EOF*/
      {
      	this.debugListener.location(5,5);
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a20); 

      	this.debugListener.location(5,8);
      	/* ../runtime/dart/tests/grammars/t059debug6.g:
      	 5:8: ( b | c )*/
      	int alt1 = 2;
      	try {this.debugListener.enterSubRule(1);
      	try {this.debugListener.enterDecision(1, decisionCanBacktrack[1]);

      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 4/*ID*/)) {
      	  alt1 = 1;
      	}
      	else if((LA1_0 == 5/*INT*/)) {
      	  alt1 = 2;
      	}
      	else {
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 1, 0, this.input);

      	  this.debugListener.recognitionException(nvae);
      	  throw nvae;

      	}
      	} finally {
      	  this.debugListener.exitDecision(1);
      	}
      	switch (alt1) {
      	  case 1 :
      	    this.debugListener.enterAlt(1);

      	    /* ../runtime/dart/tests/grammars/t059debug6.g:
      	     5:10: b*/
      	    {
      	    	this.debugListener.location(5,10);
      	    	this.pushFollow(FOLLOW_b_in_a24);
      	    	this.b();

      	    	this.state.fsp--;


      	    }
      	    break;
      	  case 2 :
      	    this.debugListener.enterAlt(2);

      	    /* ../runtime/dart/tests/grammars/t059debug6.g:
      	     5:14: c*/
      	    {
      	    	this.debugListener.location(5,14);
      	    	this.pushFollow(FOLLOW_c_in_a28);
      	    	this.c();

      	    	this.state.fsp--;


      	    }
      	    break;

      	}
      	} finally {this.debugListener.exitSubRule(1);}

      	this.debugListener.location(5,18);
      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a32); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(5, 20);

  	}
  	finally {
  	  this.debugListener.exitRule("a", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return ;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t059debug6.g:
   6:1: b : ID ;*/
  void b() {
    try { this.debugListener.enterRule("b", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(6, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug6.g:
       6:3: ( ID )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug6.g:
       6:5: ID*/
      {
      	this.debugListener.location(6,5);
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b39); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(6, 6);

  	}
  	finally {
  	  this.debugListener.exitRule("b", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return ;
  }
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t059debug6.g:
   7:1: c : INT ;*/
  void c() {
    try { this.debugListener.enterRule("c", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(7, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug6.g:
       7:3: ( INT )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug6.g:
       7:5: INT*/
      {
      	this.debugListener.location(7,5);
      	this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c46); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(7, 7);

  	}
  	finally {
  	  this.debugListener.exitRule("c", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return ;
  }
  // $ANTLR end "c"



 

  static BitSet _FOLLOW_ID_in_a20 = null;
  static BitSet get FOLLOW_ID_in_a20() {
    if(_FOLLOW_ID_in_a20 == null) 
      _FOLLOW_ID_in_a20 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_a20;
  }

  static BitSet _FOLLOW_b_in_a24 = null;
  static BitSet get FOLLOW_b_in_a24() {
    if(_FOLLOW_b_in_a24 == null) 
      _FOLLOW_b_in_a24 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_b_in_a24;
  }

  static BitSet _FOLLOW_c_in_a28 = null;
  static BitSet get FOLLOW_c_in_a28() {
    if(_FOLLOW_c_in_a28 == null) 
      _FOLLOW_c_in_a28 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_c_in_a28;
  }

  static BitSet _FOLLOW_EOF_in_a32 = null;
  static BitSet get FOLLOW_EOF_in_a32() {
    if(_FOLLOW_EOF_in_a32 == null) 
      _FOLLOW_EOF_in_a32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a32;
  }

  static BitSet _FOLLOW_ID_in_b39 = null;
  static BitSet get FOLLOW_ID_in_b39() {
    if(_FOLLOW_ID_in_b39 == null) 
      _FOLLOW_ID_in_b39 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b39;
  }

  static BitSet _FOLLOW_INT_in_c46 = null;
  static BitSet get FOLLOW_INT_in_c46() {
    if(_FOLLOW_INT_in_c46 == null) 
      _FOLLOW_INT_in_c46 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c46;
  }



 }





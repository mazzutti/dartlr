// $ANTLR 3.4 t059debug11Parser.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t059debug11Parser extends DebugParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BANG", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int BANG = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      

  Map<String, DFA> dfas;


	static final List<String> ruleNames = const <String>[
	  "invalidRule", "c", "b", "a"
	];

	static final List<bool> decisionCanBacktrack = const <bool>[
	  false,
	  false, false, false
	];

 
  int _ruleLevel = 0;
  int get ruleLevel() => this._ruleLevel;
  void incRuleLevel() { this._ruleLevel++; }
  void decRuleLevel() {this._ruleLevel--;}

  t059debug11Parser.async(TokenStream input, 
     [int port = DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, 
         RecognizerSharedState state, Function callback]) 
            :super.fromRecognizerSharedState(input, state) {
    this.debugListener = 
       new DebugEventSocketProxy(this, null, port, callback);

    this.dfas = new Map<String, DFA>();
    this.dfas["dfa1"] = new DFA1(this);
    this.debugListener.dynamic.handshake();
  }


	t059debug11Parser(TokenStream input, [DebugEventListener dbg]) 
	    :super(input, dbg, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
    this.dfas["dfa1"] = new DFA1(this);
  }

	bool _evalPredicate(bool result, String predicate) {
	  this.debugListener.semanticPredicate(result, predicate);
	  return result;
	}


  List<String> get tokenNames() => t059debug11Parser._tokenNames;

  String get grammarFileName() => "t059debug11.g";

  String getRecognizerClassName() => "t059debug11Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t059debug11.g:
   5:1: a : ( b | c ) EOF ;*/
  void a() {
    try { this.debugListener.enterRule("a", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(5, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug11.g:
       5:3: ( ( b | c ) EOF )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug11.g:
       5:5: ( b | c ) EOF*/
      {
      	this.debugListener.location(5,5);
      	/* ../runtime/dart/tests/grammars/t059debug11.g:
      	 5:5: ( b | c )*/
      	int alt1 = 2;
      	try {this.debugListener.enterSubRule(1);
      	try {this.debugListener.enterDecision(1, decisionCanBacktrack[1]);

      	try {
      	  isCyclicDecision = true;
      	  alt1 = this.dfas["dfa1"].predict(this.input);
      	}
      	catch (NoViableAltException nvae) {
      	  this.debugListener.recognitionException(nvae);
      	  throw nvae;
      	}
      	} finally {
      	  this.debugListener.exitDecision(1);
      	}
      	switch (alt1) {
      	  case 1 :
      	    this.debugListener.enterAlt(1);

      	    /* ../runtime/dart/tests/grammars/t059debug11.g:
      	     5:7: b*/
      	    {
      	    	this.debugListener.location(5,7);
      	    	this.pushFollow(FOLLOW_b_in_a22);
      	    	this.b();

      	    	this.state.fsp--;


      	    }
      	    break;
      	  case 2 :
      	    this.debugListener.enterAlt(2);

      	    /* ../runtime/dart/tests/grammars/t059debug11.g:
      	     5:11: c*/
      	    {
      	    	this.debugListener.location(5,11);
      	    	this.pushFollow(FOLLOW_c_in_a26);
      	    	this.c();

      	    	this.state.fsp--;


      	    }
      	    break;

      	}
      	} finally {this.debugListener.exitSubRule(1);}

      	this.debugListener.location(5,15);
      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a30); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(5, 17);

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
  /* ../runtime/dart/tests/grammars/t059debug11.g:
   6:1: b : ( ID )* INT ;*/
  void b() {
    try { this.debugListener.enterRule("b", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(6, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug11.g:
       6:3: ( ( ID )* INT )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug11.g:
       6:5: ( ID )* INT*/
      {
      	this.debugListener.location(6,5);
      	/* ../runtime/dart/tests/grammars/t059debug11.g:
      	 6:5: ( ID )**/
      	try {this.debugListener.enterSubRule(2);

      	loop2:
      	do {
      	  int alt2 = 2;
      	  try {this.debugListener.enterDecision(2, decisionCanBacktrack[2]);

      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 5/*ID*/)) {
      	    alt2 = 1;
      	  }


      	  } finally {
      	    this.debugListener.exitDecision(2);
      	  }
      	  switch (alt2) {
      			case 1 :
      			  this.debugListener.enterAlt(1);

      			  /* ../runtime/dart/tests/grammars/t059debug11.g:
      			   6:5: ID*/
      			  {
      			  	this.debugListener.location(6,5);
      			  	this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_b37); 


      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);
      	} finally {this.debugListener.exitSubRule(2);}

      	this.debugListener.location(6,9);
      	this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_b40); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(6, 11);

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
  /* ../runtime/dart/tests/grammars/t059debug11.g:
   7:1: c : ( ID )+ BANG ;*/
  void c() {
    try { this.debugListener.enterRule("c", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(7, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug11.g:
       7:3: ( ( ID )+ BANG )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug11.g:
       7:5: ( ID )+ BANG*/
      {
      	this.debugListener.location(7,5);
      	/* ../runtime/dart/tests/grammars/t059debug11.g:
      	 7:5: ( ID )+*/
      	int cnt3 = 0;
      	try {this.debugListener.enterSubRule(3);

      	loop3:
      	do {
      	  int alt3 = 2;
      	  try {this.debugListener.enterDecision(3, decisionCanBacktrack[3]);

      	  int LA3_0 = this.input.LA(1);

      	  if((LA3_0 == 5/*ID*/)) {
      	    alt3 = 1;
      	  }


      	  } finally {
      	    this.debugListener.exitDecision(3);
      	  }
      	  switch (alt3) {
      			case 1 :
      			  this.debugListener.enterAlt(1);

      			  /* ../runtime/dart/tests/grammars/t059debug11.g:
      			   7:5: ID*/
      			  {
      			  	this.debugListener.location(7,5);
      			  	this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_c47); 


      			  }
      			  break;

      			default :
      		    if(cnt3 >= 1) break loop3;
      	        EarlyExitException eee = new EarlyExitException(3, this.input);
      	        this._dbg.recognitionException(eee);
      	        throw eee;
      	  }
      	  cnt3++;
      	} while(true);
      	} finally {this.debugListener.exitSubRule(3);}

      	this.debugListener.location(7,9);
      	this.matchSymbol(this.input,
      	    BANG,FOLLOW_BANG_in_c50); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(7, 12);

  	}
  	finally {
  	  this.debugListener.exitRule("c", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return ;
  }
  // $ANTLR end "c"



  static final String DFA1_eotS =
      "\u0004\uffff";
  static final String DFA1_eofS =
      "\u0004\uffff";
  static final String DFA1_minS =
      "\u0001\u0005\u0001\u0004\u0002\uffff";
  static final String DFA1_maxS =
      "\u0002\u0006\u0002\uffff";
  static final String DFA1_acceptS =
      "\u0002\uffff\u0001\u0001\u0001\u0002";
  static final String DFA1_specialS =
      "\u0004\uffff";
  static final List<String> DFA1_transitionS = const [
      "\u0001\u0001\u0001\u0002",
      "\u0001\u0003\u0001\u0001\u0001\u0002",
      "",
      ""
  ];

  static List<int> _DFA1_eot = null; 
  static List<int> get DFA1_eot() {
    if(_DFA1_eot == null)
      _DFA1_eot = 
        DFA.unpackEncodedString(DFA1_eotS);
    return _DFA1_eot;
  }

  static List<int> _DFA1_eof = null;
  static List<int> get DFA1_eof() {
    if(_DFA1_eof == null)
      _DFA1_eof = 
        DFA.unpackEncodedString(DFA1_eofS);
    return _DFA1_eof;
  }

  static List<int> _DFA1_min = null;
  static List<int> get DFA1_min() {
    if(_DFA1_min == null)
      _DFA1_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA1_minS);
    return _DFA1_min;
  }

  static List<int> _DFA1_max = null;
  static List<int> get DFA1_max() {
    if(_DFA1_max == null)
      _DFA1_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA1_maxS);
    return _DFA1_max;
  }

  static List<int> _DFA1_accept = null;
  static List<int> get DFA1_accept() {
    if(_DFA1_accept == null)
      _DFA1_accept = 
        DFA.unpackEncodedString(DFA1_acceptS);
    return _DFA1_accept;
  }

  static List<int> _DFA1_special = null;
  static List<int> get DFA1_special() {
    if(_DFA1_special == null)
      _DFA1_special = 
        DFA.unpackEncodedString(DFA1_specialS);
    return _DFA1_special;
  }

  static List<List<int>> _DFA1_transition = null;
  static List<List<int>> get DFA1_transition() {
    if(_DFA1_transition == null) {
      int numStates = DFA1_transitionS.length;
      _DFA1_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA1_transition[i] = 
            DFA.unpackEncodedString(DFA1_transitionS[i]);
    }
    return _DFA1_transition;
  } 

  static BitSet _FOLLOW_b_in_a22 = null;
  static BitSet get FOLLOW_b_in_a22() {
    if(_FOLLOW_b_in_a22 == null) 
      _FOLLOW_b_in_a22 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_b_in_a22;
  }

  static BitSet _FOLLOW_c_in_a26 = null;
  static BitSet get FOLLOW_c_in_a26() {
    if(_FOLLOW_c_in_a26 == null) 
      _FOLLOW_c_in_a26 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_c_in_a26;
  }

  static BitSet _FOLLOW_EOF_in_a30 = null;
  static BitSet get FOLLOW_EOF_in_a30() {
    if(_FOLLOW_EOF_in_a30 == null) 
      _FOLLOW_EOF_in_a30 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a30;
  }

  static BitSet _FOLLOW_ID_in_b37 = null;
  static BitSet get FOLLOW_ID_in_b37() {
    if(_FOLLOW_ID_in_b37 == null) 
      _FOLLOW_ID_in_b37 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_ID_in_b37;
  }

  static BitSet _FOLLOW_INT_in_b40 = null;
  static BitSet get FOLLOW_INT_in_b40() {
    if(_FOLLOW_INT_in_b40 == null) 
      _FOLLOW_INT_in_b40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b40;
  }

  static BitSet _FOLLOW_ID_in_c47 = null;
  static BitSet get FOLLOW_ID_in_c47() {
    if(_FOLLOW_ID_in_c47 == null) 
      _FOLLOW_ID_in_c47 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_c47;
  }

  static BitSet _FOLLOW_BANG_in_c50 = null;
  static BitSet get FOLLOW_BANG_in_c50() {
    if(_FOLLOW_BANG_in_c50 == null) 
      _FOLLOW_BANG_in_c50 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_BANG_in_c50;
  }



 }


class DFA1 extends DFA {

  DFA1(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 1;
    this.eot = t059debug11Parser.DFA1_eot;
    this.eof = t059debug11Parser.DFA1_eof;
    this.min = t059debug11Parser.DFA1_min;
    this.max = t059debug11Parser.DFA1_max;
    this.accept = t059debug11Parser.DFA1_accept;
    this.special = t059debug11Parser.DFA1_special;
    this.transition = t059debug11Parser.DFA1_transition;
  }

  String get description() => 
        """5:5: ( b | c )""";

}




// $ANTLR 3.4 t030specialStatesParser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t030specialStatesParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "NAME", "NUMBER", "WS"
  ];

  static final int EOF = -1;
  static final int NAME = 4;
  static final int NUMBER = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      

  Map<String, DFA> dfas;


  t030specialStatesParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();

	  this.cond = true;

	  this.dfas["dfa2"] = new DFA2(this);
  }



  t030specialStatesParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();

    this.cond = true;

    
    this.dfas["dfa2"] = new DFA2(this);
  }    

  List<String> get tokenNames() => t030specialStatesParser._tokenNames;

  String get grammarFileName() => "t030specialStates.g";

  String getRecognizerClassName() => "t030specialStatesParser";


  bool cond;

  void recover(RecognitionException re, [IntStream input]) {
    throw re;
  }


  // $ANTLR start "r"
  /* ../runtime/dart/tests/grammars/t030specialStates.g:
   18:1: r : ({...}? NAME |{...}? NAME ( WS )+ NAME ) ( ( WS )+ NAME )? EOF ;*/
  void r() {
    try {
      /* ../runtime/dart/tests/grammars/t030specialStates.g:
       19:5: ( ({...}? NAME |{...}? NAME ( WS )+ NAME ) ( ( WS )+ NAME )? EOF )*/
      /* ../runtime/dart/tests/grammars/t030specialStates.g:
       19:7: ({...}? NAME |{...}? NAME ( WS )+ NAME ) ( ( WS )+ NAME )? EOF*/
      {
      	/* ../runtime/dart/tests/grammars/t030specialStates.g:
      	 19:7: ({...}? NAME |{...}? NAME ( WS )+ NAME )*/
      	int alt2 = 2;
      	alt2 = this.dfas["dfa2"].predict(this.input);
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t030specialStates.g:
      	     19:9: {...}? NAME*/
      	    {
      	    	if(!((this.cond))) {
      	    	  throw new FailedPredicateException(input, "r", @"this.cond");
      	    	}

      	    	this.matchSymbol(this.input,
      	    	    NAME,FOLLOW_NAME_in_r43); 


      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t030specialStates.g:
      	     20:11: {...}? NAME ( WS )+ NAME*/
      	    {
      	    	if(!((!this.cond))) {
      	    	  throw new FailedPredicateException(input, "r", @"!this.cond");
      	    	}

      	    	this.matchSymbol(this.input,
      	    	    NAME,FOLLOW_NAME_in_r57); 


      	    	/* ../runtime/dart/tests/grammars/t030specialStates.g:
      	    	 20:30: ( WS )+*/
      	    	int cnt1 = 0;
      	    	loop1:
      	    	do {
      	    	  int alt1 = 2;
      	    	  int LA1_0 = this.input.LA(1);

      	    	  if((LA1_0 == 6/*WS*/)) {
      	    	    alt1 = 1;
      	    	  }


      	    	  switch (alt1) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t030specialStates.g:
      	    			   20:30: WS*/
      	    			  {
      	    			  	this.matchSymbol(this.input,
      	    			  	    WS,FOLLOW_WS_in_r59); 


      	    			  }
      	    			  break;

      	    			default :
      	    		    if(cnt1 >= 1) break loop1;
      	    	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	    	        throw eee;
      	    	  }
      	    	  cnt1++;
      	    	} while(true);


      	    	this.matchSymbol(this.input,
      	    	    NAME,FOLLOW_NAME_in_r62); 


      	    }
      	    break;

      	}


      	/* ../runtime/dart/tests/grammars/t030specialStates.g:
      	 22:9: ( ( WS )+ NAME )?*/
      	int alt4 = 2;
      	int LA4_0 = this.input.LA(1);

      	if((LA4_0 == 6/*WS*/)) {
      	  alt4 = 1;
      	}
      	switch (alt4) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t030specialStates.g:
      	     22:11: ( WS )+ NAME*/
      	    {
      	    	/* ../runtime/dart/tests/grammars/t030specialStates.g:
      	    	 22:11: ( WS )+*/
      	    	int cnt3 = 0;
      	    	loop3:
      	    	do {
      	    	  int alt3 = 2;
      	    	  int LA3_0 = this.input.LA(1);

      	    	  if((LA3_0 == 6/*WS*/)) {
      	    	    alt3 = 1;
      	    	  }


      	    	  switch (alt3) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t030specialStates.g:
      	    			   22:11: WS*/
      	    			  {
      	    			  	this.matchSymbol(this.input,
      	    			  	    WS,FOLLOW_WS_in_r84); 


      	    			  }
      	    			  break;

      	    			default :
      	    		    if(cnt3 >= 1) break loop3;
      	    	        EarlyExitException eee = new EarlyExitException(3, this.input);
      	    	        throw eee;
      	    	  }
      	    	  cnt3++;
      	    	} while(true);


      	    	this.matchSymbol(this.input,
      	    	    NAME,FOLLOW_NAME_in_r87); 


      	    }
      	    break;

      	}


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_r100); 


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
  // $ANTLR end "r"



  static final String DFA2_eotS =
      "\u0006\uffff";
  static final String DFA2_eofS =
      "\u0001\uffff\u0001\u0003\u0004\uffff";
  static final String DFA2_minS =
      "\u0001\u0004\u0001\u0006\u0001\u0004\u0001\uffff\u0001\u0000\u0001"
      "\uffff";
  static final String DFA2_maxS =
      "\u0001\u0004\u0002\u0006\u0001\uffff\u0001\u0000\u0001\uffff";
  static final String DFA2_acceptS =
      "\u0003\uffff\u0001\u0001\u0001\uffff\u0001\u0002";
  static final String DFA2_specialS =
      "\u0004\uffff\u0001\u0000\u0001\uffff";
  static final List<String> DFA2_transitionS = const [
      "\u0001\u0001",
      "\u0001\u0002",
      "\u0001\u0004\u0001\uffff\u0001\u0002",
      "",
      "\u0001\uffff",
      ""
  ];

  static List<int> _DFA2_eot = null; 
  static List<int> get DFA2_eot() {
    if(_DFA2_eot == null)
      _DFA2_eot = 
        DFA.unpackEncodedString(DFA2_eotS);
    return _DFA2_eot;
  }

  static List<int> _DFA2_eof = null;
  static List<int> get DFA2_eof() {
    if(_DFA2_eof == null)
      _DFA2_eof = 
        DFA.unpackEncodedString(DFA2_eofS);
    return _DFA2_eof;
  }

  static List<int> _DFA2_min = null;
  static List<int> get DFA2_min() {
    if(_DFA2_min == null)
      _DFA2_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA2_minS);
    return _DFA2_min;
  }

  static List<int> _DFA2_max = null;
  static List<int> get DFA2_max() {
    if(_DFA2_max == null)
      _DFA2_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA2_maxS);
    return _DFA2_max;
  }

  static List<int> _DFA2_accept = null;
  static List<int> get DFA2_accept() {
    if(_DFA2_accept == null)
      _DFA2_accept = 
        DFA.unpackEncodedString(DFA2_acceptS);
    return _DFA2_accept;
  }

  static List<int> _DFA2_special = null;
  static List<int> get DFA2_special() {
    if(_DFA2_special == null)
      _DFA2_special = 
        DFA.unpackEncodedString(DFA2_specialS);
    return _DFA2_special;
  }

  static List<List<int>> _DFA2_transition = null;
  static List<List<int>> get DFA2_transition() {
    if(_DFA2_transition == null) {
      int numStates = DFA2_transitionS.length;
      _DFA2_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA2_transition[i] = 
            DFA.unpackEncodedString(DFA2_transitionS[i]);
    }
    return _DFA2_transition;
  } 

  static BitSet _FOLLOW_NAME_in_r43 = null;
  static BitSet get FOLLOW_NAME_in_r43() {
    if(_FOLLOW_NAME_in_r43 == null) 
      _FOLLOW_NAME_in_r43 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_NAME_in_r43;
  }

  static BitSet _FOLLOW_NAME_in_r57 = null;
  static BitSet get FOLLOW_NAME_in_r57() {
    if(_FOLLOW_NAME_in_r57 == null) 
      _FOLLOW_NAME_in_r57 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_NAME_in_r57;
  }

  static BitSet _FOLLOW_WS_in_r59 = null;
  static BitSet get FOLLOW_WS_in_r59() {
    if(_FOLLOW_WS_in_r59 == null) 
      _FOLLOW_WS_in_r59 = 
        new BitSet.fromList([0x0000000000000050]);
    return _FOLLOW_WS_in_r59;
  }

  static BitSet _FOLLOW_NAME_in_r62 = null;
  static BitSet get FOLLOW_NAME_in_r62() {
    if(_FOLLOW_NAME_in_r62 == null) 
      _FOLLOW_NAME_in_r62 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_NAME_in_r62;
  }

  static BitSet _FOLLOW_WS_in_r84 = null;
  static BitSet get FOLLOW_WS_in_r84() {
    if(_FOLLOW_WS_in_r84 == null) 
      _FOLLOW_WS_in_r84 = 
        new BitSet.fromList([0x0000000000000050]);
    return _FOLLOW_WS_in_r84;
  }

  static BitSet _FOLLOW_NAME_in_r87 = null;
  static BitSet get FOLLOW_NAME_in_r87() {
    if(_FOLLOW_NAME_in_r87 == null) 
      _FOLLOW_NAME_in_r87 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_NAME_in_r87;
  }

  static BitSet _FOLLOW_EOF_in_r100 = null;
  static BitSet get FOLLOW_EOF_in_r100() {
    if(_FOLLOW_EOF_in_r100 == null) 
      _FOLLOW_EOF_in_r100 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_r100;
  }



 }


class DFA2 extends DFA {

  DFA2(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 2;
    this.eot = t030specialStatesParser.DFA2_eot;
    this.eof = t030specialStatesParser.DFA2_eof;
    this.min = t030specialStatesParser.DFA2_min;
    this.max = t030specialStatesParser.DFA2_max;
    this.accept = t030specialStatesParser.DFA2_accept;
    this.special = t030specialStatesParser.DFA2_special;
    this.transition = t030specialStatesParser.DFA2_transition;
  }

  String get description() => 
        """19:7: ({...}? NAME |{...}? NAME ( WS )+ NAME )""";

  int specialStateTransition(int s, IntStream _input){
    TokenStream input = _input;
    int _s = s;
    switch(s) {
      case 0 :int LA2_4 = this.recognizer.dynamic.input.LA(1);

       
      int index2_4 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if((this.recognizer.dynamic.cond)) {
        s = 3;
      }

      else if((!this.recognizer.dynamic.cond)) {
        s = 5;
      }

       
      this.recognizer.dynamic.input.seek(index2_4);

      if(s>=0) return s;
      break;
    }
    NoViableAltException nvae = new NoViableAltException(this.description, 2, _s, this.recognizer.dynamic.input);
    this.recognizer.dynamic.error(nvae);
    throw nvae;
  }

}




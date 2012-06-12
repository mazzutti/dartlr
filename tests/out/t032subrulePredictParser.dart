// $ANTLR 3.4 t032subrulePredictParser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t032subrulePredictParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "WS", "'A'", "'BEGIN'", "'END'"
  ];

  static final int EOF = -1;
  static final int T__5 = 5;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int WS = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      

  Map<String, DFA> dfas;


  t032subrulePredictParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
	  this.dfas["dfa3"] = new DFA3(this);
  }



  t032subrulePredictParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();
    
    this.dfas["dfa3"] = new DFA3(this);
  }    

  List<String> get tokenNames() => t032subrulePredictParser._tokenNames;

  String get grammarFileName() => "t032subrulePredict.g";

  String getRecognizerClassName() => "t032subrulePredictParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
   6:1: a : 'BEGIN' b ( WS )+ 'END' ;*/
  void a() {
    try {
      /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
       6:2: ( 'BEGIN' b ( WS )+ 'END' )*/
      /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
       6:4: 'BEGIN' b ( WS )+ 'END'*/
      {
      	this.matchSymbol(this.input,
      	    6,FOLLOW_6_in_a22); 


      	this.pushFollow(FOLLOW_b_in_a24);
      	this.b();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t032subrulePredict.g:
      	 6:14: ( WS )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*WS*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
      			   6:14: WS*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    WS,FOLLOW_WS_in_a26); 


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
      	    7,FOLLOW_7_in_a29); 


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
  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
   7:1: b : ( ( WS )+ 'A' )+ ;*/
  void b() {
    try {
      /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
       7:2: ( ( ( WS )+ 'A' )+ )*/
      /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
       7:4: ( ( WS )+ 'A' )+*/
      {
      	/* ../runtime/dart/tests/grammars/t032subrulePredict.g:
      	 7:4: ( ( WS )+ 'A' )+*/
      	int cnt3 = 0;
      	loop3:
      	do {
      	  int alt3 = 2;
      	  alt3 = this.dfas["dfa3"].predict(this.input);
      	  switch (alt3) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
      			   7:6: ( WS )+ 'A'*/
      			  {
      			  	/* ../runtime/dart/tests/grammars/t032subrulePredict.g:
      			  	 7:6: ( WS )+*/
      			  	int cnt2 = 0;
      			  	loop2:
      			  	do {
      			  	  int alt2 = 2;
      			  	  int LA2_0 = this.input.LA(1);

      			  	  if((LA2_0 == 4/*WS*/)) {
      			  	    alt2 = 1;
      			  	  }


      			  	  switch (alt2) {
      			  			case 1 :
      			  			  /* ../runtime/dart/tests/grammars/t032subrulePredict.g:
      			  			   7:6: WS*/
      			  			  {
      			  			  	this.matchSymbol(this.input,
      			  			  	    WS,FOLLOW_WS_in_b37); 


      			  			  }
      			  			  break;

      			  			default :
      			  		    if(cnt2 >= 1) break loop2;
      			  	        EarlyExitException eee = new EarlyExitException(2, this.input);
      			  	        throw eee;
      			  	  }
      			  	  cnt2++;
      			  	} while(true);


      			  	this.matchSymbol(this.input,
      			  	    5,FOLLOW_5_in_b40); 


      			  }
      			  break;

      			default :
      		    if(cnt3 >= 1) break loop3;
      	        EarlyExitException eee = new EarlyExitException(3, this.input);
      	        throw eee;
      	  }
      	  cnt3++;
      	} while(true);


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



  static final String DFA3_eotS =
      "\u0004\uffff";
  static final String DFA3_eofS =
      "\u0004\uffff";
  static final String DFA3_minS =
      "\u0002\u0004\u0002\uffff";
  static final String DFA3_maxS =
      "\u0001\u0004\u0001\u0007\u0002\uffff";
  static final String DFA3_acceptS =
      "\u0002\uffff\u0001\u0002\u0001\u0001";
  static final String DFA3_specialS =
      "\u0004\uffff";
  static final List<String> DFA3_transitionS = const [
      "\u0001\u0001",
      "\u0001\u0001\u0001\u0003\u0001\uffff\u0001\u0002",
      "",
      ""
  ];

  static List<int> _DFA3_eot = null; 
  static List<int> get DFA3_eot() {
    if(_DFA3_eot == null)
      _DFA3_eot = 
        DFA.unpackEncodedString(DFA3_eotS);
    return _DFA3_eot;
  }

  static List<int> _DFA3_eof = null;
  static List<int> get DFA3_eof() {
    if(_DFA3_eof == null)
      _DFA3_eof = 
        DFA.unpackEncodedString(DFA3_eofS);
    return _DFA3_eof;
  }

  static List<int> _DFA3_min = null;
  static List<int> get DFA3_min() {
    if(_DFA3_min == null)
      _DFA3_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA3_minS);
    return _DFA3_min;
  }

  static List<int> _DFA3_max = null;
  static List<int> get DFA3_max() {
    if(_DFA3_max == null)
      _DFA3_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA3_maxS);
    return _DFA3_max;
  }

  static List<int> _DFA3_accept = null;
  static List<int> get DFA3_accept() {
    if(_DFA3_accept == null)
      _DFA3_accept = 
        DFA.unpackEncodedString(DFA3_acceptS);
    return _DFA3_accept;
  }

  static List<int> _DFA3_special = null;
  static List<int> get DFA3_special() {
    if(_DFA3_special == null)
      _DFA3_special = 
        DFA.unpackEncodedString(DFA3_specialS);
    return _DFA3_special;
  }

  static List<List<int>> _DFA3_transition = null;
  static List<List<int>> get DFA3_transition() {
    if(_DFA3_transition == null) {
      int numStates = DFA3_transitionS.length;
      _DFA3_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA3_transition[i] = 
            DFA.unpackEncodedString(DFA3_transitionS[i]);
    }
    return _DFA3_transition;
  } 

  static BitSet _FOLLOW_6_in_a22 = null;
  static BitSet get FOLLOW_6_in_a22() {
    if(_FOLLOW_6_in_a22 == null) 
      _FOLLOW_6_in_a22 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_6_in_a22;
  }

  static BitSet _FOLLOW_b_in_a24 = null;
  static BitSet get FOLLOW_b_in_a24() {
    if(_FOLLOW_b_in_a24 == null) 
      _FOLLOW_b_in_a24 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_b_in_a24;
  }

  static BitSet _FOLLOW_WS_in_a26 = null;
  static BitSet get FOLLOW_WS_in_a26() {
    if(_FOLLOW_WS_in_a26 == null) 
      _FOLLOW_WS_in_a26 = 
        new BitSet.fromList([0x0000000000000090]);
    return _FOLLOW_WS_in_a26;
  }

  static BitSet _FOLLOW_7_in_a29 = null;
  static BitSet get FOLLOW_7_in_a29() {
    if(_FOLLOW_7_in_a29 == null) 
      _FOLLOW_7_in_a29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a29;
  }

  static BitSet _FOLLOW_WS_in_b37 = null;
  static BitSet get FOLLOW_WS_in_b37() {
    if(_FOLLOW_WS_in_b37 == null) 
      _FOLLOW_WS_in_b37 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_WS_in_b37;
  }

  static BitSet _FOLLOW_5_in_b40 = null;
  static BitSet get FOLLOW_5_in_b40() {
    if(_FOLLOW_5_in_b40 == null) 
      _FOLLOW_5_in_b40 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_5_in_b40;
  }



 }


class DFA3 extends DFA {

  DFA3(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 3;
    this.eot = t032subrulePredictParser.DFA3_eot;
    this.eof = t032subrulePredictParser.DFA3_eof;
    this.min = t032subrulePredictParser.DFA3_min;
    this.max = t032subrulePredictParser.DFA3_max;
    this.accept = t032subrulePredictParser.DFA3_accept;
    this.special = t032subrulePredictParser.DFA3_special;
    this.transition = t032subrulePredictParser.DFA3_transition;
  }

  String get description() => 
        """()+ loopback of 7:4: ( ( WS )+ 'A' )+""";

}




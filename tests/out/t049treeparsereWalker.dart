// $ANTLR 3.4 t049treeparsereWalker.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparsereWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "PERIOD", "SEMI"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int PERIOD = 6;
  static final int SEMI = 7;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      

  Map<String, DFA> dfas;


  t049treeparsereWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
	  this.dfas["dfa3"] = new DFA3(this);
  }



  t049treeparsereWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();
    
    this.dfas["dfa3"] = new DFA3(this);
  }    

  List<String> get tokenNames() => t049treeparsereWalker._tokenNames;

  String get grammarFileName() => "t049treeparsereWalker.g";

  String getRecognizerClassName() => "t049treeparsereWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
   7:1: a : ( ID ( INT )+ PERIOD | ID ( INT )+ SEMI );*/
  void a() {
    this.traceIn("a", 1);
    try {
      /* ../runtime/dart/tests/grammars/t049treeparsereWalker.g: 
       7:3: ( ID ( INT )+ PERIOD | ID ( INT )+ SEMI )*/
      int alt3 = 2;
      alt3 = this.dfas["dfa3"].predict(this.input);
      switch (alt3) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
           7:5: ID ( INT )+ PERIOD*/
          {
          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_a34); 


          	/* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
          	 7:8: ( INT )+*/
          	int cnt1 = 0;
          	loop1:
          	do {
          	  int alt1 = 2;
          	  int LA1_0 = this.input.LA(1);

          	  if((LA1_0 == 5/*INT*/)) {
          	    alt1 = 1;
          	  }


          	  switch (alt1) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
          			   7:8: INT*/
          			  {
          			  	this.matchSymbol(this.input,
          			  	    INT,FOLLOW_INT_in_a36); 


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
          	    PERIOD,FOLLOW_PERIOD_in_a39); 


          	this.capture("alt 1");


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
           8:5: ID ( INT )+ SEMI*/
          {
          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_a47); 


          	/* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
          	 8:8: ( INT )+*/
          	int cnt2 = 0;
          	loop2:
          	do {
          	  int alt2 = 2;
          	  int LA2_0 = this.input.LA(1);

          	  if((LA2_0 == 5/*INT*/)) {
          	    alt2 = 1;
          	  }


          	  switch (alt2) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t049treeparsereWalker.g:
          			   8:8: INT*/
          			  {
          			  	this.matchSymbol(this.input,
          			  	    INT,FOLLOW_INT_in_a49); 


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
          	    SEMI,FOLLOW_SEMI_in_a52); 


          	this.capture("alt 2");


          }
          break;

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



  static final String DFA3_eotS =
      "\u0005\uffff";
  static final String DFA3_eofS =
      "\u0005\uffff";
  static final String DFA3_minS =
      "\u0001\u0004\u0002\u0005\u0002\uffff";
  static final String DFA3_maxS =
      "\u0001\u0004\u0001\u0005\u0001\u0007\u0002\uffff";
  static final String DFA3_acceptS =
      "\u0003\uffff\u0001\u0001\u0001\u0002";
  static final String DFA3_specialS =
      "\u0005\uffff";
  static final List<String> DFA3_transitionS = const [
      "\u0001\u0001",
      "\u0001\u0002",
      "\u0001\u0002\u0001\u0003\u0001\u0004",
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

  static BitSet _FOLLOW_ID_in_a34 = null;
  static BitSet get FOLLOW_ID_in_a34() {
    if(_FOLLOW_ID_in_a34 == null) 
      _FOLLOW_ID_in_a34 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a34;
  }

  static BitSet _FOLLOW_INT_in_a36 = null;
  static BitSet get FOLLOW_INT_in_a36() {
    if(_FOLLOW_INT_in_a36 == null) 
      _FOLLOW_INT_in_a36 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_INT_in_a36;
  }

  static BitSet _FOLLOW_PERIOD_in_a39 = null;
  static BitSet get FOLLOW_PERIOD_in_a39() {
    if(_FOLLOW_PERIOD_in_a39 == null) 
      _FOLLOW_PERIOD_in_a39 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_PERIOD_in_a39;
  }

  static BitSet _FOLLOW_ID_in_a47 = null;
  static BitSet get FOLLOW_ID_in_a47() {
    if(_FOLLOW_ID_in_a47 == null) 
      _FOLLOW_ID_in_a47 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a47;
  }

  static BitSet _FOLLOW_INT_in_a49 = null;
  static BitSet get FOLLOW_INT_in_a49() {
    if(_FOLLOW_INT_in_a49 == null) 
      _FOLLOW_INT_in_a49 = 
        new BitSet.fromList([0x00000000000000A0]);
    return _FOLLOW_INT_in_a49;
  }

  static BitSet _FOLLOW_SEMI_in_a52 = null;
  static BitSet get FOLLOW_SEMI_in_a52() {
    if(_FOLLOW_SEMI_in_a52 == null) 
      _FOLLOW_SEMI_in_a52 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_SEMI_in_a52;
  }



 }


class DFA3 extends DFA {

  DFA3(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 3;
    this.eot = t049treeparsereWalker.DFA3_eot;
    this.eof = t049treeparsereWalker.DFA3_eof;
    this.min = t049treeparsereWalker.DFA3_min;
    this.max = t049treeparsereWalker.DFA3_max;
    this.accept = t049treeparsereWalker.DFA3_accept;
    this.special = t049treeparsereWalker.DFA3_special;
    this.transition = t049treeparsereWalker.DFA3_transition;
  }

  String get description() => 
        """7:1: a : ( ID ( INT )+ PERIOD | ID ( INT )+ SEMI );""";

}




// $ANTLR 3.4 t059debug10Parser.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t059debug10Parser extends DebugParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



	static final List<String> ruleNames = const <String>[
	  "invalidRule", "b", "a"
	];

	static final List<bool> decisionCanBacktrack = const <bool>[
	  false,
	];

 
  int _ruleLevel = 0;
  int get ruleLevel() => this._ruleLevel;
  void incRuleLevel() { this._ruleLevel++; }
  void decRuleLevel() {this._ruleLevel--;}

  t059debug10Parser.async(TokenStream input, 
     [int port = DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, 
         RecognizerSharedState state, Function callback]) 
            :super.fromRecognizerSharedState(input, state) {
    this.debugListener = 
       new DebugEventSocketProxy(this, null, port, callback);

    this.debugListener.dynamic.handshake();
  }


	t059debug10Parser(TokenStream input, [DebugEventListener dbg]) 
	    :super(input, dbg, new RecognizerSharedState()) {
  }

	bool _evalPredicate(bool result, String predicate) {
	  this.debugListener.semanticPredicate(result, predicate);
	  return result;
	}


  List<String> get tokenNames() => t059debug10Parser._tokenNames;

  String get grammarFileName() => "t059debug10.g";

  String getRecognizerClassName() => "t059debug10Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t059debug10.g:
   5:1: a : ( b ) ;*/
  void a() {
    try { this.debugListener.enterRule("a", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(5, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug10.g:
       5:3: ( ( b ) )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug10.g:
       5:5: ( b )*/
      {
      	this.debugListener.location(5,5);
      	/* ../runtime/dart/tests/grammars/t059debug10.g:
      	 5:5: ( b )*/
      	this.debugListener.enterAlt(1);

      	/* ../runtime/dart/tests/grammars/t059debug10.g:
      	 5:7: b*/
      	{
      		this.debugListener.location(5,7);
      		this.pushFollow(FOLLOW_b_in_a22);
      		this.b();

      		this.state.fsp--;


      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(5, 9);

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
  /* ../runtime/dart/tests/grammars/t059debug10.g:
   6:1: b : ID ;*/
  void b() {
    try { this.debugListener.enterRule("b", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(6, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug10.g:
       6:3: ( ID )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug10.g:
       6:5: ID*/
      {
      	this.debugListener.location(6,5);
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b31); 


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



 

  static BitSet _FOLLOW_b_in_a22 = null;
  static BitSet get FOLLOW_b_in_a22() {
    if(_FOLLOW_b_in_a22 == null) 
      _FOLLOW_b_in_a22 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a22;
  }

  static BitSet _FOLLOW_ID_in_b31 = null;
  static BitSet get FOLLOW_ID_in_b31() {
    if(_FOLLOW_ID_in_b31 == null) 
      _FOLLOW_ID_in_b31 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b31;
  }



 }





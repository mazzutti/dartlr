// $ANTLR 3.4 t059debug3Parser.g 2012-06-07 21:59:30
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t059debug3Parser extends DebugParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



	static final List<String> ruleNames = const <String>[
	  "invalidRule", "a"
	];

	static final List<bool> decisionCanBacktrack = const <bool>[
	  false,
	  false
	];

 
  int _ruleLevel = 0;
  int get ruleLevel() => this._ruleLevel;
  void incRuleLevel() { this._ruleLevel++; }
  void decRuleLevel() {this._ruleLevel--;}

  t059debug3Parser.async(TokenStream input, 
     [int port = DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, 
         RecognizerSharedState state, Function callback]) 
            :super.fromRecognizerSharedState(input, state) {
    this.debugListener = 
       new DebugEventSocketProxy(this, null, port, callback);

    this.debugListener.dynamic.handshake();
  }


	t059debug3Parser(TokenStream input, [DebugEventListener dbg]) 
	    :super(input, dbg, new RecognizerSharedState()) {
  }

	bool _evalPredicate(bool result, String predicate) {
	  this.debugListener.semanticPredicate(result, predicate);
	  return result;
	}


  List<String> get tokenNames() => t059debug3Parser._tokenNames;

  String get grammarFileName() => "t059debug3.g";

  String getRecognizerClassName() => "t059debug3Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t059debug3.g:
   5:2: a : ID ( ID | INT )+ EOF ;*/
  void a() {
    try { this.debugListener.enterRule("a", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(5, 1);

    try {
      /* ../runtime/dart/tests/grammars/t059debug3.g:
       5:4: ( ID ( ID | INT )+ EOF )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug3.g:
       5:6: ID ( ID | INT )+ EOF*/
      {
      	this.debugListener.location(5,6);
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a21); 

      	this.debugListener.location(5,9);
      	/* ../runtime/dart/tests/grammars/t059debug3.g:
      	 5:9: ( ID | INT )+*/
      	int cnt1 = 0;
      	try {this.debugListener.enterSubRule(1);

      	loop1:
      	do {
      	  int alt1 = 2;
      	  try {this.debugListener.enterDecision(1, decisionCanBacktrack[1]);

      	  int LA1_0 = this.input.LA(1);

      	  if(((LA1_0 >= ID && LA1_0 <= INT))) {
      	    alt1 = 1;
      	  }


      	  } finally {
      	    this.debugListener.exitDecision(1);
      	  }
      	  switch (alt1) {
      			case 1 :
      			  this.debugListener.enterAlt(1);

      			  /* ../runtime/dart/tests/grammars/t059debug3.g:
      			  */
      			  {
      			  	this.debugListener.location(5,9);
      			  	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      			  	  this.input.consume();
      			  	  this.state.errorRecovery = false;
      			  	}
      			  	else {
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  this.debugListener.recognitionException(mse);
      			  	  throw mse;
      			  	}


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        this._dbg.recognitionException(eee);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);
      	} finally {this.debugListener.exitSubRule(1);}

      	this.debugListener.location(5,23);
      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a34); 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(5, 25);

  	}
  	finally {
  	  this.debugListener.exitRule("a", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return ;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a21 = null;
  static BitSet get FOLLOW_ID_in_a21() {
    if(_FOLLOW_ID_in_a21 == null) 
      _FOLLOW_ID_in_a21 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_a21;
  }

  static BitSet _FOLLOW_EOF_in_a34 = null;
  static BitSet get FOLLOW_EOF_in_a34() {
    if(_FOLLOW_EOF_in_a34 == null) 
      _FOLLOW_EOF_in_a34 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a34;
  }



 }





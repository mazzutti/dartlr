// $ANTLR 3.4 t059debug5Parser.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t059debug5Parser extends DebugParser {

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
	];

 
  int _ruleLevel = 0;
  int get ruleLevel() => this._ruleLevel;
  void incRuleLevel() { this._ruleLevel++; }
  void decRuleLevel() {this._ruleLevel--;}

  t059debug5Parser.async(TokenStream input, 
     [int port = DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, 
         RecognizerSharedState state, Function callback]) 
            :super.fromRecognizerSharedState(input, state) {
    this.debugListener = 
       new DebugEventSocketProxy(this, null, port, callback);

    this.debugListener.dynamic.handshake();
  }


	t059debug5Parser(TokenStream input, [DebugEventListener dbg]) 
	    :super(input, dbg, new RecognizerSharedState()) {
  }

	bool _evalPredicate(bool result, String predicate) {
	  this.debugListener.semanticPredicate(result, predicate);
	  return result;
	}


  List<String> get tokenNames() => t059debug5Parser._tokenNames;

  String get grammarFileName() => "t059debug5.g";

  String getRecognizerClassName() => "t059debug5Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t059debug5.g:
   5:1: a : ID ( ID | INT ) EOF ;*/
  void a() {
    try { this.debugListener.enterRule("a", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(5, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug5.g:
       5:3: ( ID ( ID | INT ) EOF )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug5.g:
       5:5: ID ( ID | INT ) EOF*/
      {
      	this.debugListener.location(5,5);
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a20); 

      	this.debugListener.location(5,8);
      	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  this.debugListener.recognitionException(mse);
      	  throw mse;
      	}

      	this.debugListener.location(5,21);
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
  	this.debugListener.location(5, 23);

  	}
  	finally {
  	  this.debugListener.exitRule("a", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return ;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a20 = null;
  static BitSet get FOLLOW_ID_in_a20() {
    if(_FOLLOW_ID_in_a20 == null) 
      _FOLLOW_ID_in_a20 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_a20;
  }

  static BitSet _FOLLOW_set_in_a22 = null;
  static BitSet get FOLLOW_set_in_a22() {
    if(_FOLLOW_set_in_a22 == null) 
      _FOLLOW_set_in_a22 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_set_in_a22;
  }

  static BitSet _FOLLOW_EOF_in_a32 = null;
  static BitSet get FOLLOW_EOF_in_a32() {
    if(_FOLLOW_EOF_in_a32 == null) 
      _FOLLOW_EOF_in_a32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a32;
  }



 }





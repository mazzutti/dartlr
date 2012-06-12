// $ANTLR 3.4 t059debug12Parser.g 2012-06-07 21:59:34
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t059debug12Parser extends DebugParser {

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

  CommonTreeAdaptor _adaptor;


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

  t059debug12Parser.async(TokenStream input, 
     [int port = DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, 
         RecognizerSharedState state, Function callback]) 
            :super.fromRecognizerSharedState(input, state) {
    this._adaptor = new CommonTreeAdaptor();
    this.debugListener = 
        new DebugEventSocketProxy(this,this._adaptor, port, callback);
    this.input = new DebugTokenStream(input,this.debugListener);

    this.dfas = new Map<String, DFA>();
    this.dfas["dfa1"] = new DFA1(this);
    this.debugListener.dynamic.handshake();
  }


	t059debug12Parser(TokenStream input, [DebugEventListener dbg]) 
	    :super(input, dbg) {
	   
	  this._adaptor = new CommonTreeAdaptor();

	  this.dfas = new Map<String, DFA>();
    this.dfas["dfa1"] = new DFA1(this);
  }

	bool _evalPredicate(bool result, String predicate) {
	  this.debugListener.semanticPredicate(result, predicate);
	  return result;
	}


	DebugTreeAdaptor _debugAdaptor;
	void set treeDebugAdaptor(TreeAdaptor adaptor) {
	  this._debugAdaptor = new DebugTreeAdaptor(this.debugListener,adaptor);


	}
	TreeAdaptor get treeDebugAdaptor() => this._debugAdaptor;

  List<String> get tokenNames() => t059debug12Parser._tokenNames;

  String get grammarFileName() => "t059debug12.g";

  String getRecognizerClassName() => "t059debug12Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t059debug12.g:
   6:1: a : ( b | c ) EOF !;*/
  t059debug12Parser_a_return a() {
    t059debug12Parser_a_return retval = new t059debug12Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token EOF3 = null;
    t059debug12Parser_b_return b1 =null;

    t059debug12Parser_c_return c2 =null;


    Object EOF3_tree=null;

    try { this.debugListener.enterRule("a", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(6, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug12.g:
       6:3: ( ( b | c ) EOF !)*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug12.g:
       6:5: ( b | c ) EOF !*/
      {
      	root_0 = this._adaptor.nil();


      	this.debugListener.location(6,5);
      	/* ../runtime/dart/tests/grammars/t059debug12.g:
      	 6:5: ( b | c )*/
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

      	    /* ../runtime/dart/tests/grammars/t059debug12.g:
      	     6:7: b*/
      	    {
      	    	this.debugListener.location(6,7);
      	    	this.pushFollow(FOLLOW_b_in_a29);
      	    	b1 = this.b();

      	    	this.state.fsp--;

      	    	this._adaptor.addChild(root_0, b1.tree);

      	    }
      	    break;
      	  case 2 :
      	    this.debugListener.enterAlt(2);

      	    /* ../runtime/dart/tests/grammars/t059debug12.g:
      	     6:11: c*/
      	    {
      	    	this.debugListener.location(6,11);
      	    	this.pushFollow(FOLLOW_c_in_a33);
      	    	c2 = this.c();

      	    	this.state.fsp--;

      	    	this._adaptor.addChild(root_0, c2.tree);

      	    }
      	    break;

      	}
      	} finally {this.debugListener.exitSubRule(1);}

      	this.debugListener.location(6,18);
      	EOF3 = this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a37); 


      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(6, 18);

  	}
  	finally {
  	  this.debugListener.exitRule("a", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return retval;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t059debug12.g:
   7:1: b : ( ID )* INT -> ^( INT ( ID )* ) ;*/
  t059debug12Parser_b_return b() {
    t059debug12Parser_b_return retval = new t059debug12Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID4 = null;
    Token INT5 = null;

    Object ID4_tree=null;
    Object INT5_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try { this.debugListener.enterRule("b", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(7, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug12.g:
       7:3: ( ( ID )* INT -> ^( INT ( ID )* ) )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug12.g:
       7:5: ( ID )* INT*/
      {
      	this.debugListener.location(7,5);
      	/* ../runtime/dart/tests/grammars/t059debug12.g:
      	 7:5: ( ID )**/
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

      			  /* ../runtime/dart/tests/grammars/t059debug12.g:
      			   7:5: ID*/
      			  {
      			  	this.debugListener.location(7,5);
      			  	ID4 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_b45); 
      			  	 
      			  	stream_ID.add(ID4);


      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);
      	} finally {this.debugListener.exitSubRule(2);}

      	this.debugListener.location(7,9);
      	INT5 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_b48); 
      	 
      	stream_INT.add(INT5);


      	// AST REWRITE
      	// elements: ID, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 7:13: -> ^( INT ( ID )* )*/
      	{
      	    this.debugListener.location(7,16);
      	    /* ../runtime/dart/tests/grammars/t059debug12.g:
      	     7:16: ^( INT ( ID )* )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	this.debugListener.location(7,18);
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_INT.nextNode()
      	    	, root_1);

      	    	this.debugListener.location(7,22);
      	    	/* ../runtime/dart/tests/grammars/t059debug12.g:
      	    	 7:22: ( ID )**/
      	    	while ( stream_ID.hasNext()) {
      	    	    this.debugListener.location(7,22);
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_ID.nextNode()
      	    	    );

      	    	}
      	    	stream_ID.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;

      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(7, 25);

  	}
  	finally {
  	  this.debugListener.exitRule("b", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return retval;
  }
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t059debug12.g:
   8:1: c : ( ID )+ BANG -> ^( BANG ( ID )+ ) ;*/
  t059debug12Parser_c_return c() {
    t059debug12Parser_c_return retval = new t059debug12Parser_c_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID6 = null;
    Token BANG7 = null;

    Object ID6_tree=null;
    Object BANG7_tree=null;
    RewriteRuleTokenStream stream_BANG=new RewriteRuleTokenStream(this._adaptor,"token BANG");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try { this.debugListener.enterRule("c", this.grammarFileName);
    if(this.ruleLevel == 0) {this.debugListener.commence();}
    this.incRuleLevel();
    this.debugListener.location(8, 0);

    try {
      /* ../runtime/dart/tests/grammars/t059debug12.g:
       8:3: ( ( ID )+ BANG -> ^( BANG ( ID )+ ) )*/
      this.debugListener.enterAlt(1);

      /* ../runtime/dart/tests/grammars/t059debug12.g:
       8:5: ( ID )+ BANG*/
      {
      	this.debugListener.location(8,5);
      	/* ../runtime/dart/tests/grammars/t059debug12.g:
      	 8:5: ( ID )+*/
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

      			  /* ../runtime/dart/tests/grammars/t059debug12.g:
      			   8:5: ID*/
      			  {
      			  	this.debugListener.location(8,5);
      			  	ID6 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_c64); 
      			  	 
      			  	stream_ID.add(ID6);


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

      	this.debugListener.location(8,9);
      	BANG7 = this.matchSymbol(this.input,
      	    BANG,FOLLOW_BANG_in_c67); 
      	 
      	stream_BANG.add(BANG7);


      	// AST REWRITE
      	// elements: BANG, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 8:14: -> ^( BANG ( ID )+ )*/
      	{
      	    this.debugListener.location(8,17);
      	    /* ../runtime/dart/tests/grammars/t059debug12.g:
      	     8:17: ^( BANG ( ID )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	this.debugListener.location(8,19);
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_BANG.nextNode()
      	    	, root_1);

      	    	this.debugListener.location(8,24);
      	    	if(!(stream_ID.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_ID.hasNext()) {
      	    	    this.debugListener.location(8,24);
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_ID.nextNode()
      	    	    );

      	    	}
      	    	stream_ID.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;

      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	this.debugListener.location(8, 27);

  	}
  	finally {
  	  this.debugListener.exitRule("c", this.grammarFileName);
  	  this.decRuleLevel();
  	  if(this.ruleLevel == 0) {this.debugListener.terminate();}
  	}

  	return retval;
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

  static BitSet _FOLLOW_b_in_a29 = null;
  static BitSet get FOLLOW_b_in_a29() {
    if(_FOLLOW_b_in_a29 == null) 
      _FOLLOW_b_in_a29 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_b_in_a29;
  }

  static BitSet _FOLLOW_c_in_a33 = null;
  static BitSet get FOLLOW_c_in_a33() {
    if(_FOLLOW_c_in_a33 == null) 
      _FOLLOW_c_in_a33 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_c_in_a33;
  }

  static BitSet _FOLLOW_EOF_in_a37 = null;
  static BitSet get FOLLOW_EOF_in_a37() {
    if(_FOLLOW_EOF_in_a37 == null) 
      _FOLLOW_EOF_in_a37 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a37;
  }

  static BitSet _FOLLOW_ID_in_b45 = null;
  static BitSet get FOLLOW_ID_in_b45() {
    if(_FOLLOW_ID_in_b45 == null) 
      _FOLLOW_ID_in_b45 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_ID_in_b45;
  }

  static BitSet _FOLLOW_INT_in_b48 = null;
  static BitSet get FOLLOW_INT_in_b48() {
    if(_FOLLOW_INT_in_b48 == null) 
      _FOLLOW_INT_in_b48 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b48;
  }

  static BitSet _FOLLOW_ID_in_c64 = null;
  static BitSet get FOLLOW_ID_in_c64() {
    if(_FOLLOW_ID_in_c64 == null) 
      _FOLLOW_ID_in_c64 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_c64;
  }

  static BitSet _FOLLOW_BANG_in_c67 = null;
  static BitSet get FOLLOW_BANG_in_c67() {
    if(_FOLLOW_BANG_in_c67 == null) 
      _FOLLOW_BANG_in_c67 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_BANG_in_c67;
  }



 }


class DFA1 extends DFA {

  DFA1(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 1;
    this.eot = t059debug12Parser.DFA1_eot;
    this.eof = t059debug12Parser.DFA1_eof;
    this.min = t059debug12Parser.DFA1_min;
    this.max = t059debug12Parser.DFA1_max;
    this.accept = t059debug12Parser.DFA1_accept;
    this.special = t059debug12Parser.DFA1_special;
    this.transition = t059debug12Parser.DFA1_transition;
  }

  String get description() => 
        """6:5: ( b | c )""";

}



class t059debug12Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t059debug12Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t059debug12Parser_c_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

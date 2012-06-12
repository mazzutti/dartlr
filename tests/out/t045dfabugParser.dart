// $ANTLR 3.4 t045dfabugParser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t045dfabugParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'", "'fooze'", 
    "'fooze2'", "'private'", "'public'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      

  Map<String, DFA> dfas;

  CommonTreeAdaptor _adaptor;


  t045dfabugParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
	  this.dfas["dfa3"] = new DFA3(this);

	  this._adaptor = new CommonTreeAdaptor();
  }



  t045dfabugParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();
    
    this.dfas["dfa3"] = new DFA3(this);

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t045dfabugParser._tokenNames;

  String get grammarFileName() => "t045dfabug.g";

  String getRecognizerClassName() => "t045dfabugParser";


  // $ANTLR start "r"
  /* ../runtime/dart/tests/grammars/t045dfabug.g:
   8:1: r options {backtrack=true; } : ( ( ( modifier )+ INT )=> ( modifier )+ expression | 
   ( modifier )+ statement );*/
  t045dfabugParser_r_return r() {
    t045dfabugParser_r_return retval = new t045dfabugParser_r_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t045dfabugParser_modifier_return modifier1 =null;

    t045dfabugParser_expression_return expression2 =null;

    t045dfabugParser_modifier_return modifier3 =null;

    t045dfabugParser_statement_return statement4 =null;



    try {
      /* ../runtime/dart/tests/grammars/t045dfabug.g: 
       10:5: ( ( ( modifier )+ INT )=> ( modifier )+ expression | ( modifier )+ statement ) */
      int alt3 = 2;
      alt3 = this.dfas["dfa3"].predict(this.input);
      switch (alt3) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t045dfabug.g:
           10:7: ( ( modifier )+ INT )=> ( modifier )+ expression*/
          {
          	root_0 = this._adaptor.nil();


          	/* ../runtime/dart/tests/grammars/t045dfabug.g:
          	 10:25: ( modifier )+*/
          	int cnt1 = 0;
          	loop1:
          	do {
          	  int alt1 = 2;
          	  int LA1_0 = this.input.LA(1);

          	  if(((LA1_0 >= 10 && LA1_0 <= 11))) {
          	    alt1 = 1;
          	  }


          	  switch (alt1) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t045dfabug.g:
          			   10:25: modifier*/
          			  {
          			  	this.pushFollow(FOLLOW_modifier_in_r58);
          			  	modifier1 = this.modifier();

          			  	this.state.fsp--;
          			  	if(this.state.failed) 
          			  	  return retval;
          			  	if(this.state.backtracking == 0)
          			  	  this._adaptor.addChild(root_0, modifier1.tree);

          			  }
          			  break;

          			default :
          		    if(cnt1 >= 1) break loop1;
          		      if(this.state.backtracking > 0) {
          		        this.state.failed = true; 
          		        return retval;
          		      }
          	        EarlyExitException eee = new EarlyExitException(1, this.input);
          	        throw eee;
          	  }
          	  cnt1++;
          	} while(true);


          	this.pushFollow(FOLLOW_expression_in_r61);
          	expression2 = this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return retval;
          	if(this.state.backtracking == 0)
          	  this._adaptor.addChild(root_0, expression2.tree);

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t045dfabug.g:
           11:7: ( modifier )+ statement*/
          {
          	root_0 = this._adaptor.nil();


          	/* ../runtime/dart/tests/grammars/t045dfabug.g:
          	 11:7: ( modifier )+*/
          	int cnt2 = 0;
          	loop2:
          	do {
          	  int alt2 = 2;
          	  int LA2_0 = this.input.LA(1);

          	  if(((LA2_0 >= 10 && LA2_0 <= 11))) {
          	    alt2 = 1;
          	  }


          	  switch (alt2) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t045dfabug.g:
          			   11:7: modifier*/
          			  {
          			  	this.pushFollow(FOLLOW_modifier_in_r69);
          			  	modifier3 = this.modifier();

          			  	this.state.fsp--;
          			  	if(this.state.failed) 
          			  	  return retval;
          			  	if(this.state.backtracking == 0)
          			  	  this._adaptor.addChild(root_0, modifier3.tree);

          			  }
          			  break;

          			default :
          		    if(cnt2 >= 1) break loop2;
          		      if(this.state.backtracking > 0) {
          		        this.state.failed = true; 
          		        return retval;
          		      }
          	        EarlyExitException eee = new EarlyExitException(2, this.input);
          	        throw eee;
          	  }
          	  cnt2++;
          	} while(true);


          	this.pushFollow(FOLLOW_statement_in_r72);
          	statement4 = this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return retval;
          	if(this.state.backtracking == 0)
          	  this._adaptor.addChild(root_0, statement4.tree);

          }
          break;

      }
      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "r"


  // $ANTLR start "expression"
  /* ../runtime/dart/tests/grammars/t045dfabug.g:
   14:1: expression : INT '+' INT ;*/
  t045dfabugParser_expression_return expression() {
    t045dfabugParser_expression_return retval = new t045dfabugParser_expression_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT5 = null;
    Token char_literal6 = null;
    Token INT7 = null;

    Object INT5_tree=null;
    Object char_literal6_tree=null;
    Object INT7_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t045dfabug.g:
       15:5: ( INT '+' INT )*/
      /* ../runtime/dart/tests/grammars/t045dfabug.g:
       15:7: INT '+' INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT5 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_expression89); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	INT5_tree = this._adaptor.createTreeNode(INT5);
      	this._adaptor.addChild(root_0, INT5_tree);
      	}

      	char_literal6 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_expression91); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	char_literal6_tree = this._adaptor.createTreeNode(char_literal6);
      	this._adaptor.addChild(root_0, char_literal6_tree);
      	}

      	INT7 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_expression93); 
      	if(this.state.failed) 
      	  return retval;
      	if(this.state.backtracking == 0) {
      	INT7_tree = this._adaptor.createTreeNode(INT7);
      	this._adaptor.addChild(root_0, INT7_tree);
      	}

      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "expression"


  // $ANTLR start "statement"
  /* ../runtime/dart/tests/grammars/t045dfabug.g:
   18:1: statement : ( 'fooze' | 'fooze2' );*/
  t045dfabugParser_statement_return statement() {
    t045dfabugParser_statement_return retval = new t045dfabugParser_statement_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set8 = null;

    Object set8_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t045dfabug.g:
       19:5: ( 'fooze' | 'fooze2' )*/
      /* ../runtime/dart/tests/grammars/t045dfabug.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set8 = this.input.LT(1);

      	if((this.input.LA(1) >= 8 && this.input.LA(1) <= 9)) {
      	  this.input.consume();
      	  if(this.state.backtracking == 0)
      	    this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set8));
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "statement"


  // $ANTLR start "modifier"
  /* ../runtime/dart/tests/grammars/t045dfabug.g:
   23:1: modifier : ( 'public' | 'private' );*/
  t045dfabugParser_modifier_return modifier() {
    t045dfabugParser_modifier_return retval = new t045dfabugParser_modifier_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set9 = null;

    Object set9_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t045dfabug.g:
       24:5: ( 'public' | 'private' )*/
      /* ../runtime/dart/tests/grammars/t045dfabug.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set9 = this.input.LT(1);

      	if((this.input.LA(1) >= 10 && this.input.LA(1) <= 11)) {
      	  this.input.consume();
      	  if(this.state.backtracking == 0)
      	    this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set9));
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return retval;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

      retval.stop = this.input.LT(-1);

      if(this.state.backtracking == 0) {

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "modifier"

  // $ANTLR start synpred1_t045dfabug
  void synpred1_t045dfabug_fragment() {
    /* ../runtime/dart/tests/grammars/t045dfabug.g:
     10:7: ( ( modifier )+ INT )*/
    /* ../runtime/dart/tests/grammars/t045dfabug.g:
     10:8: ( modifier )+ INT*/
    {
    	/* ../runtime/dart/tests/grammars/t045dfabug.g:
    	 10:8: ( modifier )+*/
    	int cnt4 = 0;
    	loop4:
    	do {
    	  int alt4 = 2;
    	  int LA4_0 = this.input.LA(1);

    	  if(((LA4_0 >= 10 && LA4_0 <= 11))) {
    	    alt4 = 1;
    	  }


    	  switch (alt4) {
    			case 1 :
    			  /* ../runtime/dart/tests/grammars/t045dfabug.g:
    			   10:8: modifier*/
    			  {
    			  	this.pushFollow(FOLLOW_modifier_in_synpred1_t045dfabug51);
    			  	this.modifier();

    			  	this.state.fsp--;
    			  	if(this.state.failed) 
    			  	  return ;

    			  }
    			  break;

    			default :
    		    if(cnt4 >= 1) break loop4;
    		      if(this.state.backtracking > 0) {
    		        this.state.failed = true; 
    		        return ;
    		      }
    	        EarlyExitException eee = new EarlyExitException(4, this.input);
    	        throw eee;
    	  }
    	  cnt4++;
    	} while(true);


    	this.matchSymbol(this.input,
    	    INT,FOLLOW_INT_in_synpred1_t045dfabug54); 
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred1_t045dfabug


  bool synpred1_t045dfabug() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred1_t045dfabug_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


  static final String DFA3_eotS =
      "\u0004\uffff";
  static final String DFA3_eofS =
      "\u0004\uffff";
  static final String DFA3_minS =
      "\u0001\u000a\u0001\u0005\u0002\uffff";
  static final String DFA3_maxS =
      "\u0002\u000b\u0002\uffff";
  static final String DFA3_acceptS =
      "\u0002\uffff\u0001\u0001\u0001\u0002";
  static final String DFA3_specialS =
      "\u0001\uffff\u0001\u0000\u0002\uffff";
  static final List<String> DFA3_transitionS = const [
      "\u0002\u0001",
      "\u0001\u0002\u0002\uffff\u0002\u0003\u0002\u0001",
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

  static BitSet _FOLLOW_modifier_in_r58 = null;
  static BitSet get FOLLOW_modifier_in_r58() {
    if(_FOLLOW_modifier_in_r58 == null) 
      _FOLLOW_modifier_in_r58 = 
        new BitSet.fromList([0x0000000000000C20]);
    return _FOLLOW_modifier_in_r58;
  }

  static BitSet _FOLLOW_expression_in_r61 = null;
  static BitSet get FOLLOW_expression_in_r61() {
    if(_FOLLOW_expression_in_r61 == null) 
      _FOLLOW_expression_in_r61 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_r61;
  }

  static BitSet _FOLLOW_modifier_in_r69 = null;
  static BitSet get FOLLOW_modifier_in_r69() {
    if(_FOLLOW_modifier_in_r69 == null) 
      _FOLLOW_modifier_in_r69 = 
        new BitSet.fromList([0x0000000000000F00]);
    return _FOLLOW_modifier_in_r69;
  }

  static BitSet _FOLLOW_statement_in_r72 = null;
  static BitSet get FOLLOW_statement_in_r72() {
    if(_FOLLOW_statement_in_r72 == null) 
      _FOLLOW_statement_in_r72 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_r72;
  }

  static BitSet _FOLLOW_INT_in_expression89 = null;
  static BitSet get FOLLOW_INT_in_expression89() {
    if(_FOLLOW_INT_in_expression89 == null) 
      _FOLLOW_INT_in_expression89 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_INT_in_expression89;
  }

  static BitSet _FOLLOW_7_in_expression91 = null;
  static BitSet get FOLLOW_7_in_expression91() {
    if(_FOLLOW_7_in_expression91 == null) 
      _FOLLOW_7_in_expression91 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_7_in_expression91;
  }

  static BitSet _FOLLOW_INT_in_expression93 = null;
  static BitSet get FOLLOW_INT_in_expression93() {
    if(_FOLLOW_INT_in_expression93 == null) 
      _FOLLOW_INT_in_expression93 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_expression93;
  }

  static BitSet _FOLLOW_modifier_in_synpred1_t045dfabug51 = null;
  static BitSet get FOLLOW_modifier_in_synpred1_t045dfabug51() {
    if(_FOLLOW_modifier_in_synpred1_t045dfabug51 == null) 
      _FOLLOW_modifier_in_synpred1_t045dfabug51 = 
        new BitSet.fromList([0x0000000000000C20]);
    return _FOLLOW_modifier_in_synpred1_t045dfabug51;
  }

  static BitSet _FOLLOW_INT_in_synpred1_t045dfabug54 = null;
  static BitSet get FOLLOW_INT_in_synpred1_t045dfabug54() {
    if(_FOLLOW_INT_in_synpred1_t045dfabug54 == null) 
      _FOLLOW_INT_in_synpred1_t045dfabug54 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_synpred1_t045dfabug54;
  }



 }


class DFA3 extends DFA {

  DFA3(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 3;
    this.eot = t045dfabugParser.DFA3_eot;
    this.eof = t045dfabugParser.DFA3_eof;
    this.min = t045dfabugParser.DFA3_min;
    this.max = t045dfabugParser.DFA3_max;
    this.accept = t045dfabugParser.DFA3_accept;
    this.special = t045dfabugParser.DFA3_special;
    this.transition = t045dfabugParser.DFA3_transition;
  }

  String get description() => 
        """8:1: r options {backtrack=true; } : ( ( ( modifier )+ INT )=> ( modifier )+ expression | 
( modifier )+ statement );""";

  int specialStateTransition(int s, IntStream _input){
    TokenStream input = _input;
    int _s = s;
    switch(s) {
      case 0 :int LA3_1 = this.recognizer.dynamic.input.LA(1);

       
      int index3_1 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(LA3_1 == 5/*INT*/ && this.recognizer.dynamic.synpred1_t045dfabug()) {
        s = 2;
      }

      else if((LA3_1 >= 10 && LA3_1 <= 11)) {
        s = 1;
      }

      else if((LA3_1 >= 8 && LA3_1 <= 9)) {
        s = 3;
      }

       
      this.recognizer.dynamic.input.seek(index3_1);

      if(s>=0) return s;
      break;
    }
    if(this.recognizer.dynamic.state.backtracking > 0) {
      this.recognizer.dynamic.state.failed = true; 
      return -1;
    }
    NoViableAltException nvae = new NoViableAltException(this.description, 3, _s, this.recognizer.dynamic.input);
    this.recognizer.dynamic.error(nvae);
    throw nvae;
  }

}



class t045dfabugParser_r_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t045dfabugParser_expression_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t045dfabugParser_statement_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t045dfabugParser_modifier_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t045dfabugParser_synpred1_t045dfabug_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

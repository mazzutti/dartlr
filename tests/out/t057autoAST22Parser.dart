// $ANTLR 3.4 t057autoAST22Parser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST22Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'exp'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST22Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST22Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST22Parser._tokenNames;

  String get grammarFileName() => "t057autoAST22.g";

  String getRecognizerClassName() => "t057autoAST22Parser";


  // $ANTLR start "s"
  /* ../runtime/dart/tests/grammars/t057autoAST22.g:
   3:1: s : a ;*/
  t057autoAST22Parser_s_return s() {
    t057autoAST22Parser_s_return retval = new t057autoAST22Parser_s_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t057autoAST22Parser_a_return a1 =null;



    try {
      /* ../runtime/dart/tests/grammars/t057autoAST22.g:
       3:3: ( a )*/
      /* ../runtime/dart/tests/grammars/t057autoAST22.g:
       3:5: a*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_a_in_s20);
      	a1 = this.a();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, a1.tree);

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
  	return retval;
  }
  // $ANTLR end "s"


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST22.g:
   4:1: a : atom ( 'exp' ^ a )? ;*/
  t057autoAST22Parser_a_return a() {
    t057autoAST22Parser_a_return retval = new t057autoAST22Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal3 = null;
    t057autoAST22Parser_atom_return atom2 =null;

    t057autoAST22Parser_a_return a4 =null;


    Object string_literal3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST22.g:
       4:3: ( atom ( 'exp' ^ a )? )*/
      /* ../runtime/dart/tests/grammars/t057autoAST22.g:
       4:5: atom ( 'exp' ^ a )?*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_atom_in_a28);
      	atom2 = this.atom();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, atom2.tree);

      	/* ../runtime/dart/tests/grammars/t057autoAST22.g:
      	 4:10: ( 'exp' ^ a )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 7/*7*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t057autoAST22.g:
      	     4:11: 'exp' ^ a*/
      	    {
      	    	string_literal3 = this.matchSymbol(this.input,
      	    	    7,FOLLOW_7_in_a31); 

      	    	string_literal3_tree = this._adaptor.createTreeNode(string_literal3);
      	    	root_0 = this._adaptor.becomeRoot(string_literal3_tree, root_0);


      	    	this.pushFollow(FOLLOW_a_in_a34);
      	    	a4 = this.a();

      	    	this.state.fsp--;

      	    	this._adaptor.addChild(root_0, a4.tree);

      	    }
      	    break;

      	}


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
  	return retval;
  }
  // $ANTLR end "a"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t057autoAST22.g:
   5:1: atom : INT ;*/
  t057autoAST22Parser_atom_return atom() {
    t057autoAST22Parser_atom_return retval = new t057autoAST22Parser_atom_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT5 = null;

    Object INT5_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST22.g:
       5:6: ( INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST22.g:
       5:8: INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT5 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_atom44); 

      	INT5_tree = this._adaptor.createTreeNode(INT5);
      	this._adaptor.addChild(root_0, INT5_tree);


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
  	return retval;
  }
  // $ANTLR end "atom"



 

  static BitSet _FOLLOW_a_in_s20 = null;
  static BitSet get FOLLOW_a_in_s20() {
    if(_FOLLOW_a_in_s20 == null) 
      _FOLLOW_a_in_s20 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_s20;
  }

  static BitSet _FOLLOW_atom_in_a28 = null;
  static BitSet get FOLLOW_atom_in_a28() {
    if(_FOLLOW_atom_in_a28 == null) 
      _FOLLOW_atom_in_a28 = 
        new BitSet.fromList([0x0000000000000082]);
    return _FOLLOW_atom_in_a28;
  }

  static BitSet _FOLLOW_7_in_a31 = null;
  static BitSet get FOLLOW_7_in_a31() {
    if(_FOLLOW_7_in_a31 == null) 
      _FOLLOW_7_in_a31 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_7_in_a31;
  }

  static BitSet _FOLLOW_a_in_a34 = null;
  static BitSet get FOLLOW_a_in_a34() {
    if(_FOLLOW_a_in_a34 == null) 
      _FOLLOW_a_in_a34 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_a34;
  }

  static BitSet _FOLLOW_INT_in_atom44 = null;
  static BitSet get FOLLOW_INT_in_atom44() {
    if(_FOLLOW_INT_in_atom44 == null) 
      _FOLLOW_INT_in_atom44 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom44;
  }



 }




class t057autoAST22Parser_s_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST22Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST22Parser_atom_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

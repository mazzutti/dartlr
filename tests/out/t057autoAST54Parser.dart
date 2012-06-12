// $ANTLR 3.4 t057autoAST54Parser.g 2012-06-07 21:59:40
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST54Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "S", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int S = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST54Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST54Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST54Parser._tokenNames;

  String get grammarFileName() => "t057autoAST54.g";

  String getRecognizerClassName() => "t057autoAST54Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST54.g:
   3:1: a : ( b | c );*/
  t057autoAST54Parser_a_return a() {
    t057autoAST54Parser_a_return retval = new t057autoAST54Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t057autoAST54Parser_b_return b1 =null;

    t057autoAST54Parser_c_return c2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t057autoAST54.g: 
       3:3: ( b | c )*/
      int alt1 = 2;
      int LA1_0 = this.input.LA(1);

      if((LA1_0 == 4/*ID*/)) {
        alt1 = 1;
      }
      else if((LA1_0 == 5/*INT*/)) {
        alt1 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 1, 0, this.input);

        throw nvae;

      }
      switch (alt1) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t057autoAST54.g:
           3:5: b*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_b_in_a20);
          	b1 = this.b();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, b1.tree);

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t057autoAST54.g:
           3:9: c*/
          {
          	root_0 = this._adaptor.nil();


          	this.pushFollow(FOLLOW_c_in_a24);
          	c2 = this.c();

          	this.state.fsp--;

          	this._adaptor.addChild(root_0, c2.tree);

          }
          break;

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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t057autoAST54.g:
   4:1: b : ID ;*/
  t057autoAST54Parser_b_return b() {
    t057autoAST54Parser_b_return retval = new t057autoAST54Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;

    Object ID3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST54.g:
       4:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t057autoAST54.g:
       4:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b32); 

      	ID3_tree = this._adaptor.createTreeNode(ID3);
      	this._adaptor.addChild(root_0, ID3_tree);


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
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t057autoAST54.g:
   5:1: c : INT ;*/
  t057autoAST54Parser_c_return c() {
    t057autoAST54Parser_c_return retval = new t057autoAST54Parser_c_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT4 = null;

    Object INT4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST54.g:
       5:3: ( INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST54.g:
       5:5: INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_c40); 

      	INT4_tree = this._adaptor.createTreeNode(INT4);
      	this._adaptor.addChild(root_0, INT4_tree);


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
  // $ANTLR end "c"



 

  static BitSet _FOLLOW_b_in_a20 = null;
  static BitSet get FOLLOW_b_in_a20() {
    if(_FOLLOW_b_in_a20 == null) 
      _FOLLOW_b_in_a20 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a20;
  }

  static BitSet _FOLLOW_c_in_a24 = null;
  static BitSet get FOLLOW_c_in_a24() {
    if(_FOLLOW_c_in_a24 == null) 
      _FOLLOW_c_in_a24 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_c_in_a24;
  }

  static BitSet _FOLLOW_ID_in_b32 = null;
  static BitSet get FOLLOW_ID_in_b32() {
    if(_FOLLOW_ID_in_b32 == null) 
      _FOLLOW_ID_in_b32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b32;
  }

  static BitSet _FOLLOW_INT_in_c40 = null;
  static BitSet get FOLLOW_INT_in_c40() {
    if(_FOLLOW_INT_in_c40 == null) 
      _FOLLOW_INT_in_c40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_c40;
  }



 }




class t057autoAST54Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST54Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST54Parser_c_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

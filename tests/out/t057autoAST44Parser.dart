// $ANTLR 3.4 t057autoAST44Parser.g 2012-06-07 21:59:39
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST44Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST44Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST44Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST44Parser._tokenNames;

  String get grammarFileName() => "t057autoAST44.g";

  String getRecognizerClassName() => "t057autoAST44Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST44.g:
   3:1: a returns [String result] : ID b ;*/
  t057autoAST44Parser_a_return a() {
    t057autoAST44Parser_a_return retval = new t057autoAST44Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    t057autoAST44Parser_b_return b2 =null;


    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST44.g:
       3:27: ( ID b )*/
      /* ../runtime/dart/tests/grammars/t057autoAST44.g:
       3:29: ID b*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a24); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


      	this.pushFollow(FOLLOW_b_in_a26);
      	b2 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b2.tree);


      	retval.result =  "${b2 != null ? b2.i : 0.toString()}\n";



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
  /* ../runtime/dart/tests/grammars/t057autoAST44.g:
   6:1: b returns [int i] : INT ;*/
  t057autoAST44Parser_b_return b() {
    t057autoAST44Parser_b_return retval = new t057autoAST44Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT3 = null;

    Object INT3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST44.g:
       6:19: ( INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST44.g:
       6:21: INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_b40); 

      	INT3_tree = this._adaptor.createTreeNode(INT3);
      	this._adaptor.addChild(root_0, INT3_tree);


      	retval.i = Math.parseInt((INT3 != null) ? INT3.text : null);


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



 

  static BitSet _FOLLOW_ID_in_a24 = null;
  static BitSet get FOLLOW_ID_in_a24() {
    if(_FOLLOW_ID_in_a24 == null) 
      _FOLLOW_ID_in_a24 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a24;
  }

  static BitSet _FOLLOW_b_in_a26 = null;
  static BitSet get FOLLOW_b_in_a26() {
    if(_FOLLOW_b_in_a26 == null) 
      _FOLLOW_b_in_a26 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a26;
  }

  static BitSet _FOLLOW_INT_in_b40 = null;
  static BitSet get FOLLOW_INT_in_b40() {
    if(_FOLLOW_INT_in_b40 == null) 
      _FOLLOW_INT_in_b40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b40;
  }



 }




class t057autoAST44Parser_a_return extends ParserRuleReturnScope {
  String result;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST44Parser_b_return extends ParserRuleReturnScope {
  int i;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

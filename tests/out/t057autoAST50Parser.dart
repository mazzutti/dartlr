// $ANTLR 3.4 t057autoAST50Parser.g 2012-06-07 21:59:40
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST50Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST50Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST50Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST50Parser._tokenNames;

  String get grammarFileName() => "t057autoAST50.g";

  String getRecognizerClassName() => "t057autoAST50Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST50.g:
   3:1: a : b ;*/
  t057autoAST50Parser_a_return a() {
    t057autoAST50Parser_a_return retval = new t057autoAST50Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t057autoAST50Parser_b_return b1 =null;



    try {
      /* ../runtime/dart/tests/grammars/t057autoAST50.g:
       3:3: ( b )*/
      /* ../runtime/dart/tests/grammars/t057autoAST50.g:
       3:5: b*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a20);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

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
  /* ../runtime/dart/tests/grammars/t057autoAST50.g:
   4:1: b : ID INT ;*/
  t057autoAST50Parser_b_return b() {
    t057autoAST50Parser_b_return retval = new t057autoAST50Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID2 = null;
    Token INT3 = null;

    Object ID2_tree=null;
    Object INT3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST50.g:
       4:3: ( ID INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST50.g:
       4:5: ID INT*/
      {
      	root_0 = this._adaptor.nil();


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b28); 

      	ID2_tree = this._adaptor.createTreeNode(ID2);
      	this._adaptor.addChild(root_0, ID2_tree);


      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_b30); 

      	INT3_tree = this._adaptor.createTreeNode(INT3);
      	this._adaptor.addChild(root_0, INT3_tree);


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



 

  static BitSet _FOLLOW_b_in_a20 = null;
  static BitSet get FOLLOW_b_in_a20() {
    if(_FOLLOW_b_in_a20 == null) 
      _FOLLOW_b_in_a20 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a20;
  }

  static BitSet _FOLLOW_ID_in_b28 = null;
  static BitSet get FOLLOW_ID_in_b28() {
    if(_FOLLOW_ID_in_b28 == null) 
      _FOLLOW_ID_in_b28 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b28;
  }

  static BitSet _FOLLOW_INT_in_b30 = null;
  static BitSet get FOLLOW_INT_in_b30() {
    if(_FOLLOW_INT_in_b30 == null) 
      _FOLLOW_INT_in_b30 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b30;
  }



 }




class t057autoAST50Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST50Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

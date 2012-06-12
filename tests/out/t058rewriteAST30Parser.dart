// $ANTLR 3.4 t058rewriteAST30Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST30Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "VAR", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int VAR = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST30Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST30Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST30Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST30.g";

  String getRecognizerClassName() => "t058rewriteAST30Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST30.g:
   5:1: a : b -> ID ;*/
  t058rewriteAST30Parser_a_return a() {
    t058rewriteAST30Parser_a_return retval = new t058rewriteAST30Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST30Parser_b_return b1 =null;


    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST30.g:
       5:3: ( b -> ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST30.g:
       5:5: b*/
      {
      	this.pushFollow(FOLLOW_b_in_a26);
      	b1 = this.b();

      	this.state.fsp--;

      	stream_b.add(b1.tree);

      	// AST REWRITE
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:7: -> ID*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(ID, "ID")
      	    );

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
  	return retval;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t058rewriteAST30.g:
   6:1: b : ID ;*/
  t058rewriteAST30Parser_b_return b() {
    t058rewriteAST30Parser_b_return retval = new t058rewriteAST30Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID2 = null;

    Object ID2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST30.g:
       6:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST30.g:
       6:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b38); 

      	ID2_tree = this._adaptor.createTreeNode(ID2);
      	this._adaptor.addChild(root_0, ID2_tree);


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



 

  static BitSet _FOLLOW_b_in_a26 = null;
  static BitSet get FOLLOW_b_in_a26() {
    if(_FOLLOW_b_in_a26 == null) 
      _FOLLOW_b_in_a26 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a26;
  }

  static BitSet _FOLLOW_ID_in_b38 = null;
  static BitSet get FOLLOW_ID_in_b38() {
    if(_FOLLOW_ID_in_b38 == null) 
      _FOLLOW_ID_in_b38 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b38;
  }



 }




class t058rewriteAST30Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST30Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

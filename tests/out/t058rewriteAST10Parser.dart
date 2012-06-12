// $ANTLR 3.4 t058rewriteAST10Parser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST10Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST10Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST10Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST10Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST10.g";

  String getRecognizerClassName() => "t058rewriteAST10Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST10.g:
   4:1: a : b INT -> INT b ;*/
  t058rewriteAST10Parser_a_return a() {
    t058rewriteAST10Parser_a_return retval = new t058rewriteAST10Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT2 = null;
    t058rewriteAST10Parser_b_return b1 =null;


    Object INT2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST10.g:
       4:3: ( b INT -> INT b )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST10.g:
       4:5: b INT*/
      {
      	this.pushFollow(FOLLOW_b_in_a21);
      	b1 = this.b();

      	this.state.fsp--;

      	stream_b.add(b1.tree);

      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a23); 
      	 
      	stream_INT.add(INT2);


      	// AST REWRITE
      	// elements: b, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:11: -> INT b*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_INT.nextNode()
      	    );

      	    this._adaptor.addChild(root_0, stream_b.nextTree());

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST10.g:
   5:1: b : ID ;*/
  t058rewriteAST10Parser_b_return b() {
    t058rewriteAST10Parser_b_return retval = new t058rewriteAST10Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;

    Object ID3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST10.g:
       5:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST10.g:
       5:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b36); 

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



 

  static BitSet _FOLLOW_b_in_a21 = null;
  static BitSet get FOLLOW_b_in_a21() {
    if(_FOLLOW_b_in_a21 == null) 
      _FOLLOW_b_in_a21 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_b_in_a21;
  }

  static BitSet _FOLLOW_INT_in_a23 = null;
  static BitSet get FOLLOW_INT_in_a23() {
    if(_FOLLOW_INT_in_a23 == null) 
      _FOLLOW_INT_in_a23 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a23;
  }

  static BitSet _FOLLOW_ID_in_b36 = null;
  static BitSet get FOLLOW_ID_in_b36() {
    if(_FOLLOW_ID_in_b36 == null) 
      _FOLLOW_ID_in_b36 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b36;
  }



 }




class t058rewriteAST10Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST10Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

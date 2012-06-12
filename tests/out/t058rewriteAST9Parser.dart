// $ANTLR 3.4 t058rewriteAST9Parser.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST9Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST9Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST9Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST9Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST9.g";

  String getRecognizerClassName() => "t058rewriteAST9Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST9.g:
   3:1: a : ID INT -> INT ID ;*/
  t058rewriteAST9Parser_a_return a() {
    t058rewriteAST9Parser_a_return retval = new t058rewriteAST9Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST9.g:
       3:3: ( ID INT -> INT ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST9.g:
       3:5: ID INT*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a20); 
      	 
      	stream_ID.add(ID1);


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a22); 
      	 
      	stream_INT.add(INT2);


      	// AST REWRITE
      	// elements: INT, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 3:12: -> INT ID*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_INT.nextNode()
      	    );

      	    this._adaptor.addChild(root_0, 
      	    stream_ID.nextNode()
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



 

  static BitSet _FOLLOW_ID_in_a20 = null;
  static BitSet get FOLLOW_ID_in_a20() {
    if(_FOLLOW_ID_in_a20 == null) 
      _FOLLOW_ID_in_a20 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a20;
  }

  static BitSet _FOLLOW_INT_in_a22 = null;
  static BitSet get FOLLOW_INT_in_a22() {
    if(_FOLLOW_INT_in_a22 == null) 
      _FOLLOW_INT_in_a22 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a22;
  }



 }




class t058rewriteAST9Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

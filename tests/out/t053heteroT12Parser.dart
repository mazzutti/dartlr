// $ANTLR 3.4 t053heteroT12Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("v_common_tree.dart");

class t053heteroT12Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'begin'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroT12Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroT12Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroT12Parser._tokenNames;

  String get grammarFileName() => "t053heteroT12.g";

  String getRecognizerClassName() => "t053heteroT12Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroT12.g:
   9:1: a : 'begin' INT -> ^( 'begin' INT ) ;*/
  t053heteroT12Parser_a_return a() {
    t053heteroT12Parser_a_return retval = new t053heteroT12Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token INT2 = null;

    Object string_literal1_tree=null;
    Object INT2_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t053heteroT12.g:
       9:3: ( 'begin' INT -> ^( 'begin' INT ) )*/
      /* ../runtime/dart/tests/grammars/t053heteroT12.g:
       9:5: 'begin' INT*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a36); 
      	 
      	stream_7.add(string_literal1);


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a38); 
      	 
      	stream_INT.add(INT2);


      	// AST REWRITE
      	// elements: INT, 7
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 9:17: -> ^( 'begin' INT )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t053heteroT12.g:
      	     9:20: ^( 'begin' INT )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	new V(stream_7.nextToken())
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_INT.nextNode()
      	    	);

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
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_7_in_a36 = null;
  static BitSet get FOLLOW_7_in_a36() {
    if(_FOLLOW_7_in_a36 == null) 
      _FOLLOW_7_in_a36 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_7_in_a36;
  }

  static BitSet _FOLLOW_INT_in_a38 = null;
  static BitSet get FOLLOW_INT_in_a38() {
    if(_FOLLOW_INT_in_a38 == null) 
      _FOLLOW_INT_in_a38 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a38;
  }



 }




class t053heteroT12Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

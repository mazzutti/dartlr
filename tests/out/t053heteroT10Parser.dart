// $ANTLR 3.4 t053heteroT10Parser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("v_common_tree.dart");

class t053heteroT10Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroT10Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroT10Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroT10Parser._tokenNames;

  String get grammarFileName() => "t053heteroT10.g";

  String getRecognizerClassName() => "t053heteroT10Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroT10.g:
   9:1: a : ID INT -> ^( ID INT ) ;*/
  t053heteroT10Parser_a_return a() {
    t053heteroT10Parser_a_return retval = new t053heteroT10Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t053heteroT10.g:
       9:3: ( ID INT -> ^( ID INT ) )*/
      /* ../runtime/dart/tests/grammars/t053heteroT10.g:
       9:5: ID INT*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a36); 
      	 
      	stream_ID.add(ID1);


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a38); 
      	 
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
      	/* 9:12: -> ^( ID INT )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t053heteroT10.g:
      	     9:15: ^( ID INT )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	new V(stream_ID.nextToken())
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



 

  static BitSet _FOLLOW_ID_in_a36 = null;
  static BitSet get FOLLOW_ID_in_a36() {
    if(_FOLLOW_ID_in_a36 == null) 
      _FOLLOW_ID_in_a36 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a36;
  }

  static BitSet _FOLLOW_INT_in_a38 = null;
  static BitSet get FOLLOW_INT_in_a38() {
    if(_FOLLOW_INT_in_a38 == null) 
      _FOLLOW_INT_in_a38 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a38;
  }



 }




class t053heteroT10Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

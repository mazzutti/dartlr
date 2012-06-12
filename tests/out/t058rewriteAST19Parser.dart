// $ANTLR 3.4 t058rewriteAST19Parser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST19Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST19Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST19Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST19Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST19.g";

  String getRecognizerClassName() => "t058rewriteAST19Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
   4:1: a :x+= b x+= b -> ( $x)* ;*/
  t058rewriteAST19Parser_a_return a() {
    t058rewriteAST19Parser_a_return retval = new t058rewriteAST19Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    List list_x = null;
    RuleReturnScope x = null;
    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
       4:3: (x+= b x+= b -> ( $x)* )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
       4:5: x+= b x+= b*/
      {
      	this.pushFollow(FOLLOW_b_in_a23);
      	x = this.b();

      	this.state.fsp--;

      	stream_b.add(x.tree);
      	if(list_x == null) 
      	  list_x = new List();
      	list_x.add(x.tree);


      	this.pushFollow(FOLLOW_b_in_a27);
      	x = this.b();

      	this.state.fsp--;

      	stream_b.add(x.tree);
      	if(list_x == null) 
      	  list_x = new List();
      	list_x.add(x.tree);


      	// AST REWRITE
      	// elements: x
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: x
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      	RewriteRuleSubtreeStream stream_x = new RewriteRuleSubtreeStream(this._adaptor,"token x",list_x);
      	root_0 = this._adaptor.nil();
      	/* 4:15: -> ( $x)**/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
      	     4:19: ( $x)**/
      	    while ( stream_x.hasNext()) {
      	        this._adaptor.addChild(root_0, stream_x.nextTree());

      	    }
      	    stream_x.reset();

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
   5:1: b : ID ;*/
  t058rewriteAST19Parser_b_return b() {
    t058rewriteAST19Parser_b_return retval = new t058rewriteAST19Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
       5:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST19.g:
       5:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b40); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


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



 

  static BitSet _FOLLOW_b_in_a23 = null;
  static BitSet get FOLLOW_b_in_a23() {
    if(_FOLLOW_b_in_a23 == null) 
      _FOLLOW_b_in_a23 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_b_in_a23;
  }

  static BitSet _FOLLOW_b_in_a27 = null;
  static BitSet get FOLLOW_b_in_a27() {
    if(_FOLLOW_b_in_a27 == null) 
      _FOLLOW_b_in_a27 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a27;
  }

  static BitSet _FOLLOW_ID_in_b40 = null;
  static BitSet get FOLLOW_ID_in_b40() {
    if(_FOLLOW_ID_in_b40 == null) 
      _FOLLOW_ID_in_b40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b40;
  }



 }




class t058rewriteAST19Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST19Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

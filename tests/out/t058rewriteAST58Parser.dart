// $ANTLR 3.4 t058rewriteAST58Parser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST58Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "WS"
  ];

  static final int EOF = -1;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST58Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST58Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST58Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST58.g";

  String getRecognizerClassName() => "t058rewriteAST58Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST58.g:
   5:1: a :x+= b x+= b -> ( $x)+ ;*/
  t058rewriteAST58Parser_a_return a() {
    t058rewriteAST58Parser_a_return retval = new t058rewriteAST58Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    List list_x = null;
    RuleReturnScope x = null;
    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST58.g:
       5:3: (x+= b x+= b -> ( $x)+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST58.g:
       5:5: x+= b x+= b*/
      {
      	this.pushFollow(FOLLOW_b_in_a28);
      	x = this.b();

      	this.state.fsp--;

      	stream_b.add(x.tree);
      	if(list_x == null) 
      	  list_x = new List();
      	list_x.add(x.tree);


      	this.pushFollow(FOLLOW_b_in_a32);
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
      	/* 5:15: -> ( $x)+*/
      	{
      	    if(!(stream_x.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
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
  /* ../runtime/dart/tests/grammars/t058rewriteAST58.g:
   6:1: b : ID ;*/
  t058rewriteAST58Parser_b_return b() {
    t058rewriteAST58Parser_b_return retval = new t058rewriteAST58Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST58.g:
       6:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST58.g:
       6:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b45); 

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



 

  static BitSet _FOLLOW_b_in_a28 = null;
  static BitSet get FOLLOW_b_in_a28() {
    if(_FOLLOW_b_in_a28 == null) 
      _FOLLOW_b_in_a28 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_b_in_a28;
  }

  static BitSet _FOLLOW_b_in_a32 = null;
  static BitSet get FOLLOW_b_in_a32() {
    if(_FOLLOW_b_in_a32 == null) 
      _FOLLOW_b_in_a32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a32;
  }

  static BitSet _FOLLOW_ID_in_b45 = null;
  static BitSet get FOLLOW_ID_in_b45() {
    if(_FOLLOW_ID_in_b45 == null) 
      _FOLLOW_ID_in_b45 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b45;
  }



 }




class t058rewriteAST58Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST58Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

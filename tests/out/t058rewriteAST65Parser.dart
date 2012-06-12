// $ANTLR 3.4 t058rewriteAST65Parser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST65Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "WS"
  ];

  static final int EOF = -1;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST65Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST65Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST65Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST65.g";

  String getRecognizerClassName() => "t058rewriteAST65Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST65.g:
   5:1: a :x+= b x+= b ->;*/
  t058rewriteAST65Parser_a_return a() {
    t058rewriteAST65Parser_a_return retval = new t058rewriteAST65Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    List list_x = null;
    RuleReturnScope x = null;
    RewriteRuleSubtreeStream stream_b=new RewriteRuleSubtreeStream(this._adaptor,"rule b");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST65.g:
       5:3: (x+= b x+= b ->)*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST65.g:
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
      	// elements: 
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:15: ->*/
      	{
      	    this._adaptor.addChild(root_0, new CommonTree(null));

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST65.g:
   6:1: b : ID ;*/
  t058rewriteAST65Parser_b_return b() {
    t058rewriteAST65Parser_b_return retval = new t058rewriteAST65Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST65.g:
       6:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST65.g:
       6:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b43); 

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

  static BitSet _FOLLOW_ID_in_b43 = null;
  static BitSet get FOLLOW_ID_in_b43() {
    if(_FOLLOW_ID_in_b43 == null) 
      _FOLLOW_ID_in_b43 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b43;
  }



 }




class t058rewriteAST65Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST65Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

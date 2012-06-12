// $ANTLR 3.4 t058rewriteAST57Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST57Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST57Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST57Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST57Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST57.g";

  String getRecognizerClassName() => "t058rewriteAST57Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST57.g:
   4:1: a : ( ID a -> a | INT );*/
  t058rewriteAST57Parser_a_return a() {
    t058rewriteAST57Parser_a_return retval = new t058rewriteAST57Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT3 = null;
    t058rewriteAST57Parser_a_return a2 =null;


    Object ID1_tree=null;
    Object INT3_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_a=new RewriteRuleSubtreeStream(this._adaptor,"rule a");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST57.g: 
       4:3: ( ID a -> a | INT )*/
      int alt1 = 2;
      int LA1_0 = this.input.LA(1);

      if((LA1_0 == 4/*ID*/)) {
        alt1 = 1;
      }
      else if((LA1_0 == 5/*INT*/)) {
        alt1 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 1, 0, this.input);

        throw nvae;

      }
      switch (alt1) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST57.g:
           4:5: ID a*/
          {
          	ID1 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_a21); 
          	 
          	stream_ID.add(ID1);


          	this.pushFollow(FOLLOW_a_in_a23);
          	a2 = this.a();

          	this.state.fsp--;

          	stream_a.add(a2.tree);

          	// AST REWRITE
          	// elements: a
          	// token labels: 
          	// rule labels: retval
          	// token list labels: 
          	// rule list labels: 
          	// wildcard labels: 
          	retval.tree = root_0;
          	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          	root_0 = this._adaptor.nil();
          	/* 4:10: -> a*/
          	{
          	    this._adaptor.addChild(root_0, stream_a.nextTree());

          	}


          	retval.tree = root_0;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST57.g:
           4:17: INT*/
          {
          	root_0 = this._adaptor.nil();


          	INT3 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_a31); 

          	INT3_tree = this._adaptor.createTreeNode(INT3);
          	this._adaptor.addChild(root_0, INT3_tree);


          }
          break;

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



 

  static BitSet _FOLLOW_ID_in_a21 = null;
  static BitSet get FOLLOW_ID_in_a21() {
    if(_FOLLOW_ID_in_a21 == null) 
      _FOLLOW_ID_in_a21 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_a21;
  }

  static BitSet _FOLLOW_a_in_a23 = null;
  static BitSet get FOLLOW_a_in_a23() {
    if(_FOLLOW_a_in_a23 == null) 
      _FOLLOW_a_in_a23 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_a_in_a23;
  }

  static BitSet _FOLLOW_INT_in_a31 = null;
  static BitSet get FOLLOW_INT_in_a31() {
    if(_FOLLOW_INT_in_a31 == null) 
      _FOLLOW_INT_in_a31 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a31;
  }



 }




class t058rewriteAST57Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

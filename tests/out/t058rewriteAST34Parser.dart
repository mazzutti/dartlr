// $ANTLR 3.4 t058rewriteAST34Parser.g 2012-06-07 21:59:35
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST34Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST34Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST34Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST34Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST34.g";

  String getRecognizerClassName() => "t058rewriteAST34Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST34.g:
   5:1: a : b b ^;*/
  t058rewriteAST34Parser_a_return a() {
    t058rewriteAST34Parser_a_return retval = new t058rewriteAST34Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST34Parser_b_return b1 =null;

    t058rewriteAST34Parser_b_return b2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST34.g:
       5:3: ( b b ^)*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST34.g:
       5:5: b b ^*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a26);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

      	this.pushFollow(FOLLOW_b_in_a28);
      	b2 = this.b();

      	this.state.fsp--;

      	root_0 = this._adaptor.becomeRoot(b2.tree, root_0);

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST34.g:
   6:1: b : ( ID INT -> INT ID | INT );*/
  t058rewriteAST34Parser_b_return b() {
    t058rewriteAST34Parser_b_return retval = new t058rewriteAST34Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;
    Token INT4 = null;
    Token INT5 = null;

    Object ID3_tree=null;
    Object INT4_tree=null;
    Object INT5_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST34.g: 
       6:3: ( ID INT -> INT ID | INT )*/
      int alt1 = 2;
      int LA1_0 = this.input.LA(1);

      if((LA1_0 == 5/*ID*/)) {
        alt1 = 1;
      }
      else if((LA1_0 == 6/*INT*/)) {
        alt1 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 1, 0, this.input);

        throw nvae;

      }
      switch (alt1) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST34.g:
           6:5: ID INT*/
          {
          	ID3 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b38); 
          	 
          	stream_ID.add(ID3);


          	INT4 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_b40); 
          	 
          	stream_INT.add(INT4);


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
          	/* 6:12: -> INT ID*/
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
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST34.g:
           7:5: INT*/
          {
          	root_0 = this._adaptor.nil();


          	INT5 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_b52); 

          	INT5_tree = this._adaptor.createTreeNode(INT5);
          	this._adaptor.addChild(root_0, INT5_tree);


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
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a26 = null;
  static BitSet get FOLLOW_b_in_a26() {
    if(_FOLLOW_b_in_a26 == null) 
      _FOLLOW_b_in_a26 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_b_in_a26;
  }

  static BitSet _FOLLOW_b_in_a28 = null;
  static BitSet get FOLLOW_b_in_a28() {
    if(_FOLLOW_b_in_a28 == null) 
      _FOLLOW_b_in_a28 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a28;
  }

  static BitSet _FOLLOW_ID_in_b38 = null;
  static BitSet get FOLLOW_ID_in_b38() {
    if(_FOLLOW_ID_in_b38 == null) 
      _FOLLOW_ID_in_b38 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_ID_in_b38;
  }

  static BitSet _FOLLOW_INT_in_b40 = null;
  static BitSet get FOLLOW_INT_in_b40() {
    if(_FOLLOW_INT_in_b40 == null) 
      _FOLLOW_INT_in_b40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b40;
  }

  static BitSet _FOLLOW_INT_in_b52 = null;
  static BitSet get FOLLOW_INT_in_b52() {
    if(_FOLLOW_INT_in_b52 == null) 
      _FOLLOW_INT_in_b52 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b52;
  }



 }




class t058rewriteAST34Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST34Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t058rewriteAST50Parser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST50Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'", "'-'", 
    "';'", "'int'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST50Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST50Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST50Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST50.g";

  String getRecognizerClassName() => "t058rewriteAST50Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST50.g:
   4:1: a : 'int' ID ';' -> 'int' ID 'int' ID ;*/
  t058rewriteAST50Parser_a_return a() {
    t058rewriteAST50Parser_a_return retval = new t058rewriteAST50Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token ID2 = null;
    Token char_literal3 = null;

    Object string_literal1_tree=null;
    Object ID2_tree=null;
    Object char_literal3_tree=null;
    RewriteRuleTokenStream stream_10=new RewriteRuleTokenStream(this._adaptor,"token 10");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_9=new RewriteRuleTokenStream(this._adaptor,"token 9");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST50.g:
       4:3: ( 'int' ID ';' -> 'int' ID 'int' ID )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST50.g:
       4:5: 'int' ID ';'*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_a21); 
      	 
      	stream_10.add(string_literal1);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a23); 
      	 
      	stream_ID.add(ID2);


      	char_literal3 = this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_a25); 
      	 
      	stream_9.add(char_literal3);


      	// AST REWRITE
      	// elements: ID, 10, 10, ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:18: -> 'int' ID 'int' ID*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_10.nextNode()
      	    );

      	    this._adaptor.addChild(root_0, 
      	    stream_ID.nextNode()
      	    );

      	    this._adaptor.addChild(root_0, 
      	    stream_10.nextNode()
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


  // $ANTLR start "op"
  /* ../runtime/dart/tests/grammars/t058rewriteAST50.g:
   5:1: op : ( '+' | '-' );*/
  t058rewriteAST50Parser_op_return op() {
    t058rewriteAST50Parser_op_return retval = new t058rewriteAST50Parser_op_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set4 = null;

    Object set4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST50.g:
       5:4: ( '+' | '-' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST50.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set4 = this.input.LT(1);

      	if((this.input.LA(1) >= 7 && this.input.LA(1) <= 8)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set4));
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


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
  // $ANTLR end "op"



 

  static BitSet _FOLLOW_10_in_a21 = null;
  static BitSet get FOLLOW_10_in_a21() {
    if(_FOLLOW_10_in_a21 == null) 
      _FOLLOW_10_in_a21 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_10_in_a21;
  }

  static BitSet _FOLLOW_ID_in_a23 = null;
  static BitSet get FOLLOW_ID_in_a23() {
    if(_FOLLOW_ID_in_a23 == null) 
      _FOLLOW_ID_in_a23 = 
        new BitSet.fromList([0x0000000000000200]);
    return _FOLLOW_ID_in_a23;
  }

  static BitSet _FOLLOW_9_in_a25 = null;
  static BitSet get FOLLOW_9_in_a25() {
    if(_FOLLOW_9_in_a25 == null) 
      _FOLLOW_9_in_a25 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_9_in_a25;
  }



 }




class t058rewriteAST50Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST50Parser_op_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

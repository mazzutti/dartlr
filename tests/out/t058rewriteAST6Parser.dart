// $ANTLR 3.4 t058rewriteAST6Parser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST6Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'c'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST6Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST6Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST6Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST6.g";

  String getRecognizerClassName() => "t058rewriteAST6Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST6.g:
   4:1: a : 'c' -> 'c' ;*/
  t058rewriteAST6Parser_a_return a() {
    t058rewriteAST6Parser_a_return retval = new t058rewriteAST6Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal1 = null;

    Object char_literal1_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST6.g:
       4:3: ( 'c' -> 'c' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST6.g:
       4:5: 'c'*/
      {
      	char_literal1 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a21); 
      	 
      	stream_7.add(char_literal1);


      	// AST REWRITE
      	// elements: 7
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:9: -> 'c'*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_7.nextNode()
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



 

  static BitSet _FOLLOW_7_in_a21 = null;
  static BitSet get FOLLOW_7_in_a21() {
    if(_FOLLOW_7_in_a21 == null) 
      _FOLLOW_7_in_a21 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a21;
  }



 }




class t058rewriteAST6Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

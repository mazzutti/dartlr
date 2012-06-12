// $ANTLR 3.4 t058rewriteAST69Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST69Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "FLOAT", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int FLOAT = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST69Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST69Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST69Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST69.g";

  String getRecognizerClassName() => "t058rewriteAST69Parser";


  // $ANTLR start "r"
  /* ../runtime/dart/tests/grammars/t058rewriteAST69.g:
   5:1: r : INT ->;*/
  t058rewriteAST69Parser_r_return r() {
    t058rewriteAST69Parser_r_return retval = new t058rewriteAST69Parser_r_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT1 = null;

    Object INT1_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST69.g:
       6:5: ( INT ->)*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST69.g:
       6:7: INT*/
      {
      	INT1 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_r32); 
      	 
      	stream_INT.add(INT1);


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
      	/* 6:11: ->*/
      	{
      	    this._adaptor.addChild(root_0, new CommonTree.fromToken(new CommonToken(FLOAT, "${(INT1 != null) ? INT1.text : null}.0")));

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
  // $ANTLR end "r"



 

  static BitSet _FOLLOW_INT_in_r32 = null;
  static BitSet get FOLLOW_INT_in_r32() {
    if(_FOLLOW_INT_in_r32 == null) 
      _FOLLOW_INT_in_r32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_r32;
  }



 }




class t058rewriteAST69Parser_r_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

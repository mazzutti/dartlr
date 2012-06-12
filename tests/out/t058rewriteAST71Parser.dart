// $ANTLR 3.4 t058rewriteAST71Parser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST71Parser extends Parser {

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


  t058rewriteAST71Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST71Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST71Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST71.g";

  String getRecognizerClassName() => "t058rewriteAST71Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST71.g:
   5:1: a : ID ID INT INT INT -> ( ID INT )+ ;*/
  t058rewriteAST71Parser_a_return a() {
    t058rewriteAST71Parser_a_return retval = new t058rewriteAST71Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token ID2 = null;
    Token INT3 = null;
    Token INT4 = null;
    Token INT5 = null;

    Object ID1_tree=null;
    Object ID2_tree=null;
    Object INT3_tree=null;
    Object INT4_tree=null;
    Object INT5_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST71.g:
       5:3: ( ID ID INT INT INT -> ( ID INT )+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST71.g:
       5:5: ID ID INT INT INT*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a26); 
      	 
      	stream_ID.add(ID1);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a28); 
      	 
      	stream_ID.add(ID2);


      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a30); 
      	 
      	stream_INT.add(INT3);


      	INT4 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a32); 
      	 
      	stream_INT.add(INT4);


      	INT5 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a34); 
      	 
      	stream_INT.add(INT5);


      	// AST REWRITE
      	// elements: ID, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:23: -> ( ID INT )+*/
      	{
      	    if(!(stream_ID.hasNext()||stream_INT.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()||stream_INT.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_ID.nextNode()
      	        );

      	        this._adaptor.addChild(root_0, 
      	        stream_INT.nextNode()
      	        );

      	    }
      	    stream_ID.reset();
      	    stream_INT.reset();

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



 

  static BitSet _FOLLOW_ID_in_a26 = null;
  static BitSet get FOLLOW_ID_in_a26() {
    if(_FOLLOW_ID_in_a26 == null) 
      _FOLLOW_ID_in_a26 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a26;
  }

  static BitSet _FOLLOW_ID_in_a28 = null;
  static BitSet get FOLLOW_ID_in_a28() {
    if(_FOLLOW_ID_in_a28 == null) 
      _FOLLOW_ID_in_a28 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_ID_in_a28;
  }

  static BitSet _FOLLOW_INT_in_a30 = null;
  static BitSet get FOLLOW_INT_in_a30() {
    if(_FOLLOW_INT_in_a30 == null) 
      _FOLLOW_INT_in_a30 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_INT_in_a30;
  }

  static BitSet _FOLLOW_INT_in_a32 = null;
  static BitSet get FOLLOW_INT_in_a32() {
    if(_FOLLOW_INT_in_a32 == null) 
      _FOLLOW_INT_in_a32 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_INT_in_a32;
  }

  static BitSet _FOLLOW_INT_in_a34 = null;
  static BitSet get FOLLOW_INT_in_a34() {
    if(_FOLLOW_INT_in_a34 == null) 
      _FOLLOW_INT_in_a34 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a34;
  }



 }




class t058rewriteAST71Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

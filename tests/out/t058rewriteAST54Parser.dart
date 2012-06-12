// $ANTLR 3.4 t058rewriteAST54Parser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST54Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "VAR", "WS", "'+'", 
    "'-'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int ID = 4;
  static final int INT = 5;
  static final int VAR = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST54Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST54Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST54Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST54.g";

  String getRecognizerClassName() => "t058rewriteAST54Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
   5:1: a : first= ID (others+= ID )* -> $first VAR ( $others)+ ;*/
  t058rewriteAST54Parser_a_return a() {
    t058rewriteAST54Parser_a_return retval = new t058rewriteAST54Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token first = null;
    Token others = null;
    List list_others = null;

    Object first_tree=null;
    Object others_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
       5:3: (first= ID (others+= ID )* -> $first VAR ( $others)+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
       5:5: first= ID (others+= ID )**/
      {
      	first = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a28); 
      	 
      	stream_ID.add(first);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
      	 5:20: (others+= ID )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
      			   5:20: others+= ID*/
      			  {
      			  	others = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a32); 
      			  	 
      			  	stream_ID.add(others);

      			  	if(list_others == null) 
      			  	  list_others = new List();
      			  	list_others.add(others);


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: first, others
      	// token labels: first
      	// rule labels: retval
      	// token list labels: others
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleTokenStream stream_first = new RewriteRuleTokenStream(this._adaptor,"token first",first);
      	RewriteRuleTokenStream stream_others = new RewriteRuleTokenStream(this._adaptor,"token others", list_others);
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:26: -> $first VAR ( $others)+*/
      	{
      	    this._adaptor.addChild(root_0, stream_first.nextNode());

      	    this._adaptor.addChild(root_0, 
      	    this._adaptor.create(VAR, "VAR")
      	    );

      	    if(!(stream_others.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_others.hasNext()) {
      	        this._adaptor.addChild(root_0, stream_others.nextNode());

      	    }
      	    stream_others.reset();

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
   6:1: op : ( '+' | '-' );*/
  t058rewriteAST54Parser_op_return op() {
    t058rewriteAST54Parser_op_return retval = new t058rewriteAST54Parser_op_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set1 = null;

    Object set1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
       6:4: ( '+' | '-' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST54.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set1 = this.input.LT(1);

      	if((this.input.LA(1) >= 8 && this.input.LA(1) <= 9)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set1));
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



 

  static BitSet _FOLLOW_ID_in_a28 = null;
  static BitSet get FOLLOW_ID_in_a28() {
    if(_FOLLOW_ID_in_a28 == null) 
      _FOLLOW_ID_in_a28 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_ID_in_a28;
  }

  static BitSet _FOLLOW_ID_in_a32 = null;
  static BitSet get FOLLOW_ID_in_a32() {
    if(_FOLLOW_ID_in_a32 == null) 
      _FOLLOW_ID_in_a32 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_ID_in_a32;
  }



 }




class t058rewriteAST54Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST54Parser_op_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

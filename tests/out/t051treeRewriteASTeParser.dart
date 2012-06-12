// $ANTLR 3.4 t051treeRewriteASTeParser.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTeParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTeParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTeParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTeParser._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTe.g";

  String getRecognizerClassName() => "t051treeRewriteASTeParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
   6:1: a : ( ID )+ ( INT )+ -> ( ^( ID INT ) )+ ;*/
  t051treeRewriteASTeParser_a_return a() {
    t051treeRewriteASTeParser_a_return retval = new t051treeRewriteASTeParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
       6:3: ( ( ID )+ ( INT )+ -> ( ^( ID INT ) )+ )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
       6:5: ( ID )+ ( INT )+*/
      {
      	/* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
      	 6:5: ( ID )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
      			   6:5: ID*/
      			  {
      			  	ID1 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a31); 
      			  	 
      			  	stream_ID.add(ID1);


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
      	 6:9: ( INT )+*/
      	int cnt2 = 0;
      	loop2:
      	do {
      	  int alt2 = 2;
      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 5/*INT*/)) {
      	    alt2 = 1;
      	  }


      	  switch (alt2) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
      			   6:9: INT*/
      			  {
      			  	INT2 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_a34); 
      			  	 
      			  	stream_INT.add(INT2);


      			  }
      			  break;

      			default :
      		    if(cnt2 >= 1) break loop2;
      	        EarlyExitException eee = new EarlyExitException(2, this.input);
      	        throw eee;
      	  }
      	  cnt2++;
      	} while(true);


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
      	/* 6:14: -> ( ^( ID INT ) )+*/
      	{
      	    if(!(stream_INT.hasNext()||stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_INT.hasNext()||stream_ID.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t051treeRewriteASTe.g:
      	         6:18: ^( ID INT )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(
      	        	stream_ID.nextNode()
      	        	, root_1);

      	        	this._adaptor.addChild(root_1, 
      	        	stream_INT.nextNode()
      	        	);

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_INT.reset();
      	    stream_ID.reset();

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



 

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_INT_in_a34 = null;
  static BitSet get FOLLOW_INT_in_a34() {
    if(_FOLLOW_INT_in_a34 == null) 
      _FOLLOW_INT_in_a34 = 
        new BitSet.fromList([0x0000000000000022]);
    return _FOLLOW_INT_in_a34;
  }



 }




class t051treeRewriteASTeParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

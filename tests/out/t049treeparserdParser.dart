// $ANTLR 3.4 t049treeparserdParser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparserdParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t049treeparserdParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t049treeparserdParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t049treeparserdParser._tokenNames;

  String get grammarFileName() => "t049treeparserd.g";

  String getRecognizerClassName() => "t049treeparserdParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserd.g:
   6:1: a : b c ;*/
  t049treeparserdParser_a_return a() {
    t049treeparserdParser_a_return retval = new t049treeparserdParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t049treeparserdParser_b_return b1 =null;

    t049treeparserdParser_c_return c2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t049treeparserd.g:
       6:3: ( b c )*/
      /* ../runtime/dart/tests/grammars/t049treeparserd.g:
       6:5: b c*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a31);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

      	this.pushFollow(FOLLOW_c_in_a33);
      	c2 = this.c();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, c2.tree);

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
  /* ../runtime/dart/tests/grammars/t049treeparserd.g:
   7:1: b : ID ( INT )+ -> ^( ID ( INT )+ ) ;*/
  t049treeparserdParser_b_return b() {
    t049treeparserdParser_b_return retval = new t049treeparserdParser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;
    Token INT4 = null;

    Object ID3_tree=null;
    Object INT4_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserd.g:
       7:3: ( ID ( INT )+ -> ^( ID ( INT )+ ) )*/
      /* ../runtime/dart/tests/grammars/t049treeparserd.g:
       7:5: ID ( INT )+*/
      {
      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b41); 
      	 
      	stream_ID.add(ID3);


      	/* ../runtime/dart/tests/grammars/t049treeparserd.g:
      	 7:8: ( INT )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 5/*INT*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t049treeparserd.g:
      			   7:8: INT*/
      			  {
      			  	INT4 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_b43); 
      			  	 
      			  	stream_INT.add(INT4);


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
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
      	/* 7:13: -> ^( ID ( INT )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t049treeparserd.g:
      	     7:16: ^( ID ( INT )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_ID.nextNode()
      	    	, root_1);

      	    	if(!(stream_INT.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_INT.hasNext()) {
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_INT.nextNode()
      	    	    );

      	    	}
      	    	stream_INT.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

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
  // $ANTLR end "b"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t049treeparserd.g:
   8:1: c : ID ( INT )+ ;*/
  t049treeparserdParser_c_return c() {
    t049treeparserdParser_c_return retval = new t049treeparserdParser_c_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID5 = null;
    Token INT6 = null;

    Object ID5_tree=null;
    Object INT6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserd.g:
       8:3: ( ID ( INT )+ )*/
      /* ../runtime/dart/tests/grammars/t049treeparserd.g:
       8:5: ID ( INT )+*/
      {
      	root_0 = this._adaptor.nil();


      	ID5 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_c60); 

      	ID5_tree = this._adaptor.createTreeNode(ID5);
      	this._adaptor.addChild(root_0, ID5_tree);


      	/* ../runtime/dart/tests/grammars/t049treeparserd.g:
      	 8:8: ( INT )+*/
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
      			  /* ../runtime/dart/tests/grammars/t049treeparserd.g:
      			   8:8: INT*/
      			  {
      			  	INT6 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_c62); 

      			  	INT6_tree = this._adaptor.createTreeNode(INT6);
      			  	this._adaptor.addChild(root_0, INT6_tree);


      			  }
      			  break;

      			default :
      		    if(cnt2 >= 1) break loop2;
      	        EarlyExitException eee = new EarlyExitException(2, this.input);
      	        throw eee;
      	  }
      	  cnt2++;
      	} while(true);


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
  // $ANTLR end "c"



 

  static BitSet _FOLLOW_b_in_a31 = null;
  static BitSet get FOLLOW_b_in_a31() {
    if(_FOLLOW_b_in_a31 == null) 
      _FOLLOW_b_in_a31 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_b_in_a31;
  }

  static BitSet _FOLLOW_c_in_a33 = null;
  static BitSet get FOLLOW_c_in_a33() {
    if(_FOLLOW_c_in_a33 == null) 
      _FOLLOW_c_in_a33 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_c_in_a33;
  }

  static BitSet _FOLLOW_ID_in_b41 = null;
  static BitSet get FOLLOW_ID_in_b41() {
    if(_FOLLOW_ID_in_b41 == null) 
      _FOLLOW_ID_in_b41 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b41;
  }

  static BitSet _FOLLOW_INT_in_b43 = null;
  static BitSet get FOLLOW_INT_in_b43() {
    if(_FOLLOW_INT_in_b43 == null) 
      _FOLLOW_INT_in_b43 = 
        new BitSet.fromList([0x0000000000000022]);
    return _FOLLOW_INT_in_b43;
  }

  static BitSet _FOLLOW_ID_in_c60 = null;
  static BitSet get FOLLOW_ID_in_c60() {
    if(_FOLLOW_ID_in_c60 == null) 
      _FOLLOW_ID_in_c60 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_c60;
  }

  static BitSet _FOLLOW_INT_in_c62 = null;
  static BitSet get FOLLOW_INT_in_c62() {
    if(_FOLLOW_INT_in_c62 == null) 
      _FOLLOW_INT_in_c62 = 
        new BitSet.fromList([0x0000000000000022]);
    return _FOLLOW_INT_in_c62;
  }



 }




class t049treeparserdParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t049treeparserdParser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t049treeparserdParser_c_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

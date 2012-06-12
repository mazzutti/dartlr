// $ANTLR 3.4 t058rewriteAST32Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST32Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "INT", "WS", 
    "'float'", "'int'", "'{'", "'}'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST32Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST32Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST32Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST32.g";

  String getRecognizerClassName() => "t058rewriteAST32Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
   5:1: a : lc= '{' ( ID )+ '}' -> ^( BLOCK[$lc] ( ID )+ ) ;*/
  t058rewriteAST32Parser_a_return a() {
    t058rewriteAST32Parser_a_return retval = new t058rewriteAST32Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token lc = null;
    Token ID1 = null;
    Token char_literal2 = null;

    Object lc_tree=null;
    Object ID1_tree=null;
    Object char_literal2_tree=null;
    RewriteRuleTokenStream stream_10=new RewriteRuleTokenStream(this._adaptor,"token 10");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_11=new RewriteRuleTokenStream(this._adaptor,"token 11");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
       5:3: (lc= '{' ( ID )+ '}' -> ^( BLOCK[$lc] ( ID )+ ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
       5:5: lc= '{' ( ID )+ '}'*/
      {
      	lc = this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_a28); 
      	 
      	stream_10.add(lc);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
      	 5:12: ( ID )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 5/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
      			   5:12: ID*/
      			  {
      			  	ID1 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a30); 
      			  	 
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


      	char_literal2 = this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_a33); 
      	 
      	stream_11.add(char_literal2);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:20: -> ^( BLOCK[$lc] ( ID )+ )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
      	     5:23: ^( BLOCK[$lc] ( ID )+ )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(BLOCK, lc)
      	    	, root_1);

      	    	if(!(stream_ID.hasNext())) {
      	    	    throw new RewriteEarlyExitException();
      	    	}
      	    	while ( stream_ID.hasNext()) {
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_ID.nextNode()
      	    	    );

      	    	}
      	    	stream_ID.reset();

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
  // $ANTLR end "a"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
   6:1: type : ( 'int' | 'float' );*/
  t058rewriteAST32Parser_type_return type() {
    t058rewriteAST32Parser_type_return retval = new t058rewriteAST32Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set3 = null;

    Object set3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
       6:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST32.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set3 = this.input.LT(1);

      	if((this.input.LA(1) >= 8 && this.input.LA(1) <= 9)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set3));
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
  // $ANTLR end "type"



 

  static BitSet _FOLLOW_10_in_a28 = null;
  static BitSet get FOLLOW_10_in_a28() {
    if(_FOLLOW_10_in_a28 == null) 
      _FOLLOW_10_in_a28 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_10_in_a28;
  }

  static BitSet _FOLLOW_ID_in_a30 = null;
  static BitSet get FOLLOW_ID_in_a30() {
    if(_FOLLOW_ID_in_a30 == null) 
      _FOLLOW_ID_in_a30 = 
        new BitSet.fromList([0x0000000000000820]);
    return _FOLLOW_ID_in_a30;
  }

  static BitSet _FOLLOW_11_in_a33 = null;
  static BitSet get FOLLOW_11_in_a33() {
    if(_FOLLOW_11_in_a33 == null) 
      _FOLLOW_11_in_a33 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_a33;
  }



 }




class t058rewriteAST32Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST32Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t058rewriteAST37Parser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST37Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "INT", "WS", 
    "';'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST37Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST37Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST37Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST37.g";

  String getRecognizerClassName() => "t058rewriteAST37Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
   5:1: a : b b ;*/
  t058rewriteAST37Parser_a_return a() {
    t058rewriteAST37Parser_a_return retval = new t058rewriteAST37Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST37Parser_b_return b1 =null;

    t058rewriteAST37Parser_b_return b2 =null;



    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
       5:3: ( b b )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
       5:5: b b*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_b_in_a26);
      	b1 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b1.tree);

      	this.pushFollow(FOLLOW_b_in_a28);
      	b2 = this.b();

      	this.state.fsp--;

      	this._adaptor.addChild(root_0, b2.tree);

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
   6:1: b : ( ID ( ID (last= ID -> $last)+ ) ';' | INT );*/
  t058rewriteAST37Parser_b_return b() {
    t058rewriteAST37Parser_b_return retval = new t058rewriteAST37Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token last = null;
    Token ID3 = null;
    Token ID4 = null;
    Token char_literal5 = null;
    Token INT6 = null;

    Object last_tree=null;
    Object ID3_tree=null;
    Object ID4_tree=null;
    Object char_literal5_tree=null;
    Object INT6_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST37.g: 
       6:3: ( ID ( ID (last= ID -> $last)+ ) ';' | INT )*/
      int alt2 = 2;
      int LA2_0 = this.input.LA(1);

      if((LA2_0 == 5/*ID*/)) {
        alt2 = 1;
      }
      else if((LA2_0 == 6/*INT*/)) {
        alt2 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 2, 0, this.input);

        throw nvae;

      }
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
           6:5: ID ( ID (last= ID -> $last)+ ) ';'*/
          {
          	ID3 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b36); 
          	 
          	stream_ID.add(ID3);


          	/* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
          	 6:8: ( ID (last= ID -> $last)+ )*/
          	/* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
          	 6:10: ID (last= ID -> $last)+*/
          	{
          		ID4 = this.matchSymbol(this.input,
          		    ID,FOLLOW_ID_in_b40); 
          		 
          		stream_ID.add(ID4);


          		/* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
          		 6:13: (last= ID -> $last)+*/
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
          				  /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
          				   6:14: last= ID*/
          				  {
          				  	last = this.matchSymbol(this.input,
          				  	    ID,FOLLOW_ID_in_b45); 
          				  	 
          				  	stream_ID.add(last);


          				  	// AST REWRITE
          				  	// elements: last
          				  	// token labels: last
          				  	// rule labels: retval
          				  	// token list labels: 
          				  	// rule list labels: 
          				  	// wildcard labels: 
          				  	retval.tree = root_0;
          				  	RewriteRuleTokenStream stream_last = new RewriteRuleTokenStream(this._adaptor,"token last",last);
          				  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

          				  	root_0 = this._adaptor.nil();
          				  	/* 6:22: -> $last*/
          				  	{
          				  	    this._adaptor.addChild(root_0, stream_last.nextNode());

          				  	}


          				  	retval.tree = root_0;

          				  }
          				  break;

          				default :
          			    if(cnt1 >= 1) break loop1;
          		        EarlyExitException eee = new EarlyExitException(1, this.input);
          		        throw eee;
          		  }
          		  cnt1++;
          		} while(true);


          	}


          	char_literal5 = this.matchSymbol(this.input,
          	    8,FOLLOW_8_in_b56); 
          	 
          	stream_8.add(char_literal5);


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t058rewriteAST37.g:
           7:5: INT*/
          {
          	root_0 = this._adaptor.nil();


          	INT6 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_b63); 

          	INT6_tree = this._adaptor.createTreeNode(INT6);
          	this._adaptor.addChild(root_0, INT6_tree);


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

  static BitSet _FOLLOW_ID_in_b36 = null;
  static BitSet get FOLLOW_ID_in_b36() {
    if(_FOLLOW_ID_in_b36 == null) 
      _FOLLOW_ID_in_b36 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b36;
  }

  static BitSet _FOLLOW_ID_in_b40 = null;
  static BitSet get FOLLOW_ID_in_b40() {
    if(_FOLLOW_ID_in_b40 == null) 
      _FOLLOW_ID_in_b40 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b40;
  }

  static BitSet _FOLLOW_ID_in_b45 = null;
  static BitSet get FOLLOW_ID_in_b45() {
    if(_FOLLOW_ID_in_b45 == null) 
      _FOLLOW_ID_in_b45 = 
        new BitSet.fromList([0x0000000000000120]);
    return _FOLLOW_ID_in_b45;
  }

  static BitSet _FOLLOW_8_in_b56 = null;
  static BitSet get FOLLOW_8_in_b56() {
    if(_FOLLOW_8_in_b56 == null) 
      _FOLLOW_8_in_b56 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_b56;
  }

  static BitSet _FOLLOW_INT_in_b63 = null;
  static BitSet get FOLLOW_INT_in_b63() {
    if(_FOLLOW_INT_in_b63 == null) 
      _FOLLOW_INT_in_b63 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b63;
  }



 }




class t058rewriteAST37Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST37Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

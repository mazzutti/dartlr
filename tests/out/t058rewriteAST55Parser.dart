// $ANTLR 3.4 t058rewriteAST55Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST55Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "B", "BLOCK", "C", "D", 
    "WS", "'float'", "'int'"
  ];

  static final int EOF = -1;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int A = 4;
  static final int B = 5;
  static final int BLOCK = 6;
  static final int C = 7;
  static final int D = 8;
  static final int WS = 9;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST55Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST55Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST55Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST55.g";

  String getRecognizerClassName() => "t058rewriteAST55Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
   5:1: a : A A b= B B b= B c+= C C c+= C D -> ( A )+ ( B )+ ( C )+ D ;*/
  t058rewriteAST55Parser_a_return a() {
    t058rewriteAST55Parser_a_return retval = new t058rewriteAST55Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token b = null;
    Token A1 = null;
    Token A2 = null;
    Token B3 = null;
    Token C4 = null;
    Token D5 = null;
    Token c = null;
    List list_c = null;

    Object b_tree=null;
    Object A1_tree=null;
    Object A2_tree=null;
    Object B3_tree=null;
    Object C4_tree=null;
    Object D5_tree=null;
    Object c_tree=null;
    RewriteRuleTokenStream stream_D=new RewriteRuleTokenStream(this._adaptor,"token D");
    RewriteRuleTokenStream stream_A=new RewriteRuleTokenStream(this._adaptor,"token A");
    RewriteRuleTokenStream stream_B=new RewriteRuleTokenStream(this._adaptor,"token B");
    RewriteRuleTokenStream stream_C=new RewriteRuleTokenStream(this._adaptor,"token C");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
       5:3: ( A A b= B B b= B c+= C C c+= C D -> ( A )+ ( B )+ ( C )+ D )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
       5:5: A A b= B B b= B c+= C C c+= C D*/
      {
      	A1 = this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a26); 
      	 
      	stream_A.add(A1);


      	A2 = this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a28); 
      	 
      	stream_A.add(A2);


      	b = this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a32); 
      	 
      	stream_B.add(b);


      	B3 = this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a34); 
      	 
      	stream_B.add(B3);


      	b = this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a38); 
      	 
      	stream_B.add(b);


      	c = this.matchSymbol(this.input,
      	    C,FOLLOW_C_in_a42); 
      	 
      	stream_C.add(c);

      	if(list_c == null) 
      	  list_c = new List();
      	list_c.add(c);


      	C4 = this.matchSymbol(this.input,
      	    C,FOLLOW_C_in_a44); 
      	 
      	stream_C.add(C4);


      	c = this.matchSymbol(this.input,
      	    C,FOLLOW_C_in_a48); 
      	 
      	stream_C.add(c);

      	if(list_c == null) 
      	  list_c = new List();
      	list_c.add(c);


      	D5 = this.matchSymbol(this.input,
      	    D,FOLLOW_D_in_a50); 
      	 
      	stream_D.add(D5);


      	String s=(D5 != null) ? D5.text : null;


      	// AST REWRITE
      	// elements: D, C, A, B
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:53: -> ( A )+ ( B )+ ( C )+ D*/
      	{
      	    if(!(stream_A.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_A.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_A.nextNode()
      	        );

      	    }
      	    stream_A.reset();

      	    if(!(stream_B.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_B.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_B.nextNode()
      	        );

      	    }
      	    stream_B.reset();

      	    if(!(stream_C.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_C.hasNext()) {
      	        this._adaptor.addChild(root_0, 
      	        stream_C.nextNode()
      	        );

      	    }
      	    stream_C.reset();

      	    this._adaptor.addChild(root_0, 
      	    stream_D.nextNode()
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


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
   6:1: type : ( 'int' | 'float' );*/
  t058rewriteAST55Parser_type_return type() {
    t058rewriteAST55Parser_type_return retval = new t058rewriteAST55Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set6 = null;

    Object set6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
       6:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST55.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set6 = this.input.LT(1);

      	if((this.input.LA(1) >= 10 && this.input.LA(1) <= 11)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set6));
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



 

  static BitSet _FOLLOW_A_in_a26 = null;
  static BitSet get FOLLOW_A_in_a26() {
    if(_FOLLOW_A_in_a26 == null) 
      _FOLLOW_A_in_a26 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_A_in_a26;
  }

  static BitSet _FOLLOW_A_in_a28 = null;
  static BitSet get FOLLOW_A_in_a28() {
    if(_FOLLOW_A_in_a28 == null) 
      _FOLLOW_A_in_a28 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_A_in_a28;
  }

  static BitSet _FOLLOW_B_in_a32 = null;
  static BitSet get FOLLOW_B_in_a32() {
    if(_FOLLOW_B_in_a32 == null) 
      _FOLLOW_B_in_a32 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_B_in_a32;
  }

  static BitSet _FOLLOW_B_in_a34 = null;
  static BitSet get FOLLOW_B_in_a34() {
    if(_FOLLOW_B_in_a34 == null) 
      _FOLLOW_B_in_a34 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_B_in_a34;
  }

  static BitSet _FOLLOW_B_in_a38 = null;
  static BitSet get FOLLOW_B_in_a38() {
    if(_FOLLOW_B_in_a38 == null) 
      _FOLLOW_B_in_a38 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_B_in_a38;
  }

  static BitSet _FOLLOW_C_in_a42 = null;
  static BitSet get FOLLOW_C_in_a42() {
    if(_FOLLOW_C_in_a42 == null) 
      _FOLLOW_C_in_a42 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_C_in_a42;
  }

  static BitSet _FOLLOW_C_in_a44 = null;
  static BitSet get FOLLOW_C_in_a44() {
    if(_FOLLOW_C_in_a44 == null) 
      _FOLLOW_C_in_a44 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_C_in_a44;
  }

  static BitSet _FOLLOW_C_in_a48 = null;
  static BitSet get FOLLOW_C_in_a48() {
    if(_FOLLOW_C_in_a48 == null) 
      _FOLLOW_C_in_a48 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_C_in_a48;
  }

  static BitSet _FOLLOW_D_in_a50 = null;
  static BitSet get FOLLOW_D_in_a50() {
    if(_FOLLOW_D_in_a50 == null) 
      _FOLLOW_D_in_a50 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_D_in_a50;
  }



 }




class t058rewriteAST55Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST55Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

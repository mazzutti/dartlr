// $ANTLR 3.4 t058rewriteAST40Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST40Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "BLOCK", "ID", "INT", "WS", 
    "'+'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int BLOCK = 4;
  static final int ID = 5;
  static final int INT = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST40Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST40Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST40Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST40.g";

  String getRecognizerClassName() => "t058rewriteAST40Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
   5:1: a : ( atom -> atom ) (op= '+' r= atom -> ^( $op $a $r) )* ;*/
  t058rewriteAST40Parser_a_return a() {
    t058rewriteAST40Parser_a_return retval = new t058rewriteAST40Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token op = null;
    t058rewriteAST40Parser_atom_return r =null;

    t058rewriteAST40Parser_atom_return atom1 =null;


    Object op_tree=null;
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");
    RewriteRuleSubtreeStream stream_atom=new RewriteRuleSubtreeStream(this._adaptor,"rule atom");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
       5:3: ( ( atom -> atom ) (op= '+' r= atom -> ^( $op $a $r) )* )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
       5:5: ( atom -> atom ) (op= '+' r= atom -> ^( $op $a $r) )**/
      {
      	/* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
      	 5:5: ( atom -> atom )*/
      	/* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
      	 5:6: atom*/
      	{
      		this.pushFollow(FOLLOW_atom_in_a27);
      		atom1 = this.atom();

      		this.state.fsp--;

      		stream_atom.add(atom1.tree);

      		// AST REWRITE
      		// elements: atom
      		// token labels: 
      		// rule labels: retval
      		// token list labels: 
      		// rule list labels: 
      		// wildcard labels: 
      		retval.tree = root_0;
      		RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      		root_0 = this._adaptor.nil();
      		/* 5:11: -> atom*/
      		{
      		    this._adaptor.addChild(root_0, stream_atom.nextTree());

      		}


      		retval.tree = root_0;

      	}


      	/* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
      	 5:20: (op= '+' r= atom -> ^( $op $a $r) )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 8/*8*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
      			   5:21: op= '+' r= atom*/
      			  {
      			  	op = this.matchSymbol(this.input,
      			  	    8,FOLLOW_8_in_a37); 
      			  	 
      			  	stream_8.add(op);


      			  	this.pushFollow(FOLLOW_atom_in_a41);
      			  	r = this.atom();

      			  	this.state.fsp--;

      			  	stream_atom.add(r.tree);

      			  	// AST REWRITE
      			  	// elements: r, op, a
      			  	// token labels: op
      			  	// rule labels: retval, r
      			  	// token list labels: 
      			  	// rule list labels: 
      			  	// wildcard labels: 
      			  	retval.tree = root_0;
      			  	RewriteRuleTokenStream stream_op = new RewriteRuleTokenStream(this._adaptor,"token op",op);
      			  	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);
      			  	RewriteRuleSubtreeStream stream_r = new RewriteRuleSubtreeStream(this._adaptor,"rule r",r!=null?r.tree:null);

      			  	root_0 = this._adaptor.nil();
      			  	/* 5:35: -> ^( $op $a $r)*/
      			  	{
      			  	    /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
      			  	     5:38: ^( $op $a $r)*/
      			  	    {
      			  	    	Object root_1 = this._adaptor.nil();
      			  	    	root_1 = this._adaptor.becomeRoot(stream_op.nextNode(), root_1);

      			  	    	this._adaptor.addChild(root_1, stream_retval.nextTree());

      			  	    	this._adaptor.addChild(root_1, stream_r.nextTree());

      			  	    	this._adaptor.addChild(root_0, root_1);
      			  	    }

      			  	}


      			  	retval.tree = root_0;

      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
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
  // $ANTLR end "a"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
   6:1: atom : INT ;*/
  t058rewriteAST40Parser_atom_return atom() {
    t058rewriteAST40Parser_atom_return retval = new t058rewriteAST40Parser_atom_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT2 = null;

    Object INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
       6:6: ( INT )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST40.g:
       6:8: INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_atom65); 

      	INT2_tree = this._adaptor.createTreeNode(INT2);
      	this._adaptor.addChild(root_0, INT2_tree);


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
  // $ANTLR end "atom"



 

  static BitSet _FOLLOW_atom_in_a27 = null;
  static BitSet get FOLLOW_atom_in_a27() {
    if(_FOLLOW_atom_in_a27 == null) 
      _FOLLOW_atom_in_a27 = 
        new BitSet.fromList([0x0000000000000102]);
    return _FOLLOW_atom_in_a27;
  }

  static BitSet _FOLLOW_8_in_a37 = null;
  static BitSet get FOLLOW_8_in_a37() {
    if(_FOLLOW_8_in_a37 == null) 
      _FOLLOW_8_in_a37 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_8_in_a37;
  }

  static BitSet _FOLLOW_atom_in_a41 = null;
  static BitSet get FOLLOW_atom_in_a41() {
    if(_FOLLOW_atom_in_a41 == null) 
      _FOLLOW_atom_in_a41 = 
        new BitSet.fromList([0x0000000000000102]);
    return _FOLLOW_atom_in_a41;
  }

  static BitSet _FOLLOW_INT_in_atom65 = null;
  static BitSet get FOLLOW_INT_in_atom65() {
    if(_FOLLOW_INT_in_atom65 == null) 
      _FOLLOW_INT_in_atom65 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom65;
  }



 }




class t058rewriteAST40Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST40Parser_atom_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

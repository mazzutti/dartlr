// $ANTLR 3.4 t058rewriteAST41Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST41Parser extends Parser {

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


  t058rewriteAST41Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST41Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST41Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST41.g";

  String getRecognizerClassName() => "t058rewriteAST41Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
   5:1: a : atom -> ^( atom atom ) ;*/
  t058rewriteAST41Parser_a_return a() {
    t058rewriteAST41Parser_a_return retval = new t058rewriteAST41Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST41Parser_atom_return atom1 =null;


    RewriteRuleSubtreeStream stream_atom=new RewriteRuleSubtreeStream(this._adaptor,"rule atom");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
       5:3: ( atom -> ^( atom atom ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
       5:5: atom*/
      {
      	this.pushFollow(FOLLOW_atom_in_a26);
      	atom1 = this.atom();

      	this.state.fsp--;

      	stream_atom.add(atom1.tree);

      	// AST REWRITE
      	// elements: atom, atom
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:10: -> ^( atom atom )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
      	     5:13: ^( atom atom )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_atom.nextNode(), root_1);

      	    	this._adaptor.addChild(root_1, stream_atom.nextTree());

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


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
   6:1: atom : INT ;*/
  t058rewriteAST41Parser_atom_return atom() {
    t058rewriteAST41Parser_atom_return retval = new t058rewriteAST41Parser_atom_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT2 = null;

    Object INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
       6:6: ( INT )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST41.g:
       6:8: INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_atom43); 

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



 

  static BitSet _FOLLOW_atom_in_a26 = null;
  static BitSet get FOLLOW_atom_in_a26() {
    if(_FOLLOW_atom_in_a26 == null) 
      _FOLLOW_atom_in_a26 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_atom_in_a26;
  }

  static BitSet _FOLLOW_INT_in_atom43 = null;
  static BitSet get FOLLOW_INT_in_atom43() {
    if(_FOLLOW_INT_in_atom43 == null) 
      _FOLLOW_INT_in_atom43 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom43;
  }



 }




class t058rewriteAST41Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST41Parser_atom_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

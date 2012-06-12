// $ANTLR 3.4 t058rewriteAST39Parser.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST39Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST39Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST39Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST39Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST39.g";

  String getRecognizerClassName() => "t058rewriteAST39Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST39.g:
   4:1: a : atom -> atom ;*/
  t058rewriteAST39Parser_a_return a() {
    t058rewriteAST39Parser_a_return retval = new t058rewriteAST39Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    t058rewriteAST39Parser_atom_return atom1 =null;


    RewriteRuleSubtreeStream stream_atom=new RewriteRuleSubtreeStream(this._adaptor,"rule atom");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST39.g:
       4:3: ( atom -> atom )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST39.g:
       4:5: atom*/
      {
      	this.pushFollow(FOLLOW_atom_in_a21);
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
      	/* 4:10: -> atom*/
      	{
      	    this._adaptor.addChild(root_0, this._adaptor.create(INT,"9"));

      	    this._adaptor.addChild(root_0, stream_atom.nextTree());

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST39.g:
   5:1: atom : INT ;*/
  t058rewriteAST39Parser_atom_return atom() {
    t058rewriteAST39Parser_atom_return retval = new t058rewriteAST39Parser_atom_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT2 = null;

    Object INT2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST39.g:
       5:6: ( INT )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST39.g:
       5:8: INT*/
      {
      	root_0 = this._adaptor.nil();


      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_atom35); 

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



 

  static BitSet _FOLLOW_atom_in_a21 = null;
  static BitSet get FOLLOW_atom_in_a21() {
    if(_FOLLOW_atom_in_a21 == null) 
      _FOLLOW_atom_in_a21 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_atom_in_a21;
  }

  static BitSet _FOLLOW_INT_in_atom35 = null;
  static BitSet get FOLLOW_INT_in_atom35() {
    if(_FOLLOW_INT_in_atom35 == null) 
      _FOLLOW_INT_in_atom35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_atom35;
  }



 }




class t058rewriteAST39Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST39Parser_atom_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t057autoAST9Parser.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST9Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "';'", "'void'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST9Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST9Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST9Parser._tokenNames;

  String get grammarFileName() => "t057autoAST9.g";

  String getRecognizerClassName() => "t057autoAST9Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST9.g:
   3:1: a : v= 'void' . ^ ';' ;*/
  t057autoAST9Parser_a_return a() {
    t057autoAST9Parser_a_return retval = new t057autoAST9Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token v = null;
    Token wildcard1 = null;
    Token char_literal2 = null;

    Object v_tree=null;
    Object wildcard1_tree=null;
    Object char_literal2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST9.g:
       3:3: (v= 'void' . ^ ';' )*/
      /* ../runtime/dart/tests/grammars/t057autoAST9.g:
       3:5: v= 'void' . ^ ';'*/
      {
      	root_0 = this._adaptor.nil();


      	v = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_a22); 

      	v_tree = this._adaptor.createTreeNode(v);
      	this._adaptor.addChild(root_0, v_tree);


      	wildcard1 = this.input.LT(1);

      	this.matchAny(this.input); 

      	  wildcard1_tree = this._adaptor.createTreeNode(wildcard1);
      	  root_0 = this._adaptor.becomeRoot(wildcard1_tree, root_0);


      	char_literal2 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a27); 

      	char_literal2_tree = this._adaptor.createTreeNode(char_literal2);
      	this._adaptor.addChild(root_0, char_literal2_tree);


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



 

  static BitSet _FOLLOW_8_in_a22 = null;
  static BitSet get FOLLOW_8_in_a22() {
    if(_FOLLOW_8_in_a22 == null) 
      _FOLLOW_8_in_a22 = 
        new BitSet.fromList([0x00000000000001F0]);
    return _FOLLOW_8_in_a22;
  }

  static BitSet _FOLLOW_7_in_a27 = null;
  static BitSet get FOLLOW_7_in_a27() {
    if(_FOLLOW_7_in_a27 == null) 
      _FOLLOW_7_in_a27 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a27;
  }



 }




class t057autoAST9Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

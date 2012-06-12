// $ANTLR 3.4 t053heteroT6Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("v_common_tree.dart");

class t053heteroT6Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS", "'begin'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroT6Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroT6Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroT6Parser._tokenNames;

  String get grammarFileName() => "t053heteroT6.g";

  String getRecognizerClassName() => "t053heteroT6Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroT6.g:
   9:1: a : 'begin' ;*/
  t053heteroT6Parser_a_return a() {
    t053heteroT6Parser_a_return retval = new t053heteroT6Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;

    Object string_literal1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t053heteroT6.g:
       9:3: ( 'begin' )*/
      /* ../runtime/dart/tests/grammars/t053heteroT6.g:
       9:5: 'begin'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal1 = this.matchSymbol(this.input,
      	    6,FOLLOW_6_in_a36); 

      	string_literal1_tree = new V(string_literal1) ;
      	this._adaptor.addChild(root_0, string_literal1_tree);


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



 

  static BitSet _FOLLOW_6_in_a36 = null;
  static BitSet get FOLLOW_6_in_a36() {
    if(_FOLLOW_6_in_a36 == null) 
      _FOLLOW_6_in_a36 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_6_in_a36;
  }



 }




class t053heteroT6Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

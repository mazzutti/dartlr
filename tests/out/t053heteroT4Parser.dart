// $ANTLR 3.4 t053heteroT4Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("v_common_tree.dart");

class t053heteroT4Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroT4Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroT4Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t053heteroT4Parser._tokenNames;

  String get grammarFileName() => "t053heteroT4.g";

  String getRecognizerClassName() => "t053heteroT4Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t053heteroT4.g:
   9:1: a : ID ^;*/
  t053heteroT4Parser_a_return a() {
    t053heteroT4Parser_a_return retval = new t053heteroT4Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t053heteroT4.g:
       9:3: ( ID ^)*/
      /* ../runtime/dart/tests/grammars/t053heteroT4.g:
       9:5: ID ^*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a36); 

      	ID1_tree = new V(ID1) ;
      	root_0 = this._adaptor.becomeRoot(ID1_tree, root_0);


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



 

  static BitSet _FOLLOW_ID_in_a36 = null;
  static BitSet get FOLLOW_ID_in_a36() {
    if(_FOLLOW_ID_in_a36 == null) 
      _FOLLOW_ID_in_a36 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a36;
  }



 }




class t053heteroT4Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

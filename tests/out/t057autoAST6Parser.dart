// $ANTLR 3.4 t057autoAST6Parser.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST6Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST6Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST6Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST6Parser._tokenNames;

  String get grammarFileName() => "t057autoAST6.g";

  String getRecognizerClassName() => "t057autoAST6Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST6.g:
   3:1: a : ( ID INT )? ID ^;*/
  t057autoAST6Parser_a_return a() {
    t057autoAST6Parser_a_return retval = new t057autoAST6Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;
    Token ID3 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    Object ID3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST6.g:
       3:3: ( ( ID INT )? ID ^)*/
      /* ../runtime/dart/tests/grammars/t057autoAST6.g:
       3:5: ( ID INT )? ID ^*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t057autoAST6.g:
      	 3:5: ( ID INT )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 4/*ID*/)) {
      	  int LA1_1 = this.input.LA(2);

      	  if((LA1_1 == 5/*INT*/)) {
      	    alt1 = 1;
      	  }
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t057autoAST6.g:
      	     3:7: ID INT*/
      	    {
      	    	ID1 = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_a22); 

      	    	ID1_tree = this._adaptor.createTreeNode(ID1);
      	    	this._adaptor.addChild(root_0, ID1_tree);


      	    	INT2 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_a24); 

      	    	INT2_tree = this._adaptor.createTreeNode(INT2);
      	    	this._adaptor.addChild(root_0, INT2_tree);


      	    }
      	    break;

      	}


      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a29); 

      	ID3_tree = this._adaptor.createTreeNode(ID3);
      	root_0 = this._adaptor.becomeRoot(ID3_tree, root_0);


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



 

  static BitSet _FOLLOW_ID_in_a22 = null;
  static BitSet get FOLLOW_ID_in_a22() {
    if(_FOLLOW_ID_in_a22 == null) 
      _FOLLOW_ID_in_a22 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a22;
  }

  static BitSet _FOLLOW_INT_in_a24 = null;
  static BitSet get FOLLOW_INT_in_a24() {
    if(_FOLLOW_INT_in_a24 == null) 
      _FOLLOW_INT_in_a24 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_INT_in_a24;
  }

  static BitSet _FOLLOW_ID_in_a29 = null;
  static BitSet get FOLLOW_ID_in_a29() {
    if(_FOLLOW_ID_in_a29 == null) 
      _FOLLOW_ID_in_a29 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a29;
  }



 }




class t057autoAST6Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

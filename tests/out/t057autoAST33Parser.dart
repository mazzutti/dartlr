// $ANTLR 3.4 t057autoAST33Parser.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST33Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST33Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST33Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST33Parser._tokenNames;

  String get grammarFileName() => "t057autoAST33.g";

  String getRecognizerClassName() => "t057autoAST33Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST33.g:
   3:1: a : INT (~ INT ^ INT )* ;*/
  t057autoAST33Parser_a_return a() {
    t057autoAST33Parser_a_return retval = new t057autoAST33Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token INT1 = null;
    Token set2 = null;
    Token INT3 = null;

    Object INT1_tree=null;
    Object set2_tree=null;
    Object INT3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST33.g:
       3:3: ( INT (~ INT ^ INT )* )*/
      /* ../runtime/dart/tests/grammars/t057autoAST33.g:
       3:5: INT (~ INT ^ INT )**/
      {
      	root_0 = this._adaptor.nil();


      	INT1 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a20); 

      	INT1_tree = this._adaptor.createTreeNode(INT1);
      	this._adaptor.addChild(root_0, INT1_tree);


      	/* ../runtime/dart/tests/grammars/t057autoAST33.g:
      	 3:9: (~ INT ^ INT )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/
      	    || (LA1_0 >= WS && LA1_0 <= 7))) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t057autoAST33.g:
      			   3:10: ~ INT ^ INT*/
      			  {
      			  	set2=input.LT(1);

      			  	set2 = this.input.LT(1);

      			  	if(this.input.LA(1) == ID
      			  	  || (this.input.LA(1) >= WS && this.input.LA(1) <= 7)) {
      			  	  this.input.consume();
      			  	  root_0 = this._adaptor.becomeRoot(this._adaptor.createTreeNode(set2), root_0);
      			  	  this.state.errorRecovery = false;
      			  	}
      			  	else {
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  throw mse;
      			  	}


      			  	INT3 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_a27); 

      			  	INT3_tree = this._adaptor.createTreeNode(INT3);
      			  	this._adaptor.addChild(root_0, INT3_tree);


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


  // $ANTLR start "blort"
  /* ../runtime/dart/tests/grammars/t057autoAST33.g:
   4:1: blort : '+' ;*/
  t057autoAST33Parser_blort_return blort() {
    t057autoAST33Parser_blort_return retval = new t057autoAST33Parser_blort_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token char_literal4 = null;

    Object char_literal4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST33.g:
       4:7: ( '+' )*/
      /* ../runtime/dart/tests/grammars/t057autoAST33.g:
       4:9: '+'*/
      {
      	root_0 = this._adaptor.nil();


      	char_literal4 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_blort37); 

      	char_literal4_tree = this._adaptor.createTreeNode(char_literal4);
      	this._adaptor.addChild(root_0, char_literal4_tree);


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
  // $ANTLR end "blort"



 

  static BitSet _FOLLOW_INT_in_a20 = null;
  static BitSet get FOLLOW_INT_in_a20() {
    if(_FOLLOW_INT_in_a20 == null) 
      _FOLLOW_INT_in_a20 = 
        new BitSet.fromList([0x00000000000000D2]);
    return _FOLLOW_INT_in_a20;
  }

  static BitSet _FOLLOW_set_in_a23 = null;
  static BitSet get FOLLOW_set_in_a23() {
    if(_FOLLOW_set_in_a23 == null) 
      _FOLLOW_set_in_a23 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_set_in_a23;
  }

  static BitSet _FOLLOW_INT_in_a27 = null;
  static BitSet get FOLLOW_INT_in_a27() {
    if(_FOLLOW_INT_in_a27 == null) 
      _FOLLOW_INT_in_a27 = 
        new BitSet.fromList([0x00000000000000D2]);
    return _FOLLOW_INT_in_a27;
  }

  static BitSet _FOLLOW_7_in_blort37 = null;
  static BitSet get FOLLOW_7_in_blort37() {
    if(_FOLLOW_7_in_blort37 == null) 
      _FOLLOW_7_in_blort37 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_blort37;
  }



 }




class t057autoAST33Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST33Parser_blort_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t057autoAST23Parser.g 2012-06-07 21:59:34
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST23Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST23Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST23Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST23Parser._tokenNames;

  String get grammarFileName() => "t057autoAST23.g";

  String getRecognizerClassName() => "t057autoAST23Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST23.g:
   3:1: a : ( ID | INT );*/
  t057autoAST23Parser_a_return a() {
    t057autoAST23Parser_a_return retval = new t057autoAST23Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set1 = null;

    Object set1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST23.g:
       3:3: ( ID | INT )*/
      /* ../runtime/dart/tests/grammars/t057autoAST23.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set1 = this.input.LT(1);

      	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set1));
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
  // $ANTLR end "a"



 


 }




class t057autoAST23Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

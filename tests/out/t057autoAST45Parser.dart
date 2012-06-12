// $ANTLR 3.4 t057autoAST45Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST45Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST45Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST45Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST45Parser._tokenNames;

  String get grammarFileName() => "t057autoAST45.g";

  String getRecognizerClassName() => "t057autoAST45Parser";


  // $ANTLR start "r"
  /* ../runtime/dart/tests/grammars/t057autoAST45.g:
   3:1: r : ( INT | ID )+ ;*/
  t057autoAST45Parser_r_return r() {
    t057autoAST45Parser_r_return retval = new t057autoAST45Parser_r_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set1 = null;

    Object set1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST45.g:
       3:3: ( ( INT | ID )+ )*/
      /* ../runtime/dart/tests/grammars/t057autoAST45.g:
       3:5: ( INT | ID )+*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t057autoAST45.g:
      	 3:5: ( INT | ID )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if(((LA1_0 >= ID && LA1_0 <= INT))) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t057autoAST45.g:
      			  */
      			  {
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
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
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
  // $ANTLR end "r"



 


 }




class t057autoAST45Parser_r_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

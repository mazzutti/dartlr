// $ANTLR 3.4 t057autoAST39Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST39Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST39Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST39Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST39Parser._tokenNames;

  String get grammarFileName() => "t057autoAST39.g";

  String getRecognizerClassName() => "t057autoAST39Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST39.g:
   3:1: a :id+= ID !;*/
  t057autoAST39Parser_a_return a() {
    t057autoAST39Parser_a_return retval = new t057autoAST39Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token id = null;
    List list_id = null;

    Object id_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST39.g:
       3:3: (id+= ID !)*/
      /* ../runtime/dart/tests/grammars/t057autoAST39.g:
       3:5: id+= ID !*/
      {
      	root_0 = this._adaptor.nil();


      	id = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a22); 

      	if(list_id == null) 
      	  list_id = new List();
      	list_id.add(id);


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
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a22;
  }



 }




class t057autoAST39Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

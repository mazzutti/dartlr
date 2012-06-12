// $ANTLR 3.4 t057autoAST41Parser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST41Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST41Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST41Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST41Parser._tokenNames;

  String get grammarFileName() => "t057autoAST41.g";

  String getRecognizerClassName() => "t057autoAST41Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST41.g:
   3:1: a returns [String result] : (x+= b ^)+ ;*/
  t057autoAST41Parser_a_return a() {
    t057autoAST41Parser_a_return retval = new t057autoAST41Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    List list_x = null;
    RuleReturnScope x = null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST41.g:
       3:27: ( (x+= b ^)+ )*/
      /* ../runtime/dart/tests/grammars/t057autoAST41.g:
       3:29: (x+= b ^)+*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t057autoAST41.g:
      	 3:29: (x+= b ^)+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t057autoAST41.g:
      			   3:31: x+= b ^*/
      			  {
      			  	this.pushFollow(FOLLOW_b_in_a28);
      			  	x = this.b();

      			  	this.state.fsp--;

      			  	root_0 = this._adaptor.becomeRoot(x.tree, root_0);
      			  	if(list_x == null) 
      			  	  list_x = new List();
      			  	list_x.add(x.tree);


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);



      	retval.result =  "x=${list_x[1].toStringTree()},";



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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t057autoAST41.g:
   6:1: b : ID ;*/
  t057autoAST41Parser_b_return b() {
    t057autoAST41Parser_b_return retval = new t057autoAST41Parser_b_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST41.g:
       6:3: ( ID )*/
      /* ../runtime/dart/tests/grammars/t057autoAST41.g:
       6:5: ID*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_b42); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


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
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a28 = null;
  static BitSet get FOLLOW_b_in_a28() {
    if(_FOLLOW_b_in_a28 == null) 
      _FOLLOW_b_in_a28 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_b_in_a28;
  }

  static BitSet _FOLLOW_ID_in_b42 = null;
  static BitSet get FOLLOW_ID_in_b42() {
    if(_FOLLOW_ID_in_b42 == null) 
      _FOLLOW_ID_in_b42 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b42;
  }



 }




class t057autoAST41Parser_a_return extends ParserRuleReturnScope {
  String result;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST41Parser_b_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

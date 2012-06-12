// $ANTLR 3.4 t057autoAST25Parser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST25Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'+'", "'-'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST25Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST25Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST25Parser._tokenNames;

  String get grammarFileName() => "t057autoAST25.g";

  String getRecognizerClassName() => "t057autoAST25Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST25.g:
   3:1: a : x= ( ( '+' | '-' ) ^ ID ) ;*/
  t057autoAST25Parser_a_return a() {
    t057autoAST25Parser_a_return retval = new t057autoAST25Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token x = null;
    Token set1 = null;
    Token ID2 = null;

    Object x_tree=null;
    Object set1_tree=null;
    Object ID2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST25.g:
       3:3: (x= ( ( '+' | '-' ) ^ ID ) )*/
      /* ../runtime/dart/tests/grammars/t057autoAST25.g:
       3:5: x= ( ( '+' | '-' ) ^ ID )*/
      {
      	root_0 = this._adaptor.nil();


      	/* ../runtime/dart/tests/grammars/t057autoAST25.g:
      	 3:7: ( ( '+' | '-' ) ^ ID )*/
      	/* ../runtime/dart/tests/grammars/t057autoAST25.g:
      	 3:8: ( '+' | '-' ) ^ ID*/
      	{
      		set1=input.LT(1);

      		set1 = this.input.LT(1);

      		if((this.input.LA(1) >= 7 && this.input.LA(1) <= 8)) {
      		  this.input.consume();
      		  root_0 = this._adaptor.becomeRoot(this._adaptor.createTreeNode(set1), root_0);
      		  this.state.errorRecovery = false;
      		}
      		else {
      		  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      		  throw mse;
      		}


      		ID2 = this.matchSymbol(this.input,
      		    ID,FOLLOW_ID_in_a32); 

      		ID2_tree = this._adaptor.createTreeNode(ID2);
      		this._adaptor.addChild(root_0, ID2_tree);


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



 

  static BitSet _FOLLOW_set_in_a23 = null;
  static BitSet get FOLLOW_set_in_a23() {
    if(_FOLLOW_set_in_a23 == null) 
      _FOLLOW_set_in_a23 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_set_in_a23;
  }

  static BitSet _FOLLOW_ID_in_a32 = null;
  static BitSet get FOLLOW_ID_in_a32() {
    if(_FOLLOW_ID_in_a32 == null) 
      _FOLLOW_ID_in_a32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a32;
  }



 }




class t057autoAST25Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

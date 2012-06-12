// $ANTLR 3.4 t057autoAST19Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST19Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'float'", 
    "'int'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST19Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST19Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST19Parser._tokenNames;

  String get grammarFileName() => "t057autoAST19.g";

  String getRecognizerClassName() => "t057autoAST19Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST19.g:
   3:1: a :x+= type ^ ID ;*/
  t057autoAST19Parser_a_return a() {
    t057autoAST19Parser_a_return retval = new t057autoAST19Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    List list_x = null;
    RuleReturnScope x = null;
    Object ID1_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST19.g:
       3:4: (x+= type ^ ID )*/
      /* ../runtime/dart/tests/grammars/t057autoAST19.g:
       3:6: x+= type ^ ID*/
      {
      	root_0 = this._adaptor.nil();


      	this.pushFollow(FOLLOW_type_in_a23);
      	x = this.type();

      	this.state.fsp--;

      	root_0 = this._adaptor.becomeRoot(x.tree, root_0);
      	if(list_x == null) 
      	  list_x = new List();
      	list_x.add(x.tree);


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a26); 

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
  // $ANTLR end "a"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t057autoAST19.g:
   4:1: type : ( 'int' | 'float' );*/
  t057autoAST19Parser_type_return type() {
    t057autoAST19Parser_type_return retval = new t057autoAST19Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set2 = null;

    Object set2_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST19.g:
       4:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t057autoAST19.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set2 = this.input.LT(1);

      	if((this.input.LA(1) >= 7 && this.input.LA(1) <= 8)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set2));
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
  // $ANTLR end "type"



 

  static BitSet _FOLLOW_type_in_a23 = null;
  static BitSet get FOLLOW_type_in_a23() {
    if(_FOLLOW_type_in_a23 == null) 
      _FOLLOW_type_in_a23 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_a23;
  }

  static BitSet _FOLLOW_ID_in_a26 = null;
  static BitSet get FOLLOW_ID_in_a26() {
    if(_FOLLOW_ID_in_a26 == null) 
      _FOLLOW_ID_in_a26 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a26;
  }



 }




class t057autoAST19Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t057autoAST19Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

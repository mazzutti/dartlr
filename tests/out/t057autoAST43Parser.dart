// $ANTLR 3.4 t057autoAST43Parser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST43Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "B", "C", "D", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int D = 7;
  static final int WS = 8;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST43Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST43Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST43Parser._tokenNames;

  String get grammarFileName() => "t057autoAST43.g";

  String getRecognizerClassName() => "t057autoAST43Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST43.g:
   3:1: a : A b= B b= B c+= C c+= C D ;*/
  t057autoAST43Parser_a_return a() {
    t057autoAST43Parser_a_return retval = new t057autoAST43Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token b = null;
    Token A1 = null;
    Token D2 = null;
    Token c = null;
    List list_c = null;

    Object b_tree=null;
    Object A1_tree=null;
    Object D2_tree=null;
    Object c_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST43.g:
       3:3: ( A b= B b= B c+= C c+= C D )*/
      /* ../runtime/dart/tests/grammars/t057autoAST43.g:
       3:5: A b= B b= B c+= C c+= C D*/
      {
      	root_0 = this._adaptor.nil();


      	A1 = this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a20); 

      	A1_tree = this._adaptor.createTreeNode(A1);
      	this._adaptor.addChild(root_0, A1_tree);


      	b = this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a24); 

      	b_tree = this._adaptor.createTreeNode(b);
      	this._adaptor.addChild(root_0, b_tree);


      	b = this.matchSymbol(this.input,
      	    B,FOLLOW_B_in_a28); 

      	b_tree = this._adaptor.createTreeNode(b);
      	this._adaptor.addChild(root_0, b_tree);


      	c = this.matchSymbol(this.input,
      	    C,FOLLOW_C_in_a32); 

      	c_tree = this._adaptor.createTreeNode(c);
      	this._adaptor.addChild(root_0, c_tree);

      	if(list_c == null) 
      	  list_c = new List();
      	list_c.add(c);


      	c = this.matchSymbol(this.input,
      	    C,FOLLOW_C_in_a36); 

      	c_tree = this._adaptor.createTreeNode(c);
      	this._adaptor.addChild(root_0, c_tree);

      	if(list_c == null) 
      	  list_c = new List();
      	list_c.add(c);


      	D2 = this.matchSymbol(this.input,
      	    D,FOLLOW_D_in_a38); 

      	D2_tree = this._adaptor.createTreeNode(D2);
      	this._adaptor.addChild(root_0, D2_tree);


      	String s = (D2 != null) ? D2.text : null;


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



 

  static BitSet _FOLLOW_A_in_a20 = null;
  static BitSet get FOLLOW_A_in_a20() {
    if(_FOLLOW_A_in_a20 == null) 
      _FOLLOW_A_in_a20 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_A_in_a20;
  }

  static BitSet _FOLLOW_B_in_a24 = null;
  static BitSet get FOLLOW_B_in_a24() {
    if(_FOLLOW_B_in_a24 == null) 
      _FOLLOW_B_in_a24 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_B_in_a24;
  }

  static BitSet _FOLLOW_B_in_a28 = null;
  static BitSet get FOLLOW_B_in_a28() {
    if(_FOLLOW_B_in_a28 == null) 
      _FOLLOW_B_in_a28 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_B_in_a28;
  }

  static BitSet _FOLLOW_C_in_a32 = null;
  static BitSet get FOLLOW_C_in_a32() {
    if(_FOLLOW_C_in_a32 == null) 
      _FOLLOW_C_in_a32 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_C_in_a32;
  }

  static BitSet _FOLLOW_C_in_a36 = null;
  static BitSet get FOLLOW_C_in_a36() {
    if(_FOLLOW_C_in_a36 == null) 
      _FOLLOW_C_in_a36 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_C_in_a36;
  }

  static BitSet _FOLLOW_D_in_a38 = null;
  static BitSet get FOLLOW_D_in_a38() {
    if(_FOLLOW_D_in_a38 == null) 
      _FOLLOW_D_in_a38 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_D_in_a38;
  }



 }




class t057autoAST43Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

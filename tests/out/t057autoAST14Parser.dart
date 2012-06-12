// $ANTLR 3.4 t057autoAST14Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST14Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'*'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST14Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST14Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST14Parser._tokenNames;

  String get grammarFileName() => "t057autoAST14.g";

  String getRecognizerClassName() => "t057autoAST14Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST14.g:
   3:1: a : ID ^ ( INT '*' ^ ID )+ ;*/
  t057autoAST14Parser_a_return a() {
    t057autoAST14Parser_a_return retval = new t057autoAST14Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;
    Token char_literal3 = null;
    Token ID4 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    Object char_literal3_tree=null;
    Object ID4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST14.g:
       3:3: ( ID ^ ( INT '*' ^ ID )+ )*/
      /* ../runtime/dart/tests/grammars/t057autoAST14.g:
       3:5: ID ^ ( INT '*' ^ ID )+*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a20); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	root_0 = this._adaptor.becomeRoot(ID1_tree, root_0);


      	/* ../runtime/dart/tests/grammars/t057autoAST14.g:
      	 3:9: ( INT '*' ^ ID )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 5/*INT*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t057autoAST14.g:
      			   3:10: INT '*' ^ ID*/
      			  {
      			  	INT2 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_a24); 

      			  	INT2_tree = this._adaptor.createTreeNode(INT2);
      			  	this._adaptor.addChild(root_0, INT2_tree);


      			  	char_literal3 = this.matchSymbol(this.input,
      			  	    7,FOLLOW_7_in_a26); 

      			  	char_literal3_tree = this._adaptor.createTreeNode(char_literal3);
      			  	root_0 = this._adaptor.becomeRoot(char_literal3_tree, root_0);


      			  	ID4 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a29); 

      			  	ID4_tree = this._adaptor.createTreeNode(ID4);
      			  	this._adaptor.addChild(root_0, ID4_tree);


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
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a20 = null;
  static BitSet get FOLLOW_ID_in_a20() {
    if(_FOLLOW_ID_in_a20 == null) 
      _FOLLOW_ID_in_a20 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a20;
  }

  static BitSet _FOLLOW_INT_in_a24 = null;
  static BitSet get FOLLOW_INT_in_a24() {
    if(_FOLLOW_INT_in_a24 == null) 
      _FOLLOW_INT_in_a24 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_INT_in_a24;
  }

  static BitSet _FOLLOW_7_in_a26 = null;
  static BitSet get FOLLOW_7_in_a26() {
    if(_FOLLOW_7_in_a26 == null) 
      _FOLLOW_7_in_a26 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_a26;
  }

  static BitSet _FOLLOW_ID_in_a29 = null;
  static BitSet get FOLLOW_ID_in_a29() {
    if(_FOLLOW_ID_in_a29 == null) 
      _FOLLOW_ID_in_a29 = 
        new BitSet.fromList([0x0000000000000022]);
    return _FOLLOW_ID_in_a29;
  }



 }




class t057autoAST14Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

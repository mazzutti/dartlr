// $ANTLR 3.4 t057autoAST20Parser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST20Parser extends Parser {

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


  t057autoAST20Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST20Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST20Parser._tokenNames;

  String get grammarFileName() => "t057autoAST20.g";

  String getRecognizerClassName() => "t057autoAST20Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST20.g:
   3:1: a : ID ( '+' ^ ID )* ;*/
  t057autoAST20Parser_a_return a() {
    t057autoAST20Parser_a_return retval = new t057autoAST20Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token char_literal2 = null;
    Token ID3 = null;

    Object ID1_tree=null;
    Object char_literal2_tree=null;
    Object ID3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST20.g:
       3:3: ( ID ( '+' ^ ID )* )*/
      /* ../runtime/dart/tests/grammars/t057autoAST20.g:
       3:5: ID ( '+' ^ ID )**/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a20); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


      	/* ../runtime/dart/tests/grammars/t057autoAST20.g:
      	 3:8: ( '+' ^ ID )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 7/*7*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t057autoAST20.g:
      			   3:9: '+' ^ ID*/
      			  {
      			  	char_literal2 = this.matchSymbol(this.input,
      			  	    7,FOLLOW_7_in_a23); 

      			  	char_literal2_tree = this._adaptor.createTreeNode(char_literal2);
      			  	root_0 = this._adaptor.becomeRoot(char_literal2_tree, root_0);


      			  	ID3 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a26); 

      			  	ID3_tree = this._adaptor.createTreeNode(ID3);
      			  	this._adaptor.addChild(root_0, ID3_tree);


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



 

  static BitSet _FOLLOW_ID_in_a20 = null;
  static BitSet get FOLLOW_ID_in_a20() {
    if(_FOLLOW_ID_in_a20 == null) 
      _FOLLOW_ID_in_a20 = 
        new BitSet.fromList([0x0000000000000082]);
    return _FOLLOW_ID_in_a20;
  }

  static BitSet _FOLLOW_7_in_a23 = null;
  static BitSet get FOLLOW_7_in_a23() {
    if(_FOLLOW_7_in_a23 == null) 
      _FOLLOW_7_in_a23 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_a23;
  }

  static BitSet _FOLLOW_ID_in_a26 = null;
  static BitSet get FOLLOW_ID_in_a26() {
    if(_FOLLOW_ID_in_a26 == null) 
      _FOLLOW_ID_in_a26 = 
        new BitSet.fromList([0x0000000000000082]);
    return _FOLLOW_ID_in_a26;
  }



 }




class t057autoAST20Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

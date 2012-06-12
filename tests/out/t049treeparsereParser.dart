// $ANTLR 3.4 t049treeparsereParser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparsereParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "PERIOD", "SEMI", 
    "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int PERIOD = 6;
  static final int SEMI = 7;
  static final int WS = 8;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t049treeparsereParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t049treeparsereParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t049treeparsereParser._tokenNames;

  String get grammarFileName() => "t049treeparsere.g";

  String getRecognizerClassName() => "t049treeparsereParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparsere.g:
   6:1: a : ID ( INT )+ PERIOD ;*/
  t049treeparsereParser_a_return a() {
    t049treeparsereParser_a_return retval = new t049treeparsereParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token INT2 = null;
    Token PERIOD3 = null;

    Object ID1_tree=null;
    Object INT2_tree=null;
    Object PERIOD3_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparsere.g:
       6:3: ( ID ( INT )+ PERIOD )*/
      /* ../runtime/dart/tests/grammars/t049treeparsere.g:
       6:5: ID ( INT )+ PERIOD*/
      {
      	root_0 = this._adaptor.nil();


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a31); 

      	ID1_tree = this._adaptor.createTreeNode(ID1);
      	this._adaptor.addChild(root_0, ID1_tree);


      	/* ../runtime/dart/tests/grammars/t049treeparsere.g:
      	 6:8: ( INT )+*/
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
      			  /* ../runtime/dart/tests/grammars/t049treeparsere.g:
      			   6:8: INT*/
      			  {
      			  	INT2 = this.matchSymbol(this.input,
      			  	    INT,FOLLOW_INT_in_a33); 

      			  	INT2_tree = this._adaptor.createTreeNode(INT2);
      			  	this._adaptor.addChild(root_0, INT2_tree);


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


      	PERIOD3 = this.matchSymbol(this.input,
      	    PERIOD,FOLLOW_PERIOD_in_a36); 

      	PERIOD3_tree = this._adaptor.createTreeNode(PERIOD3);
      	this._adaptor.addChild(root_0, PERIOD3_tree);


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



 

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_INT_in_a33 = null;
  static BitSet get FOLLOW_INT_in_a33() {
    if(_FOLLOW_INT_in_a33 == null) 
      _FOLLOW_INT_in_a33 = 
        new BitSet.fromList([0x0000000000000060]);
    return _FOLLOW_INT_in_a33;
  }

  static BitSet _FOLLOW_PERIOD_in_a36 = null;
  static BitSet get FOLLOW_PERIOD_in_a36() {
    if(_FOLLOW_PERIOD_in_a36 == null) 
      _FOLLOW_PERIOD_in_a36 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_PERIOD_in_a36;
  }



 }




class t049treeparsereParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

// $ANTLR 3.4 t053heteroTPParser.g 2012-05-25 13:58:10
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

#source("vx_common_tree.dart");






class t053heteroTPParser extends Parser {

  static final List<String> _tokenNames = const [
      "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "';'", 
      "ROOT"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  static final int ROOT = 8;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t053heteroTPParser(TokenStream input) 
      : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
    this._adaptor = new CommonTreeAdaptor();
  }



  t053heteroTPParser.fromRecognizerSharedState
  (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
      

    this._adaptor = new CommonTreeAdaptor();
  }    

  void set treeAdaptor(TreeAdaptor adaptor) {
    this._adaptor = adaptor;
  }
  TreeAdaptor get treeAdaptor() => this._adaptor;
  List<String> get tokenNames() => t053heteroTPParser._tokenNames;

  String get grammarFileName() => "../runtime/dart/tests/grammars/t053heteroTP.g";


  // $ANTLR start "a"
  // ../runtime/dart/tests/grammars/t053heteroTP.g:11:1: a : ID ';' ;
  t053heteroTPParser_a_return a() {
    t053heteroTPParser_a_return retval = new t053heteroTPParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1=null;
    Token char_literal2=null;

    Object ID1_tree=null;
    Object char_literal2_tree=null;

    try {
      // ../runtime/dart/tests/grammars/t053heteroTP.g:11:3: ( ID ';' )
      // ../runtime/dart/tests/grammars/t053heteroTP.g:11:5: ID ';'
      {
      root_0 = this._adaptor.nil();


      ID1=this.matchSymbol(this.input,ID,FOLLOW_ID_in_a52); 
      ID1_tree = 
      new VX(ID1) 
      ;
      this._adaptor.addChild(root_0, ID1_tree);


      char_literal2=this.matchSymbol(this.input,7,FOLLOW_7_in_a57); 
      char_literal2_tree = 
      new VX(char_literal2) 
      ;
      this._adaptor.addChild(root_0, char_literal2_tree);


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



 

  static BitSet _FOLLOW_ID_in_a52 = null;
  static BitSet get FOLLOW_ID_in_a52() {
    if(_FOLLOW_ID_in_a52 == null) 
      _FOLLOW_ID_in_a52 = new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_a52;
  }
  static BitSet _FOLLOW_7_in_a57 = null;
  static BitSet get FOLLOW_7_in_a57() {
    if(_FOLLOW_7_in_a57 == null) 
      _FOLLOW_7_in_a57 = new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a57;
  }


 }




class t053heteroTPParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}

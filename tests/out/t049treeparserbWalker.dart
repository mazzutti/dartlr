// $ANTLR 3.4 t049treeparserbWalker.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparserbWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t049treeparserbWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t049treeparserbWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t049treeparserbWalker._tokenNames;

  String get grammarFileName() => "t049treeparserbWalker.g";

  String getRecognizerClassName() => "t049treeparserbWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserbWalker.g:
   7:1: a : ^( ID INT ) ;*/
  void a() {
    this.traceIn("a", 1);
    CommonTree ID1 = null;
    CommonTree INT2 = null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserbWalker.g:
       7:3: ( ^( ID INT ) )*/
      /* ../runtime/dart/tests/grammars/t049treeparserbWalker.g:
       7:5: ^( ID INT )*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a35); 


      	this.matchSymbol(this.input, Token.DOWN, null); 
      	INT2 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a37); 


      	this.matchSymbol(this.input, Token.UP, null); 


      	this.capture("${ID1}, ${INT2}");


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("a", 1);
  	}
  	return ;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a35 = null;
  static BitSet get FOLLOW_ID_in_a35() {
    if(_FOLLOW_ID_in_a35 == null) 
      _FOLLOW_ID_in_a35 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a35;
  }

  static BitSet _FOLLOW_INT_in_a37 = null;
  static BitSet get FOLLOW_INT_in_a37() {
    if(_FOLLOW_INT_in_a37 == null) 
      _FOLLOW_INT_in_a37 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a37;
  }



 }





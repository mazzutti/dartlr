// $ANTLR 3.4 t049treeparsercWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparsercWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t049treeparsercWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t049treeparsercWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t049treeparsercWalker._tokenNames;

  String get grammarFileName() => "t049treeparsercWalker.g";

  String getRecognizerClassName() => "t049treeparsercWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g:
   6:1: a : b b ;*/
  void a() {
    this.traceIn("a", 1);
    try {
      /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g:
       6:3: ( b b )*/
      /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g:
       6:5: b b*/
      {
      	this.pushFollow(FOLLOW_b_in_a33);
      	this.b();

      	this.state.fsp--;


      	this.pushFollow(FOLLOW_b_in_a35);
      	this.b();

      	this.state.fsp--;


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


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g:
   7:1: b : ( ID INT | ^( ID INT ) );*/
  void b() {
    this.traceIn("b", 2);
    CommonTree ID1 = null;
    CommonTree INT2 = null;
    CommonTree ID3 = null;
    CommonTree INT4 = null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g: 
       7:3: ( ID INT | ^( ID INT ) )*/
      int alt1 = 2;
      int LA1_0 = this.input.LA(1);

      if((LA1_0 == 4/*ID*/)) {
        int LA1_1 = this.input.LA(2);

        if((LA1_1 == 5/*INT*/)) {
          alt1 = 1;
        }
        else if((LA1_1 == 2/*2*/)) {
          alt1 = 2;
        }
        else {
          NoViableAltException nvae =
              new NoViableAltException("", 1, 1, this.input);

          throw nvae;

        }
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 1, 0, this.input);

        throw nvae;

      }
      switch (alt1) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g:
           7:5: ID INT*/
          {
          	ID1 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b43); 


          	INT2 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_b45); 


          	this.capture("${ID1} ${INT2}\n");


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t049treeparsercWalker.g:
           8:5: ^( ID INT )*/
          {
          	ID3 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b57); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	INT4 = this.matchSymbol(this.input,
          	    INT,FOLLOW_INT_in_b59); 


          	this.matchSymbol(this.input, Token.UP, null); 


          	this.capture("^(${ID3} ${INT4})");


          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("b", 2);
  	}
  	return ;
  }
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a33 = null;
  static BitSet get FOLLOW_b_in_a33() {
    if(_FOLLOW_b_in_a33 == null) 
      _FOLLOW_b_in_a33 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_b_in_a33;
  }

  static BitSet _FOLLOW_b_in_a35 = null;
  static BitSet get FOLLOW_b_in_a35() {
    if(_FOLLOW_b_in_a35 == null) 
      _FOLLOW_b_in_a35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a35;
  }

  static BitSet _FOLLOW_ID_in_b43 = null;
  static BitSet get FOLLOW_ID_in_b43() {
    if(_FOLLOW_ID_in_b43 == null) 
      _FOLLOW_ID_in_b43 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_b43;
  }

  static BitSet _FOLLOW_INT_in_b45 = null;
  static BitSet get FOLLOW_INT_in_b45() {
    if(_FOLLOW_INT_in_b45 == null) 
      _FOLLOW_INT_in_b45 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_b45;
  }

  static BitSet _FOLLOW_ID_in_b57 = null;
  static BitSet get FOLLOW_ID_in_b57() {
    if(_FOLLOW_ID_in_b57 == null) 
      _FOLLOW_ID_in_b57 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_b57;
  }

  static BitSet _FOLLOW_INT_in_b59 = null;
  static BitSet get FOLLOW_INT_in_b59() {
    if(_FOLLOW_INT_in_b59 == null) 
      _FOLLOW_INT_in_b59 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_b59;
  }



 }





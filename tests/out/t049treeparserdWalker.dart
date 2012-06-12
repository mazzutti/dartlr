// $ANTLR 3.4 t049treeparserdWalker.g 2012-06-07 21:59:37
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparserdWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      



  t049treeparserdWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t049treeparserdWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t049treeparserdWalker._tokenNames;

  String get grammarFileName() => "t049treeparserdWalker.g";

  String getRecognizerClassName() => "t049treeparserdWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
   6:1: a : b b ;*/
  void a() {
    this.traceIn("a", 1);
    try {
      /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
       6:3: ( b b )*/
      /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
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
  /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
   7:1: b : ( ID ( INT )+ | ^(x= ID (y= INT )+ ) );*/
  void b() {
    this.traceIn("b", 2);
    CommonTree x = null;
    CommonTree y = null;
    CommonTree ID1 = null;
    CommonTree INT2 = null;

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g: 
       7:3: ( ID ( INT )+ | ^(x= ID (y= INT )+ ) )*/
      int alt3 = 2;
      int LA3_0 = this.input.LA(1);

      if((LA3_0 == 4/*ID*/)) {
        int LA3_1 = this.input.LA(2);

        if((LA3_1 == 2/*2*/)) {
          alt3 = 2;
        }
        else if((LA3_1 == 5/*INT*/)) {
          alt3 = 1;
        }
        else {
          NoViableAltException nvae =
              new NoViableAltException("", 3, 1, this.input);

          throw nvae;

        }
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 3, 0, this.input);

        throw nvae;

      }
      switch (alt3) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
           7:5: ID ( INT )+*/
          {
          	ID1 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b43); 


          	/* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
          	 7:8: ( INT )+*/
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
          			  /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
          			   7:8: INT*/
          			  {
          			  	INT2 = this.matchSymbol(this.input,
          			  	    INT,FOLLOW_INT_in_b45); 


          			  }
          			  break;

          			default :
          		    if(cnt1 >= 1) break loop1;
          	        EarlyExitException eee = new EarlyExitException(1, this.input);
          	        throw eee;
          	  }
          	  cnt1++;
          	} while(true);


          	this.capture("${ID1} ${INT2}\n");


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
           8:5: ^(x= ID (y= INT )+ )*/
          {
          	x = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b60); 


          	this.matchSymbol(this.input, Token.DOWN, null); 
          	/* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
          	 8:12: (y= INT )+*/
          	int cnt2 = 0;
          	loop2:
          	do {
          	  int alt2 = 2;
          	  int LA2_0 = this.input.LA(1);

          	  if((LA2_0 == 5/*INT*/)) {
          	    alt2 = 1;
          	  }


          	  switch (alt2) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t049treeparserdWalker.g:
          			   8:13: y= INT*/
          			  {
          			  	y = this.matchSymbol(this.input,
          			  	    INT,FOLLOW_INT_in_b65); 


          			  }
          			  break;

          			default :
          		    if(cnt2 >= 1) break loop2;
          	        EarlyExitException eee = new EarlyExitException(2, this.input);
          	        throw eee;
          	  }
          	  cnt2++;
          	} while(true);


          	this.matchSymbol(this.input, Token.UP, null); 


          	this.capture("^(${x} ${y})");


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
        new BitSet.fromList([0x0000000000000022]);
    return _FOLLOW_INT_in_b45;
  }

  static BitSet _FOLLOW_ID_in_b60 = null;
  static BitSet get FOLLOW_ID_in_b60() {
    if(_FOLLOW_ID_in_b60 == null) 
      _FOLLOW_ID_in_b60 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_b60;
  }

  static BitSet _FOLLOW_INT_in_b65 = null;
  static BitSet get FOLLOW_INT_in_b65() {
    if(_FOLLOW_INT_in_b65 == null) 
      _FOLLOW_INT_in_b65 = 
        new BitSet.fromList([0x0000000000000028]);
    return _FOLLOW_INT_in_b65;
  }



 }





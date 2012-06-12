// $ANTLR 3.4 t039labelsParser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t039labelsParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "B", "C", "D", "E", "F", 
    "WS", "','"
  ];

  static final int EOF = -1;
  static final int T__11 = 11;
  static final int A = 4;
  static final int B = 5;
  static final int C = 6;
  static final int D = 7;
  static final int E = 8;
  static final int F = 9;
  static final int WS = 10;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t039labelsParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t039labelsParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t039labelsParser._tokenNames;

  String get grammarFileName() => "t039labels.g";

  String getRecognizerClassName() => "t039labelsParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t039labels.g:
   6:1: a returns [List l] :ids+= A ( ',' ids+= ( A | B ) )* C D w= . ids+= . F EOF ; */
  List a() {
    List l = null;


    Token w = null;
    Token ids = null;
    List list_ids = null;

    try {
      /* ../runtime/dart/tests/grammars/t039labels.g:
       7:5: (ids+= A ( ',' ids+= ( A | B ) )* C D w= . ids+= . F EOF )*/
      /* ../runtime/dart/tests/grammars/t039labels.g:
       7:7: ids+= A ( ',' ids+= ( A | B ) )* C D w= . ids+= . F EOF*/
      {
      	ids = this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a33); 

      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids);


      	/* ../runtime/dart/tests/grammars/t039labels.g:
      	 7:14: ( ',' ids+= ( A | B ) )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 11/*11*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t039labels.g:
      			   7:16: ',' ids+= ( A | B )*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    11,FOLLOW_11_in_a37); 


      			  	ids = this.input.LT(1);

      			  	if((this.input.LA(1) >= A && this.input.LA(1) <= B)) {
      			  	  this.input.consume();
      			  	  this.state.errorRecovery = false;
      			  	}
      			  	else {
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  throw mse;
      			  	}

      			  	if(list_ids == null) 
      			  	  list_ids = new List();
      			  	list_ids.add(ids);


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	this.matchSymbol(this.input,
      	    C,FOLLOW_C_in_a50); 


      	this.matchSymbol(this.input,
      	    D,FOLLOW_D_in_a52); 


      	w = this.input.LT(1);

      	this.matchAny(this.input); 


      	ids = this.input.LT(1);

      	this.matchAny(this.input); 

      	if(list_ids == null) 
      	  list_ids = new List();
      	list_ids.add(ids);


      	this.matchSymbol(this.input,
      	    F,FOLLOW_F_in_a62); 


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a64); 


      	 l = [list_ids, w]; 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return l;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_A_in_a33 = null;
  static BitSet get FOLLOW_A_in_a33() {
    if(_FOLLOW_A_in_a33 == null) 
      _FOLLOW_A_in_a33 = 
        new BitSet.fromList([0x0000000000000840]);
    return _FOLLOW_A_in_a33;
  }

  static BitSet _FOLLOW_11_in_a37 = null;
  static BitSet get FOLLOW_11_in_a37() {
    if(_FOLLOW_11_in_a37 == null) 
      _FOLLOW_11_in_a37 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_11_in_a37;
  }

  static BitSet _FOLLOW_set_in_a41 = null;
  static BitSet get FOLLOW_set_in_a41() {
    if(_FOLLOW_set_in_a41 == null) 
      _FOLLOW_set_in_a41 = 
        new BitSet.fromList([0x0000000000000840]);
    return _FOLLOW_set_in_a41;
  }

  static BitSet _FOLLOW_C_in_a50 = null;
  static BitSet get FOLLOW_C_in_a50() {
    if(_FOLLOW_C_in_a50 == null) 
      _FOLLOW_C_in_a50 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_C_in_a50;
  }

  static BitSet _FOLLOW_D_in_a52 = null;
  static BitSet get FOLLOW_D_in_a52() {
    if(_FOLLOW_D_in_a52 == null) 
      _FOLLOW_D_in_a52 = 
        new BitSet.fromList([0x0000000000000FF0]);
    return _FOLLOW_D_in_a52;
  }

  static BitSet _FOLLOW_F_in_a62 = null;
  static BitSet get FOLLOW_F_in_a62() {
    if(_FOLLOW_F_in_a62 == null) 
      _FOLLOW_F_in_a62 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_F_in_a62;
  }

  static BitSet _FOLLOW_EOF_in_a64 = null;
  static BitSet get FOLLOW_EOF_in_a64() {
    if(_FOLLOW_EOF_in_a64 == null) 
      _FOLLOW_EOF_in_a64 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a64;
  }



 }





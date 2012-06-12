// $ANTLR 3.4 t035ruleLabelPropertyRefParser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t035ruleLabelPropertyRefParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t035ruleLabelPropertyRefParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t035ruleLabelPropertyRefParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t035ruleLabelPropertyRefParser._tokenNames;

  String get grammarFileName() => "t035ruleLabelPropertyRef.g";

  String getRecognizerClassName() => "t035ruleLabelPropertyRefParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
   6:1: a returns [List bla] : t= b ;*/
  List a() {
    List bla = null;


    t035ruleLabelPropertyRefParser_b_return t =null;


    try {
      /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
       6:21: (t= b )*/
      /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
       6:23: t= b*/
      {
      	this.pushFollow(FOLLOW_b_in_a28);
      	t = this.b();

      	this.state.fsp--;



      	            bla =  [(t != null) ? t.start : null, (t != null) ? t.stop : null, (t != null) ? this.input.toTokenString(t.start,t.stop):null];
      	        


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return bla;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
   12:1: b : ( A )+ ;*/
  t035ruleLabelPropertyRefParser_b_return b() {
    t035ruleLabelPropertyRefParser_b_return retval = new t035ruleLabelPropertyRefParser_b_return();
    retval.start = this.input.LT(1);


    try {
      /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
       12:2: ( ( A )+ )*/
      /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
       12:4: ( A )+*/
      {
      	/* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
      	 12:4: ( A )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*A*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t035ruleLabelPropertyRef.g:
      			   12:4: A*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    A,FOLLOW_A_in_b50); 


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

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "b"



 

  static BitSet _FOLLOW_b_in_a28 = null;
  static BitSet get FOLLOW_b_in_a28() {
    if(_FOLLOW_b_in_a28 == null) 
      _FOLLOW_b_in_a28 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b_in_a28;
  }

  static BitSet _FOLLOW_A_in_b50 = null;
  static BitSet get FOLLOW_A_in_b50() {
    if(_FOLLOW_A_in_b50 == null) 
      _FOLLOW_A_in_b50 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_A_in_b50;
  }



 }




class t035ruleLabelPropertyRefParser_b_return extends ParserRuleReturnScope {
}

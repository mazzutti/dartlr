// $ANTLR 3.4 t037rulePropertyRefParser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t037rulePropertyRefParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t037rulePropertyRefParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t037rulePropertyRefParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t037rulePropertyRefParser._tokenNames;

  String get grammarFileName() => "t037rulePropertyRef.g";

  String getRecognizerClassName() => "t037rulePropertyRefParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
   6:1: a returns [List bla] : ( A )+ ;*/
  t037rulePropertyRefParser_a_return a() {
    t037rulePropertyRefParser_a_return retval = new t037rulePropertyRefParser_a_return();
    retval.start = this.input.LT(1);


    try {
      /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
       10:5: ( ( A )+ )*/
      /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
       10:7: ( A )+*/
      {
      	/* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
      	 10:7: ( A )+*/
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
      			  /* ../runtime/dart/tests/grammars/t037rulePropertyRef.g:
      			   10:7: A*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    A,FOLLOW_A_in_a36); 


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



          retval.bla =  [retval.start, retval.stop, input.toTokenString(retval.start,input.LT(-1))];


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
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_A_in_a36 = null;
  static BitSet get FOLLOW_A_in_a36() {
    if(_FOLLOW_A_in_a36 == null) 
      _FOLLOW_A_in_a36 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_A_in_a36;
  }



 }




class t037rulePropertyRefParser_a_return extends ParserRuleReturnScope {
  List bla;
}

// $ANTLR 3.4 t036multipleReturnValuesParser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t036multipleReturnValuesParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t036multipleReturnValuesParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t036multipleReturnValuesParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t036multipleReturnValuesParser._tokenNames;

  String get grammarFileName() => "t036multipleReturnValues.g";

  String getRecognizerClassName() => "t036multipleReturnValuesParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
   6:1: a returns [String foo, String bar] : A ;*/
  t036multipleReturnValuesParser_a_return a() {
    t036multipleReturnValuesParser_a_return retval = new t036multipleReturnValuesParser_a_return();
    retval.start = this.input.LT(1);


    try {
      /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
       6:35: ( A )*/
      /* ../runtime/dart/tests/grammars/t036multipleReturnValues.g:
       6:37: A*/
      {
      	this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a26); 



      	            retval.foo =  "foo";
      	            retval.bar =  "bar";
      	        


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
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_A_in_a26 = null;
  static BitSet get FOLLOW_A_in_a26() {
    if(_FOLLOW_A_in_a26 == null) 
      _FOLLOW_A_in_a26 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_A_in_a26;
  }



 }




class t036multipleReturnValuesParser_a_return extends ParserRuleReturnScope {
  String foo;
  String bar;
}

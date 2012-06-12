// $ANTLR 3.4 t041parametersParser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t041parametersParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t041parametersParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t041parametersParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t041parametersParser._tokenNames;

  String get grammarFileName() => "t041parameters.g";

  String getRecognizerClassName() => "t041parametersParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t041parameters.g:
   6:1: a[arg1, arg2] returns [List l] : ( A )+ EOF ;*/
  List a(arg1, arg2) {
    List l = null;


    try {
      /* ../runtime/dart/tests/grammars/t041parameters.g:
       7:5: ( ( A )+ EOF )*/
      /* ../runtime/dart/tests/grammars/t041parameters.g:
       7:7: ( A )+ EOF*/
      {
      	/* ../runtime/dart/tests/grammars/t041parameters.g:
      	 7:7: ( A )+*/
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
      			  /* ../runtime/dart/tests/grammars/t041parameters.g:
      			   7:7: A*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    A,FOLLOW_A_in_a32); 


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_a35); 


      	 
      	            l = [arg1, arg2];
      	            arg1 = "gnarz";
      	        


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



 

  static BitSet _FOLLOW_A_in_a32 = null;
  static BitSet get FOLLOW_A_in_a32() {
    if(_FOLLOW_A_in_a32 == null) 
      _FOLLOW_A_in_a32 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_A_in_a32;
  }

  static BitSet _FOLLOW_EOF_in_a35 = null;
  static BitSet get FOLLOW_EOF_in_a35() {
    if(_FOLLOW_EOF_in_a35 == null) 
      _FOLLOW_EOF_in_a35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_a35;
  }



 }





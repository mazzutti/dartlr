// $ANTLR 3.4 t026actionsParser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t026actionsParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "IDENTIFIER", "WS"
  ];

  static final int EOF = -1;
  static final int IDENTIFIER = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t026actionsParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t026actionsParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t026actionsParser._tokenNames;

  String get grammarFileName() => "t026actions.g";

  String getRecognizerClassName() => "t026actionsParser";


  List xlog;
  String foobar;


  // $ANTLR start "prog"
  /* ../runtime/dart/tests/grammars/t026actions.g:
   21:1: prog : IDENTIFIER EOF ;*/
  void prog() {

    this.xlog = new List();
    this.xlog.add("init;");

    try {
      /* ../runtime/dart/tests/grammars/t026actions.g:
       29:5: ( IDENTIFIER EOF )*/
      /* ../runtime/dart/tests/grammars/t026actions.g:
       29:9: IDENTIFIER EOF*/
      {
      	this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_prog63); 


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_prog65); 


      }


      this.xlog.add("after;");


    }
    catch ( var exc ) {

              this.xlog.add("catch;");
              throw new Exception();       
          
    }

  	finally {
  	  // do for sure before leaving

              this.xlog.add("finally;");
          
  	}
  	return ;
  }
  // $ANTLR end "prog"



 

  static BitSet _FOLLOW_IDENTIFIER_in_prog63 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_prog63() {
    if(_FOLLOW_IDENTIFIER_in_prog63 == null) 
      _FOLLOW_IDENTIFIER_in_prog63 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_IDENTIFIER_in_prog63;
  }

  static BitSet _FOLLOW_EOF_in_prog65 = null;
  static BitSet get FOLLOW_EOF_in_prog65() {
    if(_FOLLOW_EOF_in_prog65 == null) 
      _FOLLOW_EOF_in_prog65 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_prog65;
  }



 }





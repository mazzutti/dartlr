// $ANTLR 3.4 t034tokenLabelPropertyRefParser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t034tokenLabelPropertyRefParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "A", "WS"
  ];

  static final int EOF = -1;
  static final int A = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t034tokenLabelPropertyRefParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {

	  this.xlog = new List();

  }



  t034tokenLabelPropertyRefParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {

    this.xlog = new List();

    
  }    

  List<String> get tokenNames() => t034tokenLabelPropertyRefParser._tokenNames;

  String get grammarFileName() => "t034tokenLabelPropertyRef.g";

  String getRecognizerClassName() => "t034tokenLabelPropertyRefParser";


  List xlog;


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t034tokenLabelPropertyRef.g:
   14:1: a : t= A ;*/
  void a() {
    Token t = null;

    try {
      /* ../runtime/dart/tests/grammars/t034tokenLabelPropertyRef.g:
       14:2: (t= A )*/
      /* ../runtime/dart/tests/grammars/t034tokenLabelPropertyRef.g:
       14:4: t= A*/
      {
      	t = this.matchSymbol(this.input,
      	    A,FOLLOW_A_in_a36); 



      	            xlog.add((t != null) ? t.text : null);
      	            xlog.add((t != null) ? t.type : 0);
      	            xlog.add((t != null) ? t.line : 0);
      	            xlog.add((t != null) ? t.charPositionInLine : 0);
      	            xlog.add((t!=null) ? t.channel : 0);
      	            xlog.add((t != null) ? t.tokenIndex : 0);
      	        


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_A_in_a36 = null;
  static BitSet get FOLLOW_A_in_a36() {
    if(_FOLLOW_A_in_a36 == null) 
      _FOLLOW_A_in_a36 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_A_in_a36;
  }



 }





// $ANTLR 3.4 t013parserParser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t013parserParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "IDENTIFIER"
  ];

  static final int EOF = -1;
  static final int IDENTIFIER = 4;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t013parserParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {

	  this.identifiers = new List();
	  this.reportedErrors = new List();

  }



  t013parserParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {

    this.identifiers = new List();
    this.reportedErrors = new List();

    
  }    

  List<String> get tokenNames() => t013parserParser._tokenNames;

  String get grammarFileName() => "t013parser.g";

  String getRecognizerClassName() => "t013parserParser";


  List identifiers;
  List reportedErrors;

  void foundIdentifier(name) {
    this.identifiers.add(name);
  }

  void emitErrorMessage(msg) {
    this.reportedErrors.add(msg);
  }


  // $ANTLR start "document"
  /* ../runtime/dart/tests/grammars/t013parser.g:
   24:1: document : t= IDENTIFIER ;*/
  void document() {
    Token t = null;

    try {
      /* ../runtime/dart/tests/grammars/t013parser.g:
       24:9: (t= IDENTIFIER )*/
      /* ../runtime/dart/tests/grammars/t013parser.g:
       25:9: t= IDENTIFIER*/
      {
      	t = this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_document50); 


      	this.foundIdentifier((t != null) ? t.text : null);


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
  // $ANTLR end "document"



 

  static BitSet _FOLLOW_IDENTIFIER_in_document50 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_document50() {
    if(_FOLLOW_IDENTIFIER_in_document50 == null) 
      _FOLLOW_IDENTIFIER_in_document50 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_IDENTIFIER_in_document50;
  }



 }





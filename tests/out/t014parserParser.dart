// $ANTLR 3.4 t014parserParser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t014parserParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "IDENTIFIER", "WS", "'('", "')'", 
    "';'", "'var'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int IDENTIFIER = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t014parserParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {

	    this.errors = new List();
	    this.events = new List();

  }



  t014parserParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {

      this.errors = new List();
      this.events = new List();

    
  }    

  List<String> get tokenNames() => t014parserParser._tokenNames;

  String get grammarFileName() => "t014parser.g";

  String getRecognizerClassName() => "t014parserParser";


  List errors;
  List events;

  void emitErrorMessage(msg) {
    this.errors.add(msg);
  }

  void eventMessage(msg) {
    this.events.add(msg);
  }


  // $ANTLR start "document"
  /* ../runtime/dart/tests/grammars/t014parser.g:
   25:1: document : ( declaration | call )* EOF ;*/
  void document() {
    try {
      /* ../runtime/dart/tests/grammars/t014parser.g:
       25:9: ( ( declaration | call )* EOF )*/
      /* ../runtime/dart/tests/grammars/t014parser.g:
       26:9: ( declaration | call )* EOF*/
      {
      	/* ../runtime/dart/tests/grammars/t014parser.g:
      	 26:9: ( declaration | call )**/
      	loop1:
      	do {
      	  int alt1 = 3;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 9/*9*/)) {
      	    alt1 = 1;
      	  }
      	  else if((LA1_0 == 4/*IDENTIFIER*/)) {
      	    alt1 = 2;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t014parser.g:
      			   26:11: declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_declaration_in_document59);
      			  	this.declaration();

      			  	this.state.fsp--;


      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t014parser.g:
      			   27:11: call*/
      			  {
      			  	this.pushFollow(FOLLOW_call_in_document71);
      			  	this.call();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_document92); 


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


  // $ANTLR start "declaration"
  /* ../runtime/dart/tests/grammars/t014parser.g:
   32:1: declaration : 'var' t= IDENTIFIER ';' ;*/
  void declaration() {
    Token t = null;

    try {
      /* ../runtime/dart/tests/grammars/t014parser.g:
       32:12: ( 'var' t= IDENTIFIER ';' )*/
      /* ../runtime/dart/tests/grammars/t014parser.g:
       33:9: 'var' t= IDENTIFIER ';'*/
      {
      	this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_declaration112); 


      	t = this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_declaration116); 


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_declaration118); 


      	this.eventMessage(['decl', (t != null) ? t.text : null]);


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
  // $ANTLR end "declaration"


  // $ANTLR start "call"
  /* ../runtime/dart/tests/grammars/t014parser.g:
   37:1: call : t= IDENTIFIER '(' ')' ';' ;*/
  void call() {
    Token t = null;

    try {
      /* ../runtime/dart/tests/grammars/t014parser.g:
       37:5: (t= IDENTIFIER '(' ')' ';' )*/
      /* ../runtime/dart/tests/grammars/t014parser.g:
       38:9: t= IDENTIFIER '(' ')' ';'*/
      {
      	t = this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_call150); 


      	this.matchSymbol(this.input,
      	    6,FOLLOW_6_in_call152); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_call154); 


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_call156); 


      	this.eventMessage(['call', (t != null) ? t.text : null]);


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
  // $ANTLR end "call"



 

  static BitSet _FOLLOW_declaration_in_document59 = null;
  static BitSet get FOLLOW_declaration_in_document59() {
    if(_FOLLOW_declaration_in_document59 == null) 
      _FOLLOW_declaration_in_document59 = 
        new BitSet.fromList([0x0000000000000210]);
    return _FOLLOW_declaration_in_document59;
  }

  static BitSet _FOLLOW_call_in_document71 = null;
  static BitSet get FOLLOW_call_in_document71() {
    if(_FOLLOW_call_in_document71 == null) 
      _FOLLOW_call_in_document71 = 
        new BitSet.fromList([0x0000000000000210]);
    return _FOLLOW_call_in_document71;
  }

  static BitSet _FOLLOW_EOF_in_document92 = null;
  static BitSet get FOLLOW_EOF_in_document92() {
    if(_FOLLOW_EOF_in_document92 == null) 
      _FOLLOW_EOF_in_document92 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_document92;
  }

  static BitSet _FOLLOW_9_in_declaration112 = null;
  static BitSet get FOLLOW_9_in_declaration112() {
    if(_FOLLOW_9_in_declaration112 == null) 
      _FOLLOW_9_in_declaration112 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_9_in_declaration112;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_declaration116 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_declaration116() {
    if(_FOLLOW_IDENTIFIER_in_declaration116 == null) 
      _FOLLOW_IDENTIFIER_in_declaration116 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_IDENTIFIER_in_declaration116;
  }

  static BitSet _FOLLOW_8_in_declaration118 = null;
  static BitSet get FOLLOW_8_in_declaration118() {
    if(_FOLLOW_8_in_declaration118 == null) 
      _FOLLOW_8_in_declaration118 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_declaration118;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_call150 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_call150() {
    if(_FOLLOW_IDENTIFIER_in_call150 == null) 
      _FOLLOW_IDENTIFIER_in_call150 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_IDENTIFIER_in_call150;
  }

  static BitSet _FOLLOW_6_in_call152 = null;
  static BitSet get FOLLOW_6_in_call152() {
    if(_FOLLOW_6_in_call152 == null) 
      _FOLLOW_6_in_call152 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_6_in_call152;
  }

  static BitSet _FOLLOW_7_in_call154 = null;
  static BitSet get FOLLOW_7_in_call154() {
    if(_FOLLOW_7_in_call154 == null) 
      _FOLLOW_7_in_call154 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_7_in_call154;
  }

  static BitSet _FOLLOW_8_in_call156 = null;
  static BitSet get FOLLOW_8_in_call156() {
    if(_FOLLOW_8_in_call156 == null) 
      _FOLLOW_8_in_call156 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_call156;
  }



 }





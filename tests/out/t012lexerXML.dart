// $ANTLR 3.4 t012lexerXML.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

/** XML parser by Oliver Zeigermann October 10, 2005 */
class t012lexerXML extends Lexer {

  static final int EOF = -1;
  static final int ATTRIBUTE = 4;
  static final int CDATA = 5;
  static final int COMMENT = 6;
  static final int DOCTYPE = 7;
  static final int DOCUMENT = 8;
  static final int ELEMENT = 9;
  static final int EMPTY_ELEMENT = 10;
  static final int END_TAG = 11;
  static final int GENERIC_ID = 12;
  static final int INTERNAL_DTD = 13;
  static final int LETTER = 14;
  static final int PCDATA = 15;
  static final int PI = 16;
  static final int START_TAG = 17;
  static final int VALUE = 18;
  static final int WS = 19;
  static final int XMLDECL = 20;  

    void capture(String value) {
    	super.capture("$value\n");
    }
  

  Map<String, DFA> dfas;

  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t012lexerXML([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa18"] = new DFA18(this);
  }

  t012lexerXML.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa18"] = new DFA18(this);
  }

  String get grammarFileName() => "t012lexerXML.g";

  String getRecognizerClassName() => "t012lexerXML";
  
  // $ANTLR start "DOCUMENT"
  void mDOCUMENT() {
    try {
  	  int _type = DOCUMENT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   14:5: ( ( XMLDECL )? ( WS )? ( DOCTYPE )? ( WS )? ELEMENT ( WS )? )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   14:8: ( XMLDECL )? ( WS )? ( DOCTYPE )? ( WS )? ELEMENT ( WS )?*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 14:8: ( XMLDECL )?*/
  	  	int alt1 = 2;
  	  	int LA1_0 = this.input.LA(1);

  	  	if((LA1_0 == 60/*60 /*'<'*/*/)) {
  	  	  int LA1_1 = this.input.LA(2);

  	  	  if((LA1_1 == 63/*63 /*'?'*/*/)) {
  	  	    alt1 = 1;
  	  	  }
  	  	}
  	  	switch (alt1) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     14:8: XMLDECL*/
  	  	    {
  	  	    	this.mXMLDECL(); 


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 14:17: ( WS )?*/
  	  	int alt2 = 2;
  	  	switch(this.input.LA(1)) {
  	  	  case 32 /*' '*/:
  	  	    {
  	  	    alt2 = 1;
  	  	    }
  	  	    break;
  	  	  case 9 /*'\t'*/:
  	  	    {
  	  	    alt2 = 1;
  	  	    }
  	  	    break;
  	  	  case 10 /*'\n'*/:
  	  	    {
  	  	    alt2 = 1;
  	  	    }
  	  	    break;
  	  	  case 13 /*'\r'*/:
  	  	    {
  	  	    alt2 = 1;
  	  	    }
  	  	    break;
  	  	}

  	  	switch (alt2) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     14:17: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 14:21: ( DOCTYPE )?*/
  	  	int alt3 = 2;
  	  	int LA3_0 = this.input.LA(1);

  	  	if((LA3_0 == 60/*60 /*'<'*/*/)) {
  	  	  int LA3_1 = this.input.LA(2);

  	  	  if((LA3_1 == 33/*33 /*'!'*/*/)) {
  	  	    alt3 = 1;
  	  	  }
  	  	}
  	  	switch (alt3) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     14:21: DOCTYPE*/
  	  	    {
  	  	    	this.mDOCTYPE(); 


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 14:30: ( WS )?*/
  	  	int alt4 = 2;
  	  	int LA4_0 = this.input.LA(1);

  	  	if(((LA4_0 >= 9 /*'\t'*/ && LA4_0 <= 10 /*'\n'*/)
  	  	  || LA4_0 == 13/*13 /*'\r'*/*/
  	  	  || LA4_0 == 32/*32 /*' '*/*/)) {
  	  	  alt4 = 1;
  	  	}
  	  	switch (alt4) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     14:30: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.mELEMENT(); 


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 14:42: ( WS )?*/
  	  	int alt5 = 2;
  	  	int LA5_0 = this.input.LA(1);

  	  	if(((LA5_0 >= 9 /*'\t'*/ && LA5_0 <= 10 /*'\n'*/)
  	  	  || LA5_0 == 13/*13 /*'\r'*/*/
  	  	  || LA5_0 == 32/*32 /*' '*/*/)) {
  	  	  alt5 = 1;
  	  	}
  	  	switch (alt5) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     14:42: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "DOCUMENT"

  // $ANTLR start "DOCTYPE"
  void mDOCTYPE() {
    try {
  	  CommonToken rootElementName = null;
  	  CommonToken sys1 = null;
  	  CommonToken pub = null;
  	  CommonToken sys2 = null;
  	  CommonToken dtd = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   18:5: ( '<!DOCTYPE' WS rootElementName= GENERIC_ID WS ( ( 'SYSTEM' WS sys1= VALUE | 
  	   'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )? )? (dtd= INTERNAL_DTD )? '>' ) */
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   19:9: '<!DOCTYPE' WS rootElementName= GENERIC_ID WS ( ( 'SYSTEM' WS sys1= VALUE | 
  	   'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )? )? (dtd= INTERNAL_DTD )? '>' */
  	  {
  	  	this.match("<!DOCTYPE"); 




  	  	this.mWS(); 


  	  	int rootElementNameStart87 = this.charIndex;
  	  	int rootElementNameStartLine87 = this.line;
  	  	int rootElementNameStartCharPos87 = this.charPositionInLine;
  	  	this.mGENERIC_ID(); 
  	  	rootElementName = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, rootElementNameStart87, this.charIndex-1);
  	  	rootElementName.line = rootElementNameStartLine87;
  	  	rootElementName.charPositionInLine = rootElementNameStartCharPos87;


  	  	this.capture("ROOTELEMENT: ${(rootElementName != null) ? rootElementName.text : null}");


  	  	this.mWS(); 


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 22:9: ( ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )? )? */
  	  	int alt8 = 2;
  	  	int LA8_0 = this.input.LA(1);

  	  	if((LA8_0 == 80/*80 /*'P'*/*/
  	  	  || LA8_0 == 83/*83 /*'S'*/*/)) {
  	  	  alt8 = 1;
  	  	}
  	  	switch (alt8) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     23:13: ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )? */
  	  	    {
  	  	    	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	 23:13: ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE )*/
  	  	    	int alt6 = 2;
  	  	    	int LA6_0 = this.input.LA(1);

  	  	    	if((LA6_0 == 83/*83 /*'S'*/*/)) {
  	  	    	  alt6 = 1;
  	  	    	}
  	  	    	else if((LA6_0 == 80/*80 /*'P'*/*/)) {
  	  	    	  alt6 = 2;
  	  	    	}
  	  	    	else {
  	  	    	  NoViableAltException nvae =
  	  	    	      new NoViableAltException("", 6, 0, this.input);

  	  	    	  throw nvae;

  	  	    	}
  	  	    	switch (alt6) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	     23:15: 'SYSTEM' WS sys1= VALUE*/
  	  	    	    {
  	  	    	    	this.match("SYSTEM"); 




  	  	    	    	this.mWS(); 


  	  	    	    	int sys1Start141 = this.charIndex;
  	  	    	    	int sys1StartLine141 = this.line;
  	  	    	    	int sys1StartCharPos141 = this.charPositionInLine;
  	  	    	    	this.mVALUE(); 
  	  	    	    	sys1 = new CommonToken.fromCharStream(this.input, 
  	  	    	    	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, sys1Start141, this.charIndex-1);
  	  	    	    	sys1.line = sys1StartLine141;
  	  	    	    	sys1.charPositionInLine = sys1StartCharPos141;


  	  	    	    	this.capture("SYSTEM: ${(sys1 != null) ? sys1.text : null}");


  	  	    	    }
  	  	    	    break;
  	  	    	  case 2 :
  	  	    	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	     26:15: 'PUBLIC' WS pub= VALUE WS sys2= VALUE*/
  	  	    	    {
  	  	    	    	this.match("PUBLIC"); 




  	  	    	    	this.mWS(); 


  	  	    	    	int pubStart198 = this.charIndex;
  	  	    	    	int pubStartLine198 = this.line;
  	  	    	    	int pubStartCharPos198 = this.charPositionInLine;
  	  	    	    	this.mVALUE(); 
  	  	    	    	pub = new CommonToken.fromCharStream(this.input, 
  	  	    	    	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, pubStart198, this.charIndex-1);
  	  	    	    	pub.line = pubStartLine198;
  	  	    	    	pub.charPositionInLine = pubStartCharPos198;


  	  	    	    	this.mWS(); 


  	  	    	    	int sys2Start204 = this.charIndex;
  	  	    	    	int sys2StartLine204 = this.line;
  	  	    	    	int sys2StartCharPos204 = this.charPositionInLine;
  	  	    	    	this.mVALUE(); 
  	  	    	    	sys2 = new CommonToken.fromCharStream(this.input, 
  	  	    	    	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, sys2Start204, this.charIndex-1);
  	  	    	    	sys2.line = sys2StartLine204;
  	  	    	    	sys2.charPositionInLine = sys2StartCharPos204;


  	  	    	    	this.capture("PUBLIC: ${(pub != null) ? pub.text : null}");


  	  	    	    	this.capture("SYSTEM: ${(sys2 != null) ? sys2.text : null}");


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	 30:13: ( WS )?*/
  	  	    	int alt7 = 2;
  	  	    	int LA7_0 = this.input.LA(1);

  	  	    	if(((LA7_0 >= 9 /*'\t'*/ && LA7_0 <= 10 /*'\n'*/)
  	  	    	  || LA7_0 == 13/*13 /*'\r'*/*/
  	  	    	  || LA7_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt7 = 1;
  	  	    	}
  	  	    	switch (alt7) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	     30:15: WS*/
  	  	    	    {
  	  	    	    	this.mWS(); 


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 32:9: (dtd= INTERNAL_DTD )?*/
  	  	int alt9 = 2;
  	  	int LA9_0 = this.input.LA(1);

  	  	if((LA9_0 == 91/*91 /*'['*/*/)) {
  	  	  alt9 = 1;
  	  	}
  	  	switch (alt9) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     32:11: dtd= INTERNAL_DTD*/
  	  	    {
  	  	    	int dtdStart301 = this.charIndex;
  	  	    	int dtdStartLine301 = this.line;
  	  	    	int dtdStartCharPos301 = this.charPositionInLine;
  	  	    	this.mINTERNAL_DTD(); 
  	  	    	dtd = new CommonToken.fromCharStream(this.input, 
  	  	    	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, dtdStart301, this.charIndex-1);
  	  	    	dtd.line = dtdStartLine301;
  	  	    	dtd.charPositionInLine = dtdStartCharPos301;


  	  	    	this.capture("INTERNAL DTD: ${(dtd != null) ? dtd.text : null}");


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(62 /*'>'*/); 


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "DOCTYPE"

  // $ANTLR start "INTERNAL_DTD"
  void mINTERNAL_DTD() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   38:23: ( '[' ( options {greedy=false; } : . )* ']' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   38:25: '[' ( options {greedy=false; } : . )* ']'*/
  	  {
  	  	this.match(91 /*'['*/); 


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 38:29: ( options {greedy=false; } : . )**/
  	  	loop10:
  	  	do {
  	  	  int alt10 = 2;
  	  	  int LA10_0 = this.input.LA(1);

  	  	  if((LA10_0 == 93/*93 /*']'*/*/)) {
  	  	    alt10 = 2;
  	  	  }
  	  	  else if(((LA10_0 >= 0 /*'\u0000'*/ && LA10_0 <= 92 /*'\\'*/)
  	  	    || (LA10_0 >= 94 /*'^'*/ && LA10_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt10 = 1;
  	  	  }


  	  	  switch (alt10) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   38:56: .*/
  	  			  {
  	  			  	this.matchAny(); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop10;
  	  	  }
  	  	} while(true);


  	  	this.match(93 /*']'*/); 


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "INTERNAL_DTD"

  // $ANTLR start "PI"
  void mPI() {
    try {
  	  CommonToken target = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   40:13: ( '<?' target= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '?>' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   41:9: '<?' target= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '?>'*/
  	  {
  	  	this.match("<?"); 




  	  	int targetStart381 = this.charIndex;
  	  	int targetStartLine381 = this.line;
  	  	int targetStartCharPos381 = this.charPositionInLine;
  	  	this.mGENERIC_ID(); 
  	  	target = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, targetStart381, this.charIndex-1);
  	  	target.line = targetStartLine381;
  	  	target.charPositionInLine = targetStartCharPos381;


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 41:32: ( WS )?*/
  	  	int alt11 = 2;
  	  	int LA11_0 = this.input.LA(1);

  	  	if(((LA11_0 >= 9 /*'\t'*/ && LA11_0 <= 10 /*'\n'*/)
  	  	  || LA11_0 == 13/*13 /*'\r'*/*/
  	  	  || LA11_0 == 32/*32 /*' '*/*/)) {
  	  	  alt11 = 1;
  	  	}
  	  	switch (alt11) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     41:32: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.capture("PI: ${(target != null) ? target.text : null}");


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 43:9: ( ATTRIBUTE ( WS )? )**/
  	  	loop13:
  	  	do {
  	  	  int alt13 = 2;
  	  	  int LA13_0 = this.input.LA(1);

  	  	  if((LA13_0 == 58/*58 /*':'*/*/
  	  	    || (LA13_0 >= 65 /*'A'*/ && LA13_0 <= 90 /*'Z'*/)
  	  	    || LA13_0 == 95/*95 /*'_'*/*/
  	  	    || (LA13_0 >= 97 /*'a'*/ && LA13_0 <= 122 /*'z'*/))) {
  	  	    alt13 = 1;
  	  	  }


  	  	  switch (alt13) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   43:11: ATTRIBUTE ( WS )?*/
  	  			  {
  	  			  	this.mATTRIBUTE(); 


  	  			  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	 43:21: ( WS )?*/
  	  			  	int alt12 = 2;
  	  			  	int LA12_0 = this.input.LA(1);

  	  			  	if(((LA12_0 >= 9 /*'\t'*/ && LA12_0 <= 10 /*'\n'*/)
  	  			  	  || LA12_0 == 13/*13 /*'\r'*/*/
  	  			  	  || LA12_0 == 32/*32 /*' '*/*/)) {
  	  			  	  alt12 = 1;
  	  			  	}
  	  			  	switch (alt12) {
  	  			  	  case 1 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     43:21: WS*/
  	  			  	    {
  	  			  	    	this.mWS(); 


  	  			  	    }
  	  			  	    break;

  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop13;
  	  	  }
  	  	} while(true);


  	  	this.match("?>"); 




  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "PI"

  // $ANTLR start "XMLDECL"
  void mXMLDECL() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   46:18: ( '<?' ( 'x' | 'X' ) ( 'm' | 'M' ) ( 'l' | 'L' ) ( WS )? ( ATTRIBUTE ( WS )? )* '?>' ) */
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   47:9: '<?' ( 'x' | 'X' ) ( 'm' | 'M' ) ( 'l' | 'L' ) ( WS )? ( ATTRIBUTE ( WS )? )* '?>' */
  	  {
  	  	this.match("<?"); 




  	  	if(this.input.LA(1) == 88 /*'X'*/
  	  	  || this.input.LA(1) == 120 /*'x'*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	if(this.input.LA(1) == 77 /*'M'*/
  	  	  || this.input.LA(1) == 109 /*'m'*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	if(this.input.LA(1) == 76 /*'L'*/
  	  	  || this.input.LA(1) == 108 /*'l'*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 47:44: ( WS )?*/
  	  	int alt14 = 2;
  	  	int LA14_0 = this.input.LA(1);

  	  	if(((LA14_0 >= 9 /*'\t'*/ && LA14_0 <= 10 /*'\n'*/)
  	  	  || LA14_0 == 13/*13 /*'\r'*/*/
  	  	  || LA14_0 == 32/*32 /*' '*/*/)) {
  	  	  alt14 = 1;
  	  	}
  	  	switch (alt14) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     47:44: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.capture("XML declaration");


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 49:9: ( ATTRIBUTE ( WS )? )**/
  	  	loop16:
  	  	do {
  	  	  int alt16 = 2;
  	  	  int LA16_0 = this.input.LA(1);

  	  	  if((LA16_0 == 58/*58 /*':'*/*/
  	  	    || (LA16_0 >= 65 /*'A'*/ && LA16_0 <= 90 /*'Z'*/)
  	  	    || LA16_0 == 95/*95 /*'_'*/*/
  	  	    || (LA16_0 >= 97 /*'a'*/ && LA16_0 <= 122 /*'z'*/))) {
  	  	    alt16 = 1;
  	  	  }


  	  	  switch (alt16) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   49:11: ATTRIBUTE ( WS )?*/
  	  			  {
  	  			  	this.mATTRIBUTE(); 


  	  			  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	 49:21: ( WS )?*/
  	  			  	int alt15 = 2;
  	  			  	int LA15_0 = this.input.LA(1);

  	  			  	if(((LA15_0 >= 9 /*'\t'*/ && LA15_0 <= 10 /*'\n'*/)
  	  			  	  || LA15_0 == 13/*13 /*'\r'*/*/
  	  			  	  || LA15_0 == 32/*32 /*' '*/*/)) {
  	  			  	  alt15 = 1;
  	  			  	}
  	  			  	switch (alt15) {
  	  			  	  case 1 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     49:21: WS*/
  	  			  	    {
  	  			  	    	this.mWS(); 


  	  			  	    }
  	  			  	    break;

  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop16;
  	  	  }
  	  	} while(true);


  	  	this.match("?>"); 




  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "XMLDECL"

  // $ANTLR start "ELEMENT"
  void mELEMENT() {
    try {
  	  CommonToken t = null;
  	  CommonToken pi = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   54:5: ( ( START_TAG ( ELEMENT |t= PCDATA |t= CDATA |t= COMMENT |pi= PI )* END_TAG | 
  	   EMPTY_ELEMENT ) )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   54:7: ( START_TAG ( ELEMENT |t= PCDATA |t= CDATA |t= COMMENT |pi= PI )* END_TAG | 
  	   EMPTY_ELEMENT )*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 54:7: ( START_TAG ( ELEMENT |t= PCDATA |t= CDATA |t= COMMENT |pi= PI )* END_TAG | 
  	  	 EMPTY_ELEMENT )*/
  	  	int alt18 = 2;
  	  	alt18 = this.dfas["dfa18"].predict(this.input);
  	  	switch (alt18) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     54:9: START_TAG ( ELEMENT |t= PCDATA |t= CDATA |t= COMMENT |pi= PI )* END_TAG*/
  	  	    {
  	  	    	this.mSTART_TAG(); 


  	  	    	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	 55:13: ( ELEMENT |t= PCDATA |t= CDATA |t= COMMENT |pi= PI )**/
  	  	    	loop17:
  	  	    	do {
  	  	    	  int alt17 = 6;
  	  	    	  int LA17_0 = this.input.LA(1);

  	  	    	  if((LA17_0 == 60/*60 /*'<'*/*/)) {
  	  	    	    switch ( this.input.LA(2) ) {
  	  	    	    case 33 /*'!'*/:
  	  	    	      {
  	  	    	      int LA17_4 = this.input.LA(3);

  	  	    	      if((LA17_4 == 91/*91 /*'['*/*/)) {
  	  	    	        alt17 = 3;
  	  	    	      }
  	  	    	      else if((LA17_4 == 45/*45 /*'-'*/*/)) {
  	  	    	        alt17 = 4;
  	  	    	      }


  	  	    	      }
  	  	    	      break;
  	  	    	    case 63 /*'?'*/:
  	  	    	      {
  	  	    	      alt17 = 5;
  	  	    	      }
  	  	    	      break;
  	  	    	    case 9 /*'\t'*/:
  	  	    	    case 10 /*'\n'*/:
  	  	    	    case 13 /*'\r'*/:
  	  	    	    case 32 /*' '*/:
  	  	    	    case 58 /*':'*/:
  	  	    	    case 65 /*'A'*/:
  	  	    	    case 66 /*'B'*/:
  	  	    	    case 67 /*'C'*/:
  	  	    	    case 68 /*'D'*/:
  	  	    	    case 69 /*'E'*/:
  	  	    	    case 70 /*'F'*/:
  	  	    	    case 71 /*'G'*/:
  	  	    	    case 72 /*'H'*/:
  	  	    	    case 73 /*'I'*/:
  	  	    	    case 74 /*'J'*/:
  	  	    	    case 75 /*'K'*/:
  	  	    	    case 76 /*'L'*/:
  	  	    	    case 77 /*'M'*/:
  	  	    	    case 78 /*'N'*/:
  	  	    	    case 79 /*'O'*/:
  	  	    	    case 80 /*'P'*/:
  	  	    	    case 81 /*'Q'*/:
  	  	    	    case 82 /*'R'*/:
  	  	    	    case 83 /*'S'*/:
  	  	    	    case 84 /*'T'*/:
  	  	    	    case 85 /*'U'*/:
  	  	    	    case 86 /*'V'*/:
  	  	    	    case 87 /*'W'*/:
  	  	    	    case 88 /*'X'*/:
  	  	    	    case 89 /*'Y'*/:
  	  	    	    case 90 /*'Z'*/:
  	  	    	    case 95 /*'_'*/:
  	  	    	    case 97 /*'a'*/:
  	  	    	    case 98 /*'b'*/:
  	  	    	    case 99 /*'c'*/:
  	  	    	    case 100 /*'d'*/:
  	  	    	    case 101 /*'e'*/:
  	  	    	    case 102 /*'f'*/:
  	  	    	    case 103 /*'g'*/:
  	  	    	    case 104 /*'h'*/:
  	  	    	    case 105 /*'i'*/:
  	  	    	    case 106 /*'j'*/:
  	  	    	    case 107 /*'k'*/:
  	  	    	    case 108 /*'l'*/:
  	  	    	    case 109 /*'m'*/:
  	  	    	    case 110 /*'n'*/:
  	  	    	    case 111 /*'o'*/:
  	  	    	    case 112 /*'p'*/:
  	  	    	    case 113 /*'q'*/:
  	  	    	    case 114 /*'r'*/:
  	  	    	    case 115 /*'s'*/:
  	  	    	    case 116 /*'t'*/:
  	  	    	    case 117 /*'u'*/:
  	  	    	    case 118 /*'v'*/:
  	  	    	    case 119 /*'w'*/:
  	  	    	    case 120 /*'x'*/:
  	  	    	    case 121 /*'y'*/:
  	  	    	    case 122 /*'z'*/:
  	  	    	      {
  	  	    	      alt17 = 1;
  	  	    	      }
  	  	    	      break;

  	  	    	    }

  	  	    	  }
  	  	    	  else if(((LA17_0 >= 0 /*'\u0000'*/ && LA17_0 <= 59 /*';'*/)
  	  	    	    || (LA17_0 >= 61 /*'='*/ && LA17_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    	    alt17 = 2;
  	  	    	  }


  	  	    	  switch (alt17) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			   55:14: ELEMENT*/
  	  	    			  {
  	  	    			  	this.mELEMENT(); 


  	  	    			  }
  	  	    			  break;
  	  	    			case 2 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			   56:15: t= PCDATA*/
  	  	    			  {
  	  	    			  	int tStart545 = this.charIndex;
  	  	    			  	int tStartLine545 = this.line;
  	  	    			  	int tStartCharPos545 = this.charPositionInLine;
  	  	    			  	this.mPCDATA(); 
  	  	    			  	t = new CommonToken.fromCharStream(this.input, 
  	  	    			  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, tStart545, this.charIndex-1);
  	  	    			  	t.line = tStartLine545;
  	  	    			  	t.charPositionInLine = tStartCharPos545;


  	  	    			  	this.capture('PCDATA: "${(t != null) ? t.text : null}"');


  	  	    			  }
  	  	    			  break;
  	  	    			case 3 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			   58:15: t= CDATA*/
  	  	    			  {
  	  	    			  	int tStart581 = this.charIndex;
  	  	    			  	int tStartLine581 = this.line;
  	  	    			  	int tStartCharPos581 = this.charPositionInLine;
  	  	    			  	this.mCDATA(); 
  	  	    			  	t = new CommonToken.fromCharStream(this.input, 
  	  	    			  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, tStart581, this.charIndex-1);
  	  	    			  	t.line = tStartLine581;
  	  	    			  	t.charPositionInLine = tStartCharPos581;


  	  	    			  	this.capture('CDATA: "${(t != null) ? t.text : null}"');


  	  	    			  }
  	  	    			  break;
  	  	    			case 4 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			   60:15: t= COMMENT*/
  	  	    			  {
  	  	    			  	int tStart617 = this.charIndex;
  	  	    			  	int tStartLine617 = this.line;
  	  	    			  	int tStartCharPos617 = this.charPositionInLine;
  	  	    			  	this.mCOMMENT(); 
  	  	    			  	t = new CommonToken.fromCharStream(this.input, 
  	  	    			  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, tStart617, this.charIndex-1);
  	  	    			  	t.line = tStartLine617;
  	  	    			  	t.charPositionInLine = tStartCharPos617;


  	  	    			  	this.capture('Comment: "${(t != null) ? t.text : null}"');


  	  	    			  }
  	  	    			  break;
  	  	    			case 5 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			   62:15: pi= PI*/
  	  	    			  {
  	  	    			  	int piStart653 = this.charIndex;
  	  	    			  	int piStartLine653 = this.line;
  	  	    			  	int piStartCharPos653 = this.charPositionInLine;
  	  	    			  	this.mPI(); 
  	  	    			  	pi = new CommonToken.fromCharStream(this.input, 
  	  	    			  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, piStart653, this.charIndex-1);
  	  	    			  	pi.line = piStartLine653;
  	  	    			  	pi.charPositionInLine = piStartCharPos653;


  	  	    			  }
  	  	    			  break;

  	  	    			default :
  	  	    		    break loop17;
  	  	    	  }
  	  	    	} while(true);


  	  	    	this.mEND_TAG(); 


  	  	    }
  	  	    break;
  	  	  case 2 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     65:11: EMPTY_ELEMENT*/
  	  	    {
  	  	    	this.mEMPTY_ELEMENT(); 


  	  	    }
  	  	    break;

  	  	}


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ELEMENT"

  // $ANTLR start "START_TAG"
  void mSTART_TAG() {
    try {
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   70:5: ( '<' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '>' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   70:7: '<' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '>'*/
  	  {
  	  	this.match(60 /*'<'*/); 


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 70:11: ( WS )?*/
  	  	int alt19 = 2;
  	  	int LA19_0 = this.input.LA(1);

  	  	if(((LA19_0 >= 9 /*'\t'*/ && LA19_0 <= 10 /*'\n'*/)
  	  	  || LA19_0 == 13/*13 /*'\r'*/*/
  	  	  || LA19_0 == 32/*32 /*' '*/*/)) {
  	  	  alt19 = 1;
  	  	}
  	  	switch (alt19) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     70:11: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	int nameStart731 = this.charIndex;
  	  	int nameStartLine731 = this.line;
  	  	int nameStartCharPos731 = this.charPositionInLine;
  	  	this.mGENERIC_ID(); 
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart731, this.charIndex-1);
  	  	name.line = nameStartLine731;
  	  	name.charPositionInLine = nameStartCharPos731;


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 70:31: ( WS )?*/
  	  	int alt20 = 2;
  	  	int LA20_0 = this.input.LA(1);

  	  	if(((LA20_0 >= 9 /*'\t'*/ && LA20_0 <= 10 /*'\n'*/)
  	  	  || LA20_0 == 13/*13 /*'\r'*/*/
  	  	  || LA20_0 == 32/*32 /*' '*/*/)) {
  	  	  alt20 = 1;
  	  	}
  	  	switch (alt20) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     70:31: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.capture("Start Tag: ${(name != null) ? name.text : null}");


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 72:9: ( ATTRIBUTE ( WS )? )**/
  	  	loop22:
  	  	do {
  	  	  int alt22 = 2;
  	  	  int LA22_0 = this.input.LA(1);

  	  	  if((LA22_0 == 58/*58 /*':'*/*/
  	  	    || (LA22_0 >= 65 /*'A'*/ && LA22_0 <= 90 /*'Z'*/)
  	  	    || LA22_0 == 95/*95 /*'_'*/*/
  	  	    || (LA22_0 >= 97 /*'a'*/ && LA22_0 <= 122 /*'z'*/))) {
  	  	    alt22 = 1;
  	  	  }


  	  	  switch (alt22) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   72:11: ATTRIBUTE ( WS )?*/
  	  			  {
  	  			  	this.mATTRIBUTE(); 


  	  			  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	 72:21: ( WS )?*/
  	  			  	int alt21 = 2;
  	  			  	int LA21_0 = this.input.LA(1);

  	  			  	if(((LA21_0 >= 9 /*'\t'*/ && LA21_0 <= 10 /*'\n'*/)
  	  			  	  || LA21_0 == 13/*13 /*'\r'*/*/
  	  			  	  || LA21_0 == 32/*32 /*' '*/*/)) {
  	  			  	  alt21 = 1;
  	  			  	}
  	  			  	switch (alt21) {
  	  			  	  case 1 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     72:21: WS*/
  	  			  	    {
  	  			  	    	this.mWS(); 


  	  			  	    }
  	  			  	    break;

  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop22;
  	  	  }
  	  	} while(true);


  	  	this.match(62 /*'>'*/); 


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "START_TAG"

  // $ANTLR start "EMPTY_ELEMENT"
  void mEMPTY_ELEMENT() {
    try {
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   76:5: ( '<' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '/>' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   76:7: '<' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '/>'*/
  	  {
  	  	this.match(60 /*'<'*/); 


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 76:11: ( WS )?*/
  	  	int alt23 = 2;
  	  	int LA23_0 = this.input.LA(1);

  	  	if(((LA23_0 >= 9 /*'\t'*/ && LA23_0 <= 10 /*'\n'*/)
  	  	  || LA23_0 == 13/*13 /*'\r'*/*/
  	  	  || LA23_0 == 32/*32 /*' '*/*/)) {
  	  	  alt23 = 1;
  	  	}
  	  	switch (alt23) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     76:11: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	int nameStart793 = this.charIndex;
  	  	int nameStartLine793 = this.line;
  	  	int nameStartCharPos793 = this.charPositionInLine;
  	  	this.mGENERIC_ID(); 
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart793, this.charIndex-1);
  	  	name.line = nameStartLine793;
  	  	name.charPositionInLine = nameStartCharPos793;


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 76:31: ( WS )?*/
  	  	int alt24 = 2;
  	  	int LA24_0 = this.input.LA(1);

  	  	if(((LA24_0 >= 9 /*'\t'*/ && LA24_0 <= 10 /*'\n'*/)
  	  	  || LA24_0 == 13/*13 /*'\r'*/*/
  	  	  || LA24_0 == 32/*32 /*' '*/*/)) {
  	  	  alt24 = 1;
  	  	}
  	  	switch (alt24) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     76:31: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.capture("Empty Element: ${(name != null) ? name.text : null}");


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 78:9: ( ATTRIBUTE ( WS )? )**/
  	  	loop26:
  	  	do {
  	  	  int alt26 = 2;
  	  	  int LA26_0 = this.input.LA(1);

  	  	  if((LA26_0 == 58/*58 /*':'*/*/
  	  	    || (LA26_0 >= 65 /*'A'*/ && LA26_0 <= 90 /*'Z'*/)
  	  	    || LA26_0 == 95/*95 /*'_'*/*/
  	  	    || (LA26_0 >= 97 /*'a'*/ && LA26_0 <= 122 /*'z'*/))) {
  	  	    alt26 = 1;
  	  	  }


  	  	  switch (alt26) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   78:11: ATTRIBUTE ( WS )?*/
  	  			  {
  	  			  	this.mATTRIBUTE(); 


  	  			  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	 78:21: ( WS )?*/
  	  			  	int alt25 = 2;
  	  			  	int LA25_0 = this.input.LA(1);

  	  			  	if(((LA25_0 >= 9 /*'\t'*/ && LA25_0 <= 10 /*'\n'*/)
  	  			  	  || LA25_0 == 13/*13 /*'\r'*/*/
  	  			  	  || LA25_0 == 32/*32 /*' '*/*/)) {
  	  			  	  alt25 = 1;
  	  			  	}
  	  			  	switch (alt25) {
  	  			  	  case 1 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     78:21: WS*/
  	  			  	    {
  	  			  	    	this.mWS(); 


  	  			  	    }
  	  			  	    break;

  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop26;
  	  	  }
  	  	} while(true);


  	  	this.match("/>"); 




  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "EMPTY_ELEMENT"

  // $ANTLR start "ATTRIBUTE"
  void mATTRIBUTE() {
    try {
  	  CommonToken name = null;
  	  CommonToken value = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   82:5: (name= GENERIC_ID ( WS )? '=' ( WS )? value= VALUE )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   82:7: name= GENERIC_ID ( WS )? '=' ( WS )? value= VALUE*/
  	  {
  	  	int nameStart850 = this.charIndex;
  	  	int nameStartLine850 = this.line;
  	  	int nameStartCharPos850 = this.charPositionInLine;
  	  	this.mGENERIC_ID(); 
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart850, this.charIndex-1);
  	  	name.line = nameStartLine850;
  	  	name.charPositionInLine = nameStartCharPos850;


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 82:23: ( WS )?*/
  	  	int alt27 = 2;
  	  	int LA27_0 = this.input.LA(1);

  	  	if(((LA27_0 >= 9 /*'\t'*/ && LA27_0 <= 10 /*'\n'*/)
  	  	  || LA27_0 == 13/*13 /*'\r'*/*/
  	  	  || LA27_0 == 32/*32 /*' '*/*/)) {
  	  	  alt27 = 1;
  	  	}
  	  	switch (alt27) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     82:23: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(61 /*'='*/); 


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 82:31: ( WS )?*/
  	  	int alt28 = 2;
  	  	int LA28_0 = this.input.LA(1);

  	  	if(((LA28_0 >= 9 /*'\t'*/ && LA28_0 <= 10 /*'\n'*/)
  	  	  || LA28_0 == 13/*13 /*'\r'*/*/
  	  	  || LA28_0 == 32/*32 /*' '*/*/)) {
  	  	  alt28 = 1;
  	  	}
  	  	switch (alt28) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     82:31: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	int valueStart862 = this.charIndex;
  	  	int valueStartLine862 = this.line;
  	  	int valueStartCharPos862 = this.charPositionInLine;
  	  	this.mVALUE(); 
  	  	value = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, valueStart862, this.charIndex-1);
  	  	value.line = valueStartLine862;
  	  	value.charPositionInLine = valueStartCharPos862;


  	  	this.capture("Attr: ${(name != null) ? name.text : null}=${(value != null) ? value.text : null}");


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ATTRIBUTE"

  // $ANTLR start "END_TAG"
  void mEND_TAG() {
    try {
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   87:5: ( '</' ( WS )? name= GENERIC_ID ( WS )? '>' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   87:7: '</' ( WS )? name= GENERIC_ID ( WS )? '>'*/
  	  {
  	  	this.match("</"); 




  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 87:12: ( WS )?*/
  	  	int alt29 = 2;
  	  	int LA29_0 = this.input.LA(1);

  	  	if(((LA29_0 >= 9 /*'\t'*/ && LA29_0 <= 10 /*'\n'*/)
  	  	  || LA29_0 == 13/*13 /*'\r'*/*/
  	  	  || LA29_0 == 32/*32 /*' '*/*/)) {
  	  	  alt29 = 1;
  	  	}
  	  	switch (alt29) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     87:12: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	int nameStart899 = this.charIndex;
  	  	int nameStartLine899 = this.line;
  	  	int nameStartCharPos899 = this.charPositionInLine;
  	  	this.mGENERIC_ID(); 
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart899, this.charIndex-1);
  	  	name.line = nameStartLine899;
  	  	name.charPositionInLine = nameStartCharPos899;


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 87:32: ( WS )?*/
  	  	int alt30 = 2;
  	  	int LA30_0 = this.input.LA(1);

  	  	if(((LA30_0 >= 9 /*'\t'*/ && LA30_0 <= 10 /*'\n'*/)
  	  	  || LA30_0 == 13/*13 /*'\r'*/*/
  	  	  || LA30_0 == 32/*32 /*' '*/*/)) {
  	  	  alt30 = 1;
  	  	}
  	  	switch (alt30) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     87:32: WS*/
  	  	    {
  	  	    	this.mWS(); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(62 /*'>'*/); 


  	  	this.capture("End Tag: ${(name != null) ? name.text : null}");


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "END_TAG"

  // $ANTLR start "COMMENT"
  void mCOMMENT() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   92:2: ( '<!--' ( options {greedy=false; } : . )* '-->' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   92:4: '<!--' ( options {greedy=false; } : . )* '-->'*/
  	  {
  	  	this.match("<!--"); 




  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 92:11: ( options {greedy=false; } : . )**/
  	  	loop31:
  	  	do {
  	  	  int alt31 = 2;
  	  	  int LA31_0 = this.input.LA(1);

  	  	  if((LA31_0 == 45/*45 /*'-'*/*/)) {
  	  	    int LA31_1 = this.input.LA(2);

  	  	    if((LA31_1 == 45/*45 /*'-'*/*/)) {
  	  	      int LA31_3 = this.input.LA(3);

  	  	      if((LA31_3 == 62/*62 /*'>'*/*/)) {
  	  	        alt31 = 2;
  	  	      }
  	  	      else if(((LA31_3 >= 0 /*'\u0000'*/ && LA31_3 <= 61 /*'='*/)
  	  	        || (LA31_3 >= 63 /*'?'*/ && LA31_3 <= 65535 /*'\uFFFF'*/))) {
  	  	        alt31 = 1;
  	  	      }


  	  	    }
  	  	    else if(((LA31_1 >= 0 /*'\u0000'*/ && LA31_1 <= 44 /*','*/)
  	  	      || (LA31_1 >= 46 /*'.'*/ && LA31_1 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt31 = 1;
  	  	    }


  	  	  }
  	  	  else if(((LA31_0 >= 0 /*'\u0000'*/ && LA31_0 <= 44 /*','*/)
  	  	    || (LA31_0 >= 46 /*'.'*/ && LA31_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt31 = 1;
  	  	  }


  	  	  switch (alt31) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   92:38: .*/
  	  			  {
  	  			  	this.matchAny(); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop31;
  	  	  }
  	  	} while(true);


  	  	this.match("-->"); 




  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "COMMENT"

  // $ANTLR start "CDATA"
  void mCDATA() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   96:2: ( '<![CDATA[' ( options {greedy=false; } : . )* ']]>' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   96:4: '<![CDATA[' ( options {greedy=false; } : . )* ']]>'*/
  	  {
  	  	this.match("<![CDATA["); 




  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 96:16: ( options {greedy=false; } : . )**/
  	  	loop32:
  	  	do {
  	  	  int alt32 = 2;
  	  	  int LA32_0 = this.input.LA(1);

  	  	  if((LA32_0 == 93/*93 /*']'*/*/)) {
  	  	    int LA32_1 = this.input.LA(2);

  	  	    if((LA32_1 == 93/*93 /*']'*/*/)) {
  	  	      int LA32_3 = this.input.LA(3);

  	  	      if((LA32_3 == 62/*62 /*'>'*/*/)) {
  	  	        alt32 = 2;
  	  	      }
  	  	      else if(((LA32_3 >= 0 /*'\u0000'*/ && LA32_3 <= 61 /*'='*/)
  	  	        || (LA32_3 >= 63 /*'?'*/ && LA32_3 <= 65535 /*'\uFFFF'*/))) {
  	  	        alt32 = 1;
  	  	      }


  	  	    }
  	  	    else if(((LA32_1 >= 0 /*'\u0000'*/ && LA32_1 <= 92 /*'\\'*/)
  	  	      || (LA32_1 >= 94 /*'^'*/ && LA32_1 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt32 = 1;
  	  	    }


  	  	  }
  	  	  else if(((LA32_0 >= 0 /*'\u0000'*/ && LA32_0 <= 92 /*'\\'*/)
  	  	    || (LA32_0 >= 94 /*'^'*/ && LA32_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt32 = 1;
  	  	  }


  	  	  switch (alt32) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   96:43: .*/
  	  			  {
  	  			  	this.matchAny(); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop32;
  	  	  }
  	  	} while(true);


  	  	this.match("]]>"); 




  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CDATA"

  // $ANTLR start "PCDATA"
  void mPCDATA() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   99:17: ( (~ '<' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   99:19: (~ '<' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 99:19: (~ '<' )+*/
  	  	int cnt33 = 0;
  	  	loop33:
  	  	do {
  	  	  int alt33 = 2;
  	  	  int LA33_0 = this.input.LA(1);

  	  	  if(((LA33_0 >= 0 /*'\u0000'*/ && LA33_0 <= 59 /*';'*/)
  	  	    || (LA33_0 >= 61 /*'='*/ && LA33_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt33 = 1;
  	  	  }


  	  	  switch (alt33) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 59 /*';'*/)
  	  			  	  || (this.input.LA(1) >= 61 /*'='*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
  	  			  	  this.input.consume();
  	  			  	}
  	  			  	else {
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt33 >= 1) break loop33;
  	  	        EarlyExitException eee = new EarlyExitException(33, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt33++;
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "PCDATA"

  // $ANTLR start "VALUE"
  void mVALUE() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   101:16: ( ( '\\\"' (~ '\\\"' )* '\\\"' | '\\'' (~ '\\'' )* '\\'' ) )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   102:9: ( '\\\"' (~ '\\\"' )* '\\\"' | '\\'' (~ '\\'' )* '\\'' )*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 102:9: ( '\\\"' (~ '\\\"' )* '\\\"' | '\\'' (~ '\\'' )* '\\'' )*/
  	  	int alt36 = 2;
  	  	int LA36_0 = this.input.LA(1);

  	  	if((LA36_0 == 34/*34 /*'\"'*/*/)) {
  	  	  alt36 = 1;
  	  	}
  	  	else if((LA36_0 == 39/*39 /*'\''*/*/)) {
  	  	  alt36 = 2;
  	  	}
  	  	else {
  	  	  NoViableAltException nvae =
  	  	      new NoViableAltException("", 36, 0, this.input);

  	  	  throw nvae;

  	  	}
  	  	switch (alt36) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     102:11: '\\\"' (~ '\\\"' )* '\\\"'*/
  	  	    {
  	  	    	this.match(34 /*'\"'*/); 


  	  	    	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	 102:16: (~ '\\\"' )**/
  	  	    	loop34:
  	  	    	do {
  	  	    	  int alt34 = 2;
  	  	    	  int LA34_0 = this.input.LA(1);

  	  	    	  if(((LA34_0 >= 0 /*'\u0000'*/ && LA34_0 <= 33 /*'!'*/)
  	  	    	    || (LA34_0 >= 35 /*'#'*/ && LA34_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    	    alt34 = 1;
  	  	    	  }


  	  	    	  switch (alt34) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			  */
  	  	    			  {
  	  	    			  	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 33 /*'!'*/)
  	  	    			  	  || (this.input.LA(1) >= 35 /*'#'*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
  	  	    			  	  this.input.consume();
  	  	    			  	}
  	  	    			  	else {
  	  	    			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	    			  	  this.recover(mse);
  	  	    			  	  throw mse;
  	  	    			  	}


  	  	    			  }
  	  	    			  break;

  	  	    			default :
  	  	    		    break loop34;
  	  	    	  }
  	  	    	} while(true);


  	  	    	this.match(34 /*'\"'*/); 


  	  	    }
  	  	    break;
  	  	  case 2 :
  	  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	     103:11: '\\'' (~ '\\'' )* '\\''*/
  	  	    {
  	  	    	this.match(39 /*'\''*/); 


  	  	    	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    	 103:16: (~ '\\'' )**/
  	  	    	loop35:
  	  	    	do {
  	  	    	  int alt35 = 2;
  	  	    	  int LA35_0 = this.input.LA(1);

  	  	    	  if(((LA35_0 >= 0 /*'\u0000'*/ && LA35_0 <= 38 /*'&'*/)
  	  	    	    || (LA35_0 >= 40 /*'('*/ && LA35_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    	    alt35 = 1;
  	  	    	  }


  	  	    	  switch (alt35) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	    			  */
  	  	    			  {
  	  	    			  	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 38 /*'&'*/)
  	  	    			  	  || (this.input.LA(1) >= 40 /*'('*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
  	  	    			  	  this.input.consume();
  	  	    			  	}
  	  	    			  	else {
  	  	    			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	    			  	  this.recover(mse);
  	  	    			  	  throw mse;
  	  	    			  	}


  	  	    			  }
  	  	    			  break;

  	  	    			default :
  	  	    		    break loop35;
  	  	    	  }
  	  	    	} while(true);


  	  	    	this.match(39 /*'\''*/); 


  	  	    }
  	  	    break;

  	  	}


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "VALUE"

  // $ANTLR start "GENERIC_ID"
  void mGENERIC_ID() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   108:5: ( ( LETTER | '_' | ':' ) ( options {greedy=true; } : LETTER | 
  	   '0' .. '9' | '.' | '-' | '_' | ':' )* )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   108:7: ( LETTER | '_' | ':' ) ( options {greedy=true; } : LETTER | 
  	   '0' .. '9' | '.' | '-' | '_' | ':' )**/
  	  {
  	  	if(this.input.LA(1) == 58 /*':'*/
  	  	  || (this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  	  || this.input.LA(1) == 95 /*'_'*/
  	  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 109:9: ( options {greedy=true; } : LETTER | '0' .. '9' | '.' | 
  	  	 '-' | '_' | ':' )**/
  	  	loop37:
  	  	do {
  	  	  int alt37 = 7;
  	  	  switch ( this.input.LA(1) ) {
  	  	  case 65 /*'A'*/:
  	  	  case 66 /*'B'*/:
  	  	  case 67 /*'C'*/:
  	  	  case 68 /*'D'*/:
  	  	  case 69 /*'E'*/:
  	  	  case 70 /*'F'*/:
  	  	  case 71 /*'G'*/:
  	  	  case 72 /*'H'*/:
  	  	  case 73 /*'I'*/:
  	  	  case 74 /*'J'*/:
  	  	  case 75 /*'K'*/:
  	  	  case 76 /*'L'*/:
  	  	  case 77 /*'M'*/:
  	  	  case 78 /*'N'*/:
  	  	  case 79 /*'O'*/:
  	  	  case 80 /*'P'*/:
  	  	  case 81 /*'Q'*/:
  	  	  case 82 /*'R'*/:
  	  	  case 83 /*'S'*/:
  	  	  case 84 /*'T'*/:
  	  	  case 85 /*'U'*/:
  	  	  case 86 /*'V'*/:
  	  	  case 87 /*'W'*/:
  	  	  case 88 /*'X'*/:
  	  	  case 89 /*'Y'*/:
  	  	  case 90 /*'Z'*/:
  	  	  case 97 /*'a'*/:
  	  	  case 98 /*'b'*/:
  	  	  case 99 /*'c'*/:
  	  	  case 100 /*'d'*/:
  	  	  case 101 /*'e'*/:
  	  	  case 102 /*'f'*/:
  	  	  case 103 /*'g'*/:
  	  	  case 104 /*'h'*/:
  	  	  case 105 /*'i'*/:
  	  	  case 106 /*'j'*/:
  	  	  case 107 /*'k'*/:
  	  	  case 108 /*'l'*/:
  	  	  case 109 /*'m'*/:
  	  	  case 110 /*'n'*/:
  	  	  case 111 /*'o'*/:
  	  	  case 112 /*'p'*/:
  	  	  case 113 /*'q'*/:
  	  	  case 114 /*'r'*/:
  	  	  case 115 /*'s'*/:
  	  	  case 116 /*'t'*/:
  	  	  case 117 /*'u'*/:
  	  	  case 118 /*'v'*/:
  	  	  case 119 /*'w'*/:
  	  	  case 120 /*'x'*/:
  	  	  case 121 /*'y'*/:
  	  	  case 122 /*'z'*/:
  	  	    {
  	  	    alt37 = 1;
  	  	    }
  	  	    break;
  	  	  case 48 /*'0'*/:
  	  	  case 49 /*'1'*/:
  	  	  case 50 /*'2'*/:
  	  	  case 51 /*'3'*/:
  	  	  case 52 /*'4'*/:
  	  	  case 53 /*'5'*/:
  	  	  case 54 /*'6'*/:
  	  	  case 55 /*'7'*/:
  	  	  case 56 /*'8'*/:
  	  	  case 57 /*'9'*/:
  	  	    {
  	  	    alt37 = 2;
  	  	    }
  	  	    break;
  	  	  case 46 /*'.'*/:
  	  	    {
  	  	    alt37 = 3;
  	  	    }
  	  	    break;
  	  	  case 45 /*'-'*/:
  	  	    {
  	  	    alt37 = 4;
  	  	    }
  	  	    break;
  	  	  case 95 /*'_'*/:
  	  	    {
  	  	    alt37 = 5;
  	  	    }
  	  	    break;
  	  	  case 58 /*':'*/:
  	  	    {
  	  	    alt37 = 6;
  	  	    }
  	  	    break;

  	  	  }

  	  	  switch (alt37) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   109:36: LETTER*/
  	  			  {
  	  			  	this.mLETTER(); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   109:45: '0' .. '9'*/
  	  			  {
  	  			  	this.matchRange(48 /*'0'*/, 57 /*'9'*/); 


  	  			  }
  	  			  break;
  	  			case 3 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   109:56: '.'*/
  	  			  {
  	  			  	this.match(46 /*'.'*/); 


  	  			  }
  	  			  break;
  	  			case 4 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   109:62: '-'*/
  	  			  {
  	  			  	this.match(45 /*'-'*/); 


  	  			  }
  	  			  break;
  	  			case 5 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   109:68: '_'*/
  	  			  {
  	  			  	this.match(95 /*'_'*/); 


  	  			  }
  	  			  break;
  	  			case 6 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   109:74: ':'*/
  	  			  {
  	  			  	this.match(58 /*':'*/); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop37;
  	  	  }
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "GENERIC_ID"

  // $ANTLR start "LETTER"
  void mLETTER() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   113:2: ( 'a' .. 'z' | 'A' .. 'Z' )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  */
  	  {
  	  	if((this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "LETTER"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   117:14: ( ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+ )*/
  	  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	   118:9: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  	 118:9: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+*/
  	  	int cnt39 = 0;
  	  	loop39:
  	  	do {
  	  	  int alt39 = 4;
  	  	  switch ( this.input.LA(1) ) {
  	  	  case 32 /*' '*/:
  	  	    {
  	  	    alt39 = 1;
  	  	    }
  	  	    break;
  	  	  case 9 /*'\t'*/:
  	  	    {
  	  	    alt39 = 2;
  	  	    }
  	  	    break;
  	  	  case 10 /*'\n'*/:
  	  	  case 13 /*'\r'*/:
  	  	    {
  	  	    alt39 = 3;
  	  	    }
  	  	    break;

  	  	  }

  	  	  switch (alt39) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   118:13: ' '*/
  	  			  {
  	  			  	this.match(32 /*' '*/); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   119:13: '\\t'*/
  	  			  {
  	  			  	this.match(9 /*'\t'*/); 


  	  			  }
  	  			  break;
  	  			case 3 :
  	  			  /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			   120:12: ( '\\n' | '\\r\\n' | '\\r' )*/
  	  			  {
  	  			  	/* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	 120:12: ( '\\n' | '\\r\\n' | '\\r' )*/
  	  			  	int alt38 = 3;
  	  			  	int LA38_0 = this.input.LA(1);

  	  			  	if((LA38_0 == 10/*10 /*'\n'*/*/)) {
  	  			  	  alt38 = 1;
  	  			  	}
  	  			  	else if((LA38_0 == 13/*13 /*'\r'*/*/)) {
  	  			  	  int LA38_2 = this.input.LA(2);

  	  			  	  if((LA38_2 == 10/*10 /*'\n'*/*/)) {
  	  			  	    alt38 = 2;
  	  			  	  }
  	  			  	  else {
  	  			  	    alt38 = 3;
  	  			  	  }
  	  			  	}
  	  			  	else {
  	  			  	  NoViableAltException nvae =
  	  			  	      new NoViableAltException("", 38, 0, this.input);

  	  			  	  throw nvae;

  	  			  	}
  	  			  	switch (alt38) {
  	  			  	  case 1 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     120:14: '\\n'*/
  	  			  	    {
  	  			  	    	this.match(10 /*'\n'*/); 


  	  			  	    }
  	  			  	    break;
  	  			  	  case 2 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     121:15: '\\r\\n'*/
  	  			  	    {
  	  			  	    	this.match("\r\n"); 




  	  			  	    }
  	  			  	    break;
  	  			  	  case 3 :
  	  			  	    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
  	  			  	     122:15: '\\r'*/
  	  			  	    {
  	  			  	    	this.match(13 /*'\r'*/); 


  	  			  	    }
  	  			  	    break;

  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt39 >= 1) break loop39;
  	  	        EarlyExitException eee = new EarlyExitException(39, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt39++;
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
     1:8: ( DOCUMENT )*/
    /* ../runtime/dart/tests/grammars/t012lexerXML.g:
     1:10: DOCUMENT*/
    {
    	this.mDOCUMENT(); 


    }


  }  

  static final String DFA18_eotS =
      "\u003d\uffff";
  static final String DFA18_eofS =
      "\u003d\uffff";
  static final String DFA18_minS =
      "\u0001\u003c\u0011\u0009\u0002\uffff\u0012\u0009\u0002\u0000\u000b"
      "\u0009\u0001\u0000\u0001\u0009\u0001\u0000\u0007\u0009";
  static final String DFA18_maxS =
      "\u0001\u003c\u0011\u007a\u0002\uffff\u000a\u007a\u0001\u0027\u0003"
      "\u007a\u0004\u0027\u0002\uffff\u0006\u007a\u0004\u003d\u0001\u0027"
      "\u0001\uffff\u0001\u007a\u0001\uffff\u0001\u007a\u0001\u003d\u0005"
      "\u007a";
  static final String DFA18_acceptS =
      "\u0012\uffff\u0001\u0001\u0001\u0002\u0029\uffff";
  static final String DFA18_specialS =
      "\u0026\uffff\u0001\u0000\u0001\u0002\u000b\uffff\u0001\u0003\u0001"
      "\uffff\u0001\u0001\u0007\uffff";
  static final List<String> DFA18_transitionS = const [
      "\u0001\u0001",
      "\u0001\u0003\u0001\u0004\u0002\uffff\u0001\u0005\u0012\uffff\u0001"
      "\u0002\u0019\uffff\u0001\u0006\u0006\uffff\u001a\u0006\u0004\uffff"
      "\u0001\u0006\u0001\uffff\u001a\u0006",
      "\u0001\u0003\u0001\u0004\u0002\uffff\u0001\u0005\u0012\uffff\u0001"
      "\u0002\u0019\uffff\u0001\u0006\u0006\uffff\u001a\u0006\u0004\uffff"
      "\u0001\u0006\u0001\uffff\u001a\u0006",
      "\u0001\u0003\u0001\u0004\u0002\uffff\u0001\u0005\u0012\uffff\u0001"
      "\u0002\u0019\uffff\u0001\u0006\u0006\uffff\u001a\u0006\u0004\uffff"
      "\u0001\u0006\u0001\uffff\u001a\u0006",
      "\u0001\u0003\u0001\u0004\u0002\uffff\u0001\u0005\u0012\uffff\u0001"
      "\u0002\u0019\uffff\u0001\u0006\u0006\uffff\u001a\u0006\u0004\uffff"
      "\u0001\u0006\u0001\uffff\u001a\u0006",
      "\u0001\u0003\u0001\u0007\u0002\uffff\u0001\u0005\u0012\uffff\u0001"
      "\u0002\u0019\uffff\u0001\u0006\u0006\uffff\u001a\u0006\u0004\uffff"
      "\u0001\u0006\u0001\uffff\u001a\u0006",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000c\uffff\u0001\u000b\u0001\u000a\u0001\u0013\u000a\u0009"
      "\u0001\u000d\u0003\uffff\u0001\u0012\u0002\uffff\u001a\u0008\u0004"
      "\uffff\u0001\u000c\u0001\uffff\u001a\u0008",
      "\u0001\u0003\u0001\u0004\u0002\uffff\u0001\u0005\u0012\uffff\u0001"
      "\u0002\u0019\uffff\u0001\u0006\u0006\uffff\u001a\u0006\u0004\uffff"
      "\u0001\u0006\u0001\uffff\u001a\u0006",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000c\uffff\u0001\u000b\u0001\u000a\u0001\u0013\u000a\u0009"
      "\u0001\u000d\u0003\uffff\u0001\u0012\u0002\uffff\u001a\u0008\u0004"
      "\uffff\u0001\u000c\u0001\uffff\u001a\u0008",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000c\uffff\u0001\u000b\u0001\u000a\u0001\u0013\u000a\u0009"
      "\u0001\u000d\u0003\uffff\u0001\u0012\u0002\uffff\u001a\u0008\u0004"
      "\uffff\u0001\u000c\u0001\uffff\u001a\u0008",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000c\uffff\u0001\u000b\u0001\u000a\u0001\u0013\u000a\u0009"
      "\u0001\u000d\u0003\uffff\u0001\u0012\u0002\uffff\u001a\u0008\u0004"
      "\uffff\u0001\u000c\u0001\uffff\u001a\u0008",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u000f\u0001\u0020\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "",
      "",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0002\uffff"
      "\u0001\u001e\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001"
      "\u001f\u0001\uffff\u001a\u001f",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0002\uffff"
      "\u0001\u001e\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001"
      "\u001f\u0001\uffff\u001a\u001f",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0002\uffff"
      "\u0001\u001e\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001"
      "\u001f\u0001\uffff\u001a\u001f",
      "\u0001\u0015\u0001\u0021\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0002\uffff"
      "\u0001\u001e\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001"
      "\u001f\u0001\uffff\u001a\u001f",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000c\uffff\u0001\u001c\u0001\u001b\u0001\u0013\u000a\u001a"
      "\u0001\u001d\u0002\uffff\u0001\u001e\u0001\u0012\u0002\uffff\u001a"
      "\u0018\u0004\uffff\u0001\u0019\u0001\uffff\u001a\u0018",
      "\u0001\u0023\u0001\u0024\u0002\uffff\u0001\u0025\u0012\uffff\u0001"
      "\u0022\u0001\uffff\u0001\u0026\u0004\uffff\u0001\u0027",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u000f\u0001\u0010\u0002\uffff\u0001\u0011\u0012\uffff\u0001"
      "\u000e\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u0015\u0001\u0016\u0002\uffff\u0001\u0017\u0012\uffff\u0001"
      "\u0014\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0002\uffff"
      "\u0001\u001e\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001"
      "\u001f\u0001\uffff\u001a\u001f",
      "\u0001\u0023\u0001\u0024\u0002\uffff\u0001\u0025\u0012\uffff\u0001"
      "\u0022\u0001\uffff\u0001\u0026\u0004\uffff\u0001\u0027",
      "\u0001\u0023\u0001\u0024\u0002\uffff\u0001\u0025\u0012\uffff\u0001"
      "\u0022\u0001\uffff\u0001\u0026\u0004\uffff\u0001\u0027",
      "\u0001\u0023\u0001\u0024\u0002\uffff\u0001\u0025\u0012\uffff\u0001"
      "\u0022\u0001\uffff\u0001\u0026\u0004\uffff\u0001\u0027",
      "\u0001\u0023\u0001\u0032\u0002\uffff\u0001\u0025\u0012\uffff\u0001"
      "\u0022\u0001\uffff\u0001\u0026\u0004\uffff\u0001\u0027",
      "\u0022\u0033\u0001\u0034\uffdd\u0033",
      "\u0027\u0035\u0001\u0036\uffd8\u0035",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u000c\uffff\u0001\u002b\u0001\u002a\u0001\uffff\u000a\u0029"
      "\u0001\u002d\u0002\uffff\u0001\u001e\u0003\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u002c\u0001\uffff\u001a\u0028",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u001c\uffff\u0001\u001e",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u001c\uffff\u0001\u001e",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u001c\uffff\u0001\u001e",
      "\u0001\u002f\u0001\u0037\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u001c\uffff\u0001\u001e",
      "\u0001\u0023\u0001\u0024\u0002\uffff\u0001\u0025\u0012\uffff\u0001"
      "\u0022\u0001\uffff\u0001\u0026\u0004\uffff\u0001\u0027",
      "\u0022\u0033\u0001\u0034\uffdd\u0033",
      "\u0001\u0039\u0001\u003a\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0027\u0035\u0001\u0036\uffd8\u0035",
      "\u0001\u0039\u0001\u003a\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u002f\u0001\u0030\u0002\uffff\u0001\u0031\u0012\uffff\u0001"
      "\u002e\u001c\uffff\u0001\u001e",
      "\u0001\u0039\u0001\u003a\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u0039\u0001\u003a\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u0039\u0001\u003a\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u0039\u0001\u003c\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f",
      "\u0001\u0039\u0001\u003a\u0002\uffff\u0001\u003b\u0012\uffff\u0001"
      "\u0038\u000e\uffff\u0001\u0013\u000a\uffff\u0001\u001f\u0003\uffff"
      "\u0001\u0012\u0002\uffff\u001a\u001f\u0004\uffff\u0001\u001f\u0001"
      "\uffff\u001a\u001f"
  ];

  static List<int> _DFA18_eot = null; 
  static List<int> get DFA18_eot() {
    if(_DFA18_eot == null)
      _DFA18_eot = 
        DFA.unpackEncodedString(DFA18_eotS);
    return _DFA18_eot;
  }

  static List<int> _DFA18_eof = null;
  static List<int> get DFA18_eof() {
    if(_DFA18_eof == null)
      _DFA18_eof = 
        DFA.unpackEncodedString(DFA18_eofS);
    return _DFA18_eof;
  }

  static List<int> _DFA18_min = null;
  static List<int> get DFA18_min() {
    if(_DFA18_min == null)
      _DFA18_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA18_minS);
    return _DFA18_min;
  }

  static List<int> _DFA18_max = null;
  static List<int> get DFA18_max() {
    if(_DFA18_max == null)
      _DFA18_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA18_maxS);
    return _DFA18_max;
  }

  static List<int> _DFA18_accept = null;
  static List<int> get DFA18_accept() {
    if(_DFA18_accept == null)
      _DFA18_accept = 
        DFA.unpackEncodedString(DFA18_acceptS);
    return _DFA18_accept;
  }

  static List<int> _DFA18_special = null;
  static List<int> get DFA18_special() {
    if(_DFA18_special == null)
      _DFA18_special = 
        DFA.unpackEncodedString(DFA18_specialS);
    return _DFA18_special;
  }

  static List<List<int>> _DFA18_transition = null;
  static List<List<int>> get DFA18_transition() {
    if(_DFA18_transition == null) {
      int numStates = DFA18_transitionS.length;
      _DFA18_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA18_transition[i] = 
            DFA.unpackEncodedString(DFA18_transitionS[i]);
    }
    return _DFA18_transition;
  }  
}


class DFA18 extends DFA {

  DFA18(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 18;
    this.eot = t012lexerXML.DFA18_eot;
    this.eof = t012lexerXML.DFA18_eof;
    this.min = t012lexerXML.DFA18_min;
    this.max = t012lexerXML.DFA18_max;
    this.accept = t012lexerXML.DFA18_accept;
    this.special = t012lexerXML.DFA18_special;
    this.transition = t012lexerXML.DFA18_transition;
  }

  String get description() => 
        """54:7: ( START_TAG ( ELEMENT |t= PCDATA |t= CDATA |t= COMMENT |pi= PI )* END_TAG | 
EMPTY_ELEMENT )""";

  int specialStateTransition(int s, IntStream _input){
    IntStream input = _input;
    int _s = s;
    switch(s) {
      case 0 :int LA18_38 = this.recognizer.dynamic.input.LA(1);

      s = -1;
      if((LA18_38 >= 0 /*'\u0000'*/ && LA18_38 <= 33 /*'!'*/)
        || (LA18_38 >= 35 /*'#'*/ && LA18_38 <= 65535 /*'\uFFFF'*/)) {
        s = 51;
      }

      else if(LA18_38 == 34/*34 /*'\"'*/*/) {
        s = 52;
      }

      if(s>=0) return s;
      break;
      case 1 :int LA18_53 = this.recognizer.dynamic.input.LA(1);

      s = -1;
      if(LA18_53 == 39/*39 /*'\''*/*/) {
        s = 54;
      }

      else if((LA18_53 >= 0 /*'\u0000'*/ && LA18_53 <= 38 /*'&'*/)
        || (LA18_53 >= 40 /*'('*/ && LA18_53 <= 65535 /*'\uFFFF'*/)) {
        s = 53;
      }

      if(s>=0) return s;
      break;
      case 2 :int LA18_39 = this.recognizer.dynamic.input.LA(1);

      s = -1;
      if((LA18_39 >= 0 /*'\u0000'*/ && LA18_39 <= 38 /*'&'*/)
        || (LA18_39 >= 40 /*'('*/ && LA18_39 <= 65535 /*'\uFFFF'*/)) {
        s = 53;
      }

      else if(LA18_39 == 39/*39 /*'\''*/*/) {
        s = 54;
      }

      if(s>=0) return s;
      break;
      case 3 :int LA18_51 = this.recognizer.dynamic.input.LA(1);

      s = -1;
      if(LA18_51 == 34/*34 /*'\"'*/*/) {
        s = 52;
      }

      else if((LA18_51 >= 0 /*'\u0000'*/ && LA18_51 <= 33 /*'!'*/)
        || (LA18_51 >= 35 /*'#'*/ && LA18_51 <= 65535 /*'\uFFFF'*/)) {
        s = 51;
      }

      if(s>=0) return s;
      break;
    }
    NoViableAltException nvae = new NoViableAltException(this.description, 18, _s, this.recognizer.dynamic.input);
    this.recognizer.dynamic.error(nvae);
    throw nvae;
  }

}

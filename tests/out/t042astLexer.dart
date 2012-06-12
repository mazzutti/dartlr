// $ANTLR 3.4 t042astLexer.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t042astLexer extends Lexer {

  static final int EOF = -1;
  static final int T__16 = 16;
  static final int T__17 = 17;
  static final int T__18 = 18;
  static final int T__19 = 19;
  static final int T__20 = 20;
  static final int T__21 = 21;
  static final int T__22 = 22;
  static final int T__23 = 23;
  static final int T__24 = 24;
  static final int T__25 = 25;
  static final int T__26 = 26;
  static final int T__27 = 27;
  static final int T__28 = 28;
  static final int T__29 = 29;
  static final int T__30 = 30;
  static final int T__31 = 31;
  static final int T__32 = 32;
  static final int T__33 = 33;
  static final int T__34 = 34;
  static final int T__35 = 35;
  static final int T__36 = 36;
  static final int T__37 = 37;
  static final int T__38 = 38;
  static final int T__39 = 39;
  static final int T__40 = 40;
  static final int T__41 = 41;
  static final int T__42 = 42;
  static final int T__43 = 43;
  static final int T__44 = 44;
  static final int T__45 = 45;
  static final int BLOCK = 4;
  static final int CALL = 5;
  static final int EXPR = 6;
  static final int FIELD = 7;
  static final int FIELDACCESS = 8;
  static final int FLOAT = 9;
  static final int ID = 10;
  static final int INDEX = 11;
  static final int INT = 12;
  static final int VARDEF = 13;
  static final int VARIABLE = 14;
  static final int WS = 15;  
  

  Map<String, DFA> dfas;

  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t042astLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa4"] = new DFA4(this);
  }

  t042astLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa4"] = new DFA4(this);
  }

  String get grammarFileName() => "t042ast.g";

  String getRecognizerClassName() => "t042astLexer";
  
  // $ANTLR start "T__16"
  void mT__16() {
    try {
  	  int _type = T__16;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   7:7: ( '(' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   7:9: '('*/
  	  {
  	  	this.match(40 /*'('*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__16"

  // $ANTLR start "T__17"
  void mT__17() {
    try {
  	  int _type = T__17;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   8:7: ( ')' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   8:9: ')'*/
  	  {
  	  	this.match(41 /*')'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__17"

  // $ANTLR start "T__18"
  void mT__18() {
    try {
  	  int _type = T__18;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   9:7: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   9:9: '+'*/
  	  {
  	  	this.match(43 /*'+'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__18"

  // $ANTLR start "T__19"
  void mT__19() {
    try {
  	  int _type = T__19;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   10:7: ( ',' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   10:9: ','*/
  	  {
  	  	this.match(44 /*','*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__19"

  // $ANTLR start "T__20"
  void mT__20() {
    try {
  	  int _type = T__20;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   11:7: ( '.' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   11:9: '.'*/
  	  {
  	  	this.match(46 /*'.'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__20"

  // $ANTLR start "T__21"
  void mT__21() {
    try {
  	  int _type = T__21;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   12:7: ( ':' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   12:9: ':'*/
  	  {
  	  	this.match(58 /*':'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__21"

  // $ANTLR start "T__22"
  void mT__22() {
    try {
  	  int _type = T__22;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   13:7: ( ';' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   13:9: ';'*/
  	  {
  	  	this.match(59 /*';'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__22"

  // $ANTLR start "T__23"
  void mT__23() {
    try {
  	  int _type = T__23;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   14:7: ( '=' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   14:9: '='*/
  	  {
  	  	this.match(61 /*'='*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__23"

  // $ANTLR start "T__24"
  void mT__24() {
    try {
  	  int _type = T__24;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   15:7: ( '[' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   15:9: '['*/
  	  {
  	  	this.match(91 /*'['*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__24"

  // $ANTLR start "T__25"
  void mT__25() {
    try {
  	  int _type = T__25;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   16:7: ( ']' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   16:9: ']'*/
  	  {
  	  	this.match(93 /*']'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__25"

  // $ANTLR start "T__26"
  void mT__26() {
    try {
  	  int _type = T__26;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   17:7: ( 'assert' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   17:9: 'assert'*/
  	  {
  	  	this.match("assert"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__26"

  // $ANTLR start "T__27"
  void mT__27() {
    try {
  	  int _type = T__27;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   18:7: ( 'bool' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   18:9: 'bool'*/
  	  {
  	  	this.match("bool"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__27"

  // $ANTLR start "T__28"
  void mT__28() {
    try {
  	  int _type = T__28;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   19:7: ( 'class' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   19:9: 'class'*/
  	  {
  	  	this.match("class"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__28"

  // $ANTLR start "T__29"
  void mT__29() {
    try {
  	  int _type = T__29;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   20:7: ( 'else' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   20:9: 'else'*/
  	  {
  	  	this.match("else"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__29"

  // $ANTLR start "T__30"
  void mT__30() {
    try {
  	  int _type = T__30;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   21:7: ( 'extends' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   21:9: 'extends'*/
  	  {
  	  	this.match("extends"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__30"

  // $ANTLR start "T__31"
  void mT__31() {
    try {
  	  int _type = T__31;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   22:7: ( 'foo28a' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   22:9: 'foo28a'*/
  	  {
  	  	this.match("foo28a"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__31"

  // $ANTLR start "T__32"
  void mT__32() {
    try {
  	  int _type = T__32;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   23:7: ( 'foo28b' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   23:9: 'foo28b'*/
  	  {
  	  	this.match("foo28b"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__32"

  // $ANTLR start "T__33"
  void mT__33() {
    try {
  	  int _type = T__33;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   24:7: ( 'fooze' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   24:9: 'fooze'*/
  	  {
  	  	this.match("fooze"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__33"

  // $ANTLR start "T__34"
  void mT__34() {
    try {
  	  int _type = T__34;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   25:7: ( 'fooze2' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   25:9: 'fooze2'*/
  	  {
  	  	this.match("fooze2"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__34"

  // $ANTLR start "T__35"
  void mT__35() {
    try {
  	  int _type = T__35;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   26:7: ( 'for' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   26:9: 'for'*/
  	  {
  	  	this.match("for"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__35"

  // $ANTLR start "T__36"
  void mT__36() {
    try {
  	  int _type = T__36;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   27:7: ( 'if' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   27:9: 'if'*/
  	  {
  	  	this.match("if"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__36"

  // $ANTLR start "T__37"
  void mT__37() {
    try {
  	  int _type = T__37;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   28:7: ( 'implements' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   28:9: 'implements'*/
  	  {
  	  	this.match("implements"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__37"

  // $ANTLR start "T__38"
  void mT__38() {
    try {
  	  int _type = T__38;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   29:7: ( 'int' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   29:9: 'int'*/
  	  {
  	  	this.match("int"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__38"

  // $ANTLR start "T__39"
  void mT__39() {
    try {
  	  int _type = T__39;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   30:7: ( 'private' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   30:9: 'private'*/
  	  {
  	  	this.match("private"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__39"

  // $ANTLR start "T__40"
  void mT__40() {
    try {
  	  int _type = T__40;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   31:7: ( 'public' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   31:9: 'public'*/
  	  {
  	  	this.match("public"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__40"

  // $ANTLR start "T__41"
  void mT__41() {
    try {
  	  int _type = T__41;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   32:7: ( 'return' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   32:9: 'return'*/
  	  {
  	  	this.match("return"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__41"

  // $ANTLR start "T__42"
  void mT__42() {
    try {
  	  int _type = T__42;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   33:7: ( 'var' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   33:9: 'var'*/
  	  {
  	  	this.match("var"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__42"

  // $ANTLR start "T__43"
  void mT__43() {
    try {
  	  int _type = T__43;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   34:7: ( 'while' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   34:9: 'while'*/
  	  {
  	  	this.match("while"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__43"

  // $ANTLR start "T__44"
  void mT__44() {
    try {
  	  int _type = T__44;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   35:7: ( '{' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   35:9: '{'*/
  	  {
  	  	this.match(123 /*'{'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__44"

  // $ANTLR start "T__45"
  void mT__45() {
    try {
  	  int _type = T__45;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   36:7: ( '}' )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   36:9: '}'*/
  	  {
  	  	this.match(125 /*'}'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__45"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  int _type = ID;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   357:4: ( ( 'a' .. 'z' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   357:6: ( 'a' .. 'z' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t042ast.g:
  	  	 357:6: ( 'a' .. 'z' )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t042ast.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
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
  	  		    if(cnt1 >= 1) break loop1;
  	  	        EarlyExitException eee = new EarlyExitException(1, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt1++;
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ID"

  // $ANTLR start "INT"
  void mINT() {
    try {
  	  int _type = INT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   358:5: ( ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   358:7: ( '0' .. '9' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t042ast.g:
  	  	 358:7: ( '0' .. '9' )+*/
  	  	int cnt2 = 0;
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if(((LA2_0 >= 48 /*'0'*/ && LA2_0 <= 57 /*'9'*/))) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t042ast.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)) {
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
  	  		    if(cnt2 >= 1) break loop2;
  	  	        EarlyExitException eee = new EarlyExitException(2, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt2++;
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "INT"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   359:3: ( ( ' ' | '\\n' | '\\t' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t042ast.g:
  	   359:5: ( ' ' | '\\n' | '\\t' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t042ast.g:
  	  	 359:5: ( ' ' | '\\n' | '\\t' )+*/
  	  	int cnt3 = 0;
  	  	loop3:
  	  	do {
  	  	  int alt3 = 2;
  	  	  int LA3_0 = this.input.LA(1);

  	  	  if(((LA3_0 >= 9 /*'\t'*/ && LA3_0 <= 10 /*'\n'*/)
  	  	    || LA3_0 == 32/*32 /*' '*/*/)) {
  	  	    alt3 = 1;
  	  	  }


  	  	  switch (alt3) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t042ast.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 9 /*'\t'*/ && this.input.LA(1) <= 10 /*'\n'*/)
  	  			  	  || this.input.LA(1) == 32 /*' '*/) {
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
  	  		    if(cnt3 >= 1) break loop3;
  	  	        EarlyExitException eee = new EarlyExitException(3, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt3++;
  	  	} while(true);


  	  	_channel = HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t042ast.g: 
     1:8: ( T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | 
     T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | 
     T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | 
     T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | ID | 
     INT | WS )*/
    int alt4 = 33;
    alt4 = this.dfas["dfa4"].predict(this.input);
    switch (alt4) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:10: T__16*/
        {
        	this.mT__16(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:16: T__17*/
        {
        	this.mT__17(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:22: T__18*/
        {
        	this.mT__18(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:28: T__19*/
        {
        	this.mT__19(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:34: T__20*/
        {
        	this.mT__20(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:40: T__21*/
        {
        	this.mT__21(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:46: T__22*/
        {
        	this.mT__22(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:52: T__23*/
        {
        	this.mT__23(); 


        }
        break;
      case 9 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:58: T__24*/
        {
        	this.mT__24(); 


        }
        break;
      case 10 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:64: T__25*/
        {
        	this.mT__25(); 


        }
        break;
      case 11 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:70: T__26*/
        {
        	this.mT__26(); 


        }
        break;
      case 12 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:76: T__27*/
        {
        	this.mT__27(); 


        }
        break;
      case 13 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:82: T__28*/
        {
        	this.mT__28(); 


        }
        break;
      case 14 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:88: T__29*/
        {
        	this.mT__29(); 


        }
        break;
      case 15 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:94: T__30*/
        {
        	this.mT__30(); 


        }
        break;
      case 16 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:100: T__31*/
        {
        	this.mT__31(); 


        }
        break;
      case 17 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:106: T__32*/
        {
        	this.mT__32(); 


        }
        break;
      case 18 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:112: T__33*/
        {
        	this.mT__33(); 


        }
        break;
      case 19 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:118: T__34*/
        {
        	this.mT__34(); 


        }
        break;
      case 20 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:124: T__35*/
        {
        	this.mT__35(); 


        }
        break;
      case 21 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:130: T__36*/
        {
        	this.mT__36(); 


        }
        break;
      case 22 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:136: T__37*/
        {
        	this.mT__37(); 


        }
        break;
      case 23 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:142: T__38*/
        {
        	this.mT__38(); 


        }
        break;
      case 24 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:148: T__39*/
        {
        	this.mT__39(); 


        }
        break;
      case 25 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:154: T__40*/
        {
        	this.mT__40(); 


        }
        break;
      case 26 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:160: T__41*/
        {
        	this.mT__41(); 


        }
        break;
      case 27 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:166: T__42*/
        {
        	this.mT__42(); 


        }
        break;
      case 28 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:172: T__43*/
        {
        	this.mT__43(); 


        }
        break;
      case 29 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:178: T__44*/
        {
        	this.mT__44(); 


        }
        break;
      case 30 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:184: T__45*/
        {
        	this.mT__45(); 


        }
        break;
      case 31 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:190: ID*/
        {
        	this.mID(); 


        }
        break;
      case 32 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:193: INT*/
        {
        	this.mINT(); 


        }
        break;
      case 33 :
        /* ../runtime/dart/tests/grammars/t042ast.g:
         1:197: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  static final String DFA4_eotS =
      "\u000b\uffff\u000a\u0017\u0005\uffff\u0006\u0017\u0001\u002f\u000d"
      "\u0017\u0001\u003e\u0001\uffff\u0001\u0017\u0001\u0040\u0003\u0017"
      "\u0001\u0044\u0002\u0017\u0001\u0047\u0001\u0017\u0001\u0049\u0001"
      "\u0017\u0001\uffff\u0001\u0017\u0001\uffff\u0001\u0017\u0001\uffff"
      "\u0003\u0017\u0001\uffff\u0002\u0017\u0001\uffff\u0001\u0053\u0001"
      "\uffff\u0001\u0017\u0001\uffff\u0001\u0058\u0004\u0017\u0001\u005d"
      "\u0001\u005e\u0001\uffff\u0001\u0017\u0004\uffff\u0002\u0017\u0001"
      "\u0062\u0001\u0063\u0002\uffff\u0001\u0064\u0001\u0017\u0001\u0066"
      "\u0003\uffff\u0001\u0017\u0001\uffff\u0001\u0017\u0001\u0069\u0001"
      "\uffff";
  static final String DFA4_eofS =
      "\u006a\uffff";
  static final String DFA4_minS =
      "\u0001\u0009\u000a\uffff\u0001\u0073\u0001\u006f\u0002\u006c\u0001"
      "\u006f\u0001\u0066\u0001\u0072\u0001\u0065\u0001\u0061\u0001\u0068"
      "\u0005\uffff\u0001\u0073\u0001\u006f\u0001\u0061\u0001\u0073\u0001"
      "\u0074\u0001\u006f\u0001\u0061\u0001\u0070\u0001\u0074\u0001\u0069"
      "\u0001\u0062\u0001\u0074\u0001\u0072\u0001\u0069\u0001\u0065\u0001"
      "\u006c\u0001\u0073\u0002\u0065\u0001\u0032\u0001\u0061\u0001\uffff"
      "\u0001\u006c\u0001\u0061\u0001\u0076\u0001\u006c\u0001\u0075\u0001"
      "\u0061\u0001\u006c\u0001\u0072\u0001\u0061\u0001\u0073\u0001\u0061"
      "\u0001\u006e\u0001\u0038\u0001\u0065\u0001\uffff\u0001\u0065\u0001"
      "\uffff\u0001\u0061\u0001\u0069\u0001\u0072\u0001\uffff\u0001\u0065"
      "\u0001\u0074\u0001\uffff\u0001\u0061\u0001\uffff\u0001\u0064\u0001"
      "\u0061\u0001\u0032\u0001\u006d\u0001\u0074\u0001\u0063\u0001\u006e"
      "\u0002\u0061\u0001\uffff\u0001\u0073\u0004\uffff\u0002\u0065\u0002"
      "\u0061\u0002\uffff\u0001\u0061\u0001\u006e\u0001\u0061\u0003\uffff"
      "\u0001\u0074\u0001\uffff\u0001\u0073\u0001\u0061\u0001\uffff";
  static final String DFA4_maxS =
      "\u0001\u007d\u000a\uffff\u0001\u0073\u0001\u006f\u0001\u006c\u0001"
      "\u0078\u0001\u006f\u0001\u006e\u0001\u0075\u0001\u0065\u0001\u0061"
      "\u0001\u0068\u0005\uffff\u0001\u0073\u0001\u006f\u0001\u0061\u0001"
      "\u0073\u0001\u0074\u0001\u0072\u0001\u007a\u0001\u0070\u0001\u0074"
      "\u0001\u0069\u0001\u0062\u0001\u0074\u0001\u0072\u0001\u0069\u0001"
      "\u0065\u0001\u006c\u0001\u0073\u0002\u0065\u0002\u007a\u0001\uffff"
      "\u0001\u006c\u0001\u007a\u0001\u0076\u0001\u006c\u0001\u0075\u0001"
      "\u007a\u0001\u006c\u0001\u0072\u0001\u007a\u0001\u0073\u0001\u007a"
      "\u0001\u006e\u0001\u0038\u0001\u0065\u0001\uffff\u0001\u0065\u0001"
      "\uffff\u0001\u0061\u0001\u0069\u0001\u0072\u0001\uffff\u0001\u0065"
      "\u0001\u0074\u0001\uffff\u0001\u007a\u0001\uffff\u0001\u0064\u0001"
      "\u0062\u0001\u007a\u0001\u006d\u0001\u0074\u0001\u0063\u0001\u006e"
      "\u0002\u007a\u0001\uffff\u0001\u0073\u0004\uffff\u0002\u0065\u0002"
      "\u007a\u0002\uffff\u0001\u007a\u0001\u006e\u0001\u007a\u0003\uffff"
      "\u0001\u0074\u0001\uffff\u0001\u0073\u0001\u007a\u0001\uffff";
  static final String DFA4_acceptS =
      "\u0001\uffff\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001"
      "\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\u0009\u0001\u000a"
      "\u000a\uffff\u0001\u001d\u0001\u001e\u0001\u001f\u0001\u0020\u0001"
      "\u0021\u0015\uffff\u0001\u0015\u000e\uffff\u0001\u0014\u0001\uffff"
      "\u0001\u0017\u0003\uffff\u0001\u001b\u0002\uffff\u0001\u000c\u0001"
      "\uffff\u0001\u000e\u0009\uffff\u0001\u000d\u0001\uffff\u0001\u0010"
      "\u0001\u0011\u0001\u0013\u0001\u0012\u0004\uffff\u0001\u001c\u0001"
      "\u000b\u0003\uffff\u0001\u0019\u0001\u001a\u0001\u000f\u0001\uffff"
      "\u0001\u0018\u0002\uffff\u0001\u0016";
  static final String DFA4_specialS =
      "\u006a\uffff";
  static final List<String> DFA4_transitionS = const [
      "\u0002\u0019\u0015\uffff\u0001\u0019\u0007\uffff\u0001\u0001\u0001"
      "\u0002\u0001\uffff\u0001\u0003\u0001\u0004\u0001\uffff\u0001\u0005"
      "\u0001\uffff\u000a\u0018\u0001\u0006\u0001\u0007\u0001\uffff\u0001"
      "\u0008\u001d\uffff\u0001\u0009\u0001\uffff\u0001\u000a\u0003\uffff"
      "\u0001\u000b\u0001\u000c\u0001\u000d\u0001\u0017\u0001\u000e\u0001"
      "\u000f\u0002\u0017\u0001\u0010\u0006\u0017\u0001\u0011\u0001\u0017"
      "\u0001\u0012\u0003\u0017\u0001\u0013\u0001\u0014\u0003\u0017\u0001"
      "\u0015\u0001\uffff\u0001\u0016",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "\u0001\u001a",
      "\u0001\u001b",
      "\u0001\u001c",
      "\u0001\u001d\u000b\uffff\u0001\u001e",
      "\u0001\u001f",
      "\u0001\u0020\u0006\uffff\u0001\u0021\u0001\u0022",
      "\u0001\u0023\u0002\uffff\u0001\u0024",
      "\u0001\u0025",
      "\u0001\u0026",
      "\u0001\u0027",
      "",
      "",
      "",
      "",
      "",
      "\u0001\u0028",
      "\u0001\u0029",
      "\u0001\u002a",
      "\u0001\u002b",
      "\u0001\u002c",
      "\u0001\u002d\u0002\uffff\u0001\u002e",
      "\u001a\u0017",
      "\u0001\u0030",
      "\u0001\u0031",
      "\u0001\u0032",
      "\u0001\u0033",
      "\u0001\u0034",
      "\u0001\u0035",
      "\u0001\u0036",
      "\u0001\u0037",
      "\u0001\u0038",
      "\u0001\u0039",
      "\u0001\u003a",
      "\u0001\u003b",
      "\u0001\u003c\u0047\uffff\u0001\u003d",
      "\u001a\u0017",
      "",
      "\u0001\u003f",
      "\u001a\u0017",
      "\u0001\u0041",
      "\u0001\u0042",
      "\u0001\u0043",
      "\u001a\u0017",
      "\u0001\u0045",
      "\u0001\u0046",
      "\u001a\u0017",
      "\u0001\u0048",
      "\u001a\u0017",
      "\u0001\u004a",
      "\u0001\u004b",
      "\u0001\u004c",
      "",
      "\u0001\u004d",
      "",
      "\u0001\u004e",
      "\u0001\u004f",
      "\u0001\u0050",
      "",
      "\u0001\u0051",
      "\u0001\u0052",
      "",
      "\u001a\u0017",
      "",
      "\u0001\u0054",
      "\u0001\u0055\u0001\u0056",
      "\u0001\u0057\u002e\uffff\u001a\u0017",
      "\u0001\u0059",
      "\u0001\u005a",
      "\u0001\u005b",
      "\u0001\u005c",
      "\u001a\u0017",
      "\u001a\u0017",
      "",
      "\u0001\u005f",
      "",
      "",
      "",
      "",
      "\u0001\u0060",
      "\u0001\u0061",
      "\u001a\u0017",
      "\u001a\u0017",
      "",
      "",
      "\u001a\u0017",
      "\u0001\u0065",
      "\u001a\u0017",
      "",
      "",
      "",
      "\u0001\u0067",
      "",
      "\u0001\u0068",
      "\u001a\u0017",
      ""
  ];

  static List<int> _DFA4_eot = null; 
  static List<int> get DFA4_eot() {
    if(_DFA4_eot == null)
      _DFA4_eot = 
        DFA.unpackEncodedString(DFA4_eotS);
    return _DFA4_eot;
  }

  static List<int> _DFA4_eof = null;
  static List<int> get DFA4_eof() {
    if(_DFA4_eof == null)
      _DFA4_eof = 
        DFA.unpackEncodedString(DFA4_eofS);
    return _DFA4_eof;
  }

  static List<int> _DFA4_min = null;
  static List<int> get DFA4_min() {
    if(_DFA4_min == null)
      _DFA4_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA4_minS);
    return _DFA4_min;
  }

  static List<int> _DFA4_max = null;
  static List<int> get DFA4_max() {
    if(_DFA4_max == null)
      _DFA4_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA4_maxS);
    return _DFA4_max;
  }

  static List<int> _DFA4_accept = null;
  static List<int> get DFA4_accept() {
    if(_DFA4_accept == null)
      _DFA4_accept = 
        DFA.unpackEncodedString(DFA4_acceptS);
    return _DFA4_accept;
  }

  static List<int> _DFA4_special = null;
  static List<int> get DFA4_special() {
    if(_DFA4_special == null)
      _DFA4_special = 
        DFA.unpackEncodedString(DFA4_specialS);
    return _DFA4_special;
  }

  static List<List<int>> _DFA4_transition = null;
  static List<List<int>> get DFA4_transition() {
    if(_DFA4_transition == null) {
      int numStates = DFA4_transitionS.length;
      _DFA4_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA4_transition[i] = 
            DFA.unpackEncodedString(DFA4_transitionS[i]);
    }
    return _DFA4_transition;
  }  
}


class DFA4 extends DFA {

  DFA4(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 4;
    this.eot = t042astLexer.DFA4_eot;
    this.eof = t042astLexer.DFA4_eof;
    this.min = t042astLexer.DFA4_min;
    this.max = t042astLexer.DFA4_max;
    this.accept = t042astLexer.DFA4_accept;
    this.special = t042astLexer.DFA4_special;
    this.transition = t042astLexer.DFA4_transition;
  }

  String get description() => 
        """1:1: Tokens : ( T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | 
T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | 
T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | 
T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | 
ID | INT | WS );""";

}

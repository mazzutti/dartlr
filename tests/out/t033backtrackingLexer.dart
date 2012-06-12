// $ANTLR 3.4 t033backtrackingLexer.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t033backtrackingLexer extends Lexer {

  static final int EOF = -1;
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
  static final int T__46 = 46;
  static final int T__47 = 47;
  static final int T__48 = 48;
  static final int T__49 = 49;
  static final int T__50 = 50;
  static final int T__51 = 51;
  static final int T__52 = 52;
  static final int T__53 = 53;
  static final int T__54 = 54;
  static final int T__55 = 55;
  static final int T__56 = 56;
  static final int T__57 = 57;
  static final int T__58 = 58;
  static final int T__59 = 59;
  static final int T__60 = 60;
  static final int T__61 = 61;
  static final int T__62 = 62;
  static final int T__63 = 63;
  static final int T__64 = 64;
  static final int T__65 = 65;
  static final int T__66 = 66;
  static final int T__67 = 67;
  static final int T__68 = 68;
  static final int T__69 = 69;
  static final int T__70 = 70;
  static final int T__71 = 71;
  static final int T__72 = 72;
  static final int T__73 = 73;
  static final int T__74 = 74;
  static final int T__75 = 75;
  static final int T__76 = 76;
  static final int T__77 = 77;
  static final int T__78 = 78;
  static final int T__79 = 79;
  static final int T__80 = 80;
  static final int T__81 = 81;
  static final int T__82 = 82;
  static final int T__83 = 83;
  static final int T__84 = 84;
  static final int T__85 = 85;
  static final int T__86 = 86;
  static final int T__87 = 87;
  static final int T__88 = 88;
  static final int T__89 = 89;
  static final int T__90 = 90;
  static final int T__91 = 91;
  static final int T__92 = 92;
  static final int T__93 = 93;
  static final int T__94 = 94;
  static final int T__95 = 95;
  static final int T__96 = 96;
  static final int T__97 = 97;
  static final int T__98 = 98;
  static final int T__99 = 99;
  static final int T__100 = 100;
  static final int CHARACTER_LITERAL = 4;
  static final int COMMENT = 5;
  static final int DECIMAL_LITERAL = 6;
  static final int EscapeSequence = 7;
  static final int Exponent = 8;
  static final int FLOATING_POINT_LITERAL = 9;
  static final int FloatTypeSuffix = 10;
  static final int HEX_LITERAL = 11;
  static final int HexDigit = 12;
  static final int IDENTIFIER = 13;
  static final int IntegerTypeSuffix = 14;
  static final int LETTER = 15;
  static final int LINE_COMMAND = 16;
  static final int LINE_COMMENT = 17;
  static final int OCTAL_LITERAL = 18;
  static final int OctalEscape = 19;
  static final int STRING_LITERAL = 20;
  static final int UnicodeEscape = 21;
  static final int WS = 22;  
  

  Map<String, DFA> dfas;

  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t033backtrackingLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa25"] = new DFA25(this);this.dfas["dfa35"] = new DFA35(this);
  }

  t033backtrackingLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa25"] = new DFA25(this);this.dfas["dfa35"] = new DFA35(this);
  }

  String get grammarFileName() => "t033backtracking.g";

  String getRecognizerClassName() => "t033backtrackingLexer";
  
  // $ANTLR start "T__23"
  void mT__23() {
    try {
  	  int _type = T__23;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   7:7: ( '!' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   7:9: '!'*/
  	  {
  	  	this.match(33 /*'!'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   8:7: ( '!=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   8:9: '!='*/
  	  {
  	  	this.match("!="); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   9:7: ( '%' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   9:9: '%'*/
  	  {
  	  	this.match(37 /*'%'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   10:7: ( '%=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   10:9: '%='*/
  	  {
  	  	this.match("%="); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   11:7: ( '&&' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   11:9: '&&'*/
  	  {
  	  	this.match("&&"); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   12:7: ( '&' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   12:9: '&'*/
  	  {
  	  	this.match(38 /*'&'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   13:7: ( '&=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   13:9: '&='*/
  	  {
  	  	this.match("&="); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   14:7: ( '(' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   14:9: '('*/
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
  // $ANTLR end "T__30"

  // $ANTLR start "T__31"
  void mT__31() {
    try {
  	  int _type = T__31;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   15:7: ( ')' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   15:9: ')'*/
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
  // $ANTLR end "T__31"

  // $ANTLR start "T__32"
  void mT__32() {
    try {
  	  int _type = T__32;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   16:7: ( '*' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   16:9: '*'*/
  	  {
  	  	this.match(42 /*'*'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   17:7: ( '*=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   17:9: '*='*/
  	  {
  	  	this.match("*="); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   18:7: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   18:9: '+'*/
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
  // $ANTLR end "T__34"

  // $ANTLR start "T__35"
  void mT__35() {
    try {
  	  int _type = T__35;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   19:7: ( '++' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   19:9: '++'*/
  	  {
  	  	this.match("++"); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   20:7: ( '+=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   20:9: '+='*/
  	  {
  	  	this.match("+="); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   21:7: ( ',' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   21:9: ','*/
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
  // $ANTLR end "T__37"

  // $ANTLR start "T__38"
  void mT__38() {
    try {
  	  int _type = T__38;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   22:7: ( '-' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   22:9: '-'*/
  	  {
  	  	this.match(45 /*'-'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   23:7: ( '--' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   23:9: '--'*/
  	  {
  	  	this.match("--"); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   24:7: ( '-=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   24:9: '-='*/
  	  {
  	  	this.match("-="); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   25:7: ( '->' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   25:9: '->'*/
  	  {
  	  	this.match("->"); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   26:7: ( '.' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   26:9: '.'*/
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
  // $ANTLR end "T__42"

  // $ANTLR start "T__43"
  void mT__43() {
    try {
  	  int _type = T__43;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   27:7: ( '...' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   27:9: '...'*/
  	  {
  	  	this.match("..."); 




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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   28:7: ( '/' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   28:9: '/'*/
  	  {
  	  	this.match(47 /*'/'*/); 


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
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   29:7: ( '/=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   29:9: '/='*/
  	  {
  	  	this.match("/="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__45"

  // $ANTLR start "T__46"
  void mT__46() {
    try {
  	  int _type = T__46;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   30:7: ( ':' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   30:9: ':'*/
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
  // $ANTLR end "T__46"

  // $ANTLR start "T__47"
  void mT__47() {
    try {
  	  int _type = T__47;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   31:7: ( ';' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   31:9: ';'*/
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
  // $ANTLR end "T__47"

  // $ANTLR start "T__48"
  void mT__48() {
    try {
  	  int _type = T__48;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   32:7: ( '<' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   32:9: '<'*/
  	  {
  	  	this.match(60 /*'<'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__48"

  // $ANTLR start "T__49"
  void mT__49() {
    try {
  	  int _type = T__49;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   33:7: ( '<<' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   33:9: '<<'*/
  	  {
  	  	this.match("<<"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__49"

  // $ANTLR start "T__50"
  void mT__50() {
    try {
  	  int _type = T__50;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   34:7: ( '<<=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   34:9: '<<='*/
  	  {
  	  	this.match("<<="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__50"

  // $ANTLR start "T__51"
  void mT__51() {
    try {
  	  int _type = T__51;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   35:7: ( '<=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   35:9: '<='*/
  	  {
  	  	this.match("<="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__51"

  // $ANTLR start "T__52"
  void mT__52() {
    try {
  	  int _type = T__52;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   36:7: ( '=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   36:9: '='*/
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
  // $ANTLR end "T__52"

  // $ANTLR start "T__53"
  void mT__53() {
    try {
  	  int _type = T__53;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   37:7: ( '==' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   37:9: '=='*/
  	  {
  	  	this.match("=="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__53"

  // $ANTLR start "T__54"
  void mT__54() {
    try {
  	  int _type = T__54;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   38:7: ( '>' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   38:9: '>'*/
  	  {
  	  	this.match(62 /*'>'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__54"

  // $ANTLR start "T__55"
  void mT__55() {
    try {
  	  int _type = T__55;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   39:7: ( '>=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   39:9: '>='*/
  	  {
  	  	this.match(">="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__55"

  // $ANTLR start "T__56"
  void mT__56() {
    try {
  	  int _type = T__56;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   40:7: ( '>>' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   40:9: '>>'*/
  	  {
  	  	this.match(">>"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__56"

  // $ANTLR start "T__57"
  void mT__57() {
    try {
  	  int _type = T__57;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   41:7: ( '>>=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   41:9: '>>='*/
  	  {
  	  	this.match(">>="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__57"

  // $ANTLR start "T__58"
  void mT__58() {
    try {
  	  int _type = T__58;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   42:7: ( '?' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   42:9: '?'*/
  	  {
  	  	this.match(63 /*'?'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__58"

  // $ANTLR start "T__59"
  void mT__59() {
    try {
  	  int _type = T__59;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   43:7: ( '[' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   43:9: '['*/
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
  // $ANTLR end "T__59"

  // $ANTLR start "T__60"
  void mT__60() {
    try {
  	  int _type = T__60;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   44:7: ( ']' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   44:9: ']'*/
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
  // $ANTLR end "T__60"

  // $ANTLR start "T__61"
  void mT__61() {
    try {
  	  int _type = T__61;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   45:7: ( '^' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   45:9: '^'*/
  	  {
  	  	this.match(94 /*'^'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__61"

  // $ANTLR start "T__62"
  void mT__62() {
    try {
  	  int _type = T__62;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   46:7: ( '^=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   46:9: '^='*/
  	  {
  	  	this.match("^="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__62"

  // $ANTLR start "T__63"
  void mT__63() {
    try {
  	  int _type = T__63;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   47:7: ( 'auto' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   47:9: 'auto'*/
  	  {
  	  	this.match("auto"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__63"

  // $ANTLR start "T__64"
  void mT__64() {
    try {
  	  int _type = T__64;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   48:7: ( 'break' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   48:9: 'break'*/
  	  {
  	  	this.match("break"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__64"

  // $ANTLR start "T__65"
  void mT__65() {
    try {
  	  int _type = T__65;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   49:7: ( 'case' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   49:9: 'case'*/
  	  {
  	  	this.match("case"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__65"

  // $ANTLR start "T__66"
  void mT__66() {
    try {
  	  int _type = T__66;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   50:7: ( 'char' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   50:9: 'char'*/
  	  {
  	  	this.match("char"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__66"

  // $ANTLR start "T__67"
  void mT__67() {
    try {
  	  int _type = T__67;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   51:7: ( 'const' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   51:9: 'const'*/
  	  {
  	  	this.match("const"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__67"

  // $ANTLR start "T__68"
  void mT__68() {
    try {
  	  int _type = T__68;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   52:7: ( 'continue' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   52:9: 'continue'*/
  	  {
  	  	this.match("continue"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__68"

  // $ANTLR start "T__69"
  void mT__69() {
    try {
  	  int _type = T__69;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   53:7: ( 'default' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   53:9: 'default'*/
  	  {
  	  	this.match("default"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__69"

  // $ANTLR start "T__70"
  void mT__70() {
    try {
  	  int _type = T__70;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   54:7: ( 'do' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   54:9: 'do'*/
  	  {
  	  	this.match("do"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__70"

  // $ANTLR start "T__71"
  void mT__71() {
    try {
  	  int _type = T__71;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   55:7: ( 'double' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   55:9: 'double'*/
  	  {
  	  	this.match("double"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__71"

  // $ANTLR start "T__72"
  void mT__72() {
    try {
  	  int _type = T__72;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   56:7: ( 'else' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   56:9: 'else'*/
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
  // $ANTLR end "T__72"

  // $ANTLR start "T__73"
  void mT__73() {
    try {
  	  int _type = T__73;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   57:7: ( 'enum' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   57:9: 'enum'*/
  	  {
  	  	this.match("enum"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__73"

  // $ANTLR start "T__74"
  void mT__74() {
    try {
  	  int _type = T__74;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   58:7: ( 'extern' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   58:9: 'extern'*/
  	  {
  	  	this.match("extern"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__74"

  // $ANTLR start "T__75"
  void mT__75() {
    try {
  	  int _type = T__75;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   59:7: ( 'float' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   59:9: 'float'*/
  	  {
  	  	this.match("float"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__75"

  // $ANTLR start "T__76"
  void mT__76() {
    try {
  	  int _type = T__76;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   60:7: ( 'for' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   60:9: 'for'*/
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
  // $ANTLR end "T__76"

  // $ANTLR start "T__77"
  void mT__77() {
    try {
  	  int _type = T__77;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   61:7: ( 'goto' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   61:9: 'goto'*/
  	  {
  	  	this.match("goto"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__77"

  // $ANTLR start "T__78"
  void mT__78() {
    try {
  	  int _type = T__78;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   62:7: ( 'if' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   62:9: 'if'*/
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
  // $ANTLR end "T__78"

  // $ANTLR start "T__79"
  void mT__79() {
    try {
  	  int _type = T__79;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   63:7: ( 'int' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   63:9: 'int'*/
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
  // $ANTLR end "T__79"

  // $ANTLR start "T__80"
  void mT__80() {
    try {
  	  int _type = T__80;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   64:7: ( 'long' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   64:9: 'long'*/
  	  {
  	  	this.match("long"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__80"

  // $ANTLR start "T__81"
  void mT__81() {
    try {
  	  int _type = T__81;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   65:7: ( 'register' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   65:9: 'register'*/
  	  {
  	  	this.match("register"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__81"

  // $ANTLR start "T__82"
  void mT__82() {
    try {
  	  int _type = T__82;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   66:7: ( 'return' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   66:9: 'return'*/
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
  // $ANTLR end "T__82"

  // $ANTLR start "T__83"
  void mT__83() {
    try {
  	  int _type = T__83;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   67:7: ( 'short' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   67:9: 'short'*/
  	  {
  	  	this.match("short"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__83"

  // $ANTLR start "T__84"
  void mT__84() {
    try {
  	  int _type = T__84;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   68:7: ( 'signed' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   68:9: 'signed'*/
  	  {
  	  	this.match("signed"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__84"

  // $ANTLR start "T__85"
  void mT__85() {
    try {
  	  int _type = T__85;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   69:7: ( 'sizeof' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   69:9: 'sizeof'*/
  	  {
  	  	this.match("sizeof"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__85"

  // $ANTLR start "T__86"
  void mT__86() {
    try {
  	  int _type = T__86;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   70:7: ( 'static' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   70:9: 'static'*/
  	  {
  	  	this.match("static"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__86"

  // $ANTLR start "T__87"
  void mT__87() {
    try {
  	  int _type = T__87;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   71:7: ( 'struct' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   71:9: 'struct'*/
  	  {
  	  	this.match("struct"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__87"

  // $ANTLR start "T__88"
  void mT__88() {
    try {
  	  int _type = T__88;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   72:7: ( 'switch' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   72:9: 'switch'*/
  	  {
  	  	this.match("switch"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__88"

  // $ANTLR start "T__89"
  void mT__89() {
    try {
  	  int _type = T__89;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   73:7: ( 'typedef' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   73:9: 'typedef'*/
  	  {
  	  	this.match("typedef"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__89"

  // $ANTLR start "T__90"
  void mT__90() {
    try {
  	  int _type = T__90;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   74:7: ( 'union' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   74:9: 'union'*/
  	  {
  	  	this.match("union"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__90"

  // $ANTLR start "T__91"
  void mT__91() {
    try {
  	  int _type = T__91;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   75:7: ( 'unsigned' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   75:9: 'unsigned'*/
  	  {
  	  	this.match("unsigned"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__91"

  // $ANTLR start "T__92"
  void mT__92() {
    try {
  	  int _type = T__92;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   76:7: ( 'void' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   76:9: 'void'*/
  	  {
  	  	this.match("void"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__92"

  // $ANTLR start "T__93"
  void mT__93() {
    try {
  	  int _type = T__93;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   77:7: ( 'volatile' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   77:9: 'volatile'*/
  	  {
  	  	this.match("volatile"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__93"

  // $ANTLR start "T__94"
  void mT__94() {
    try {
  	  int _type = T__94;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   78:7: ( 'while' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   78:9: 'while'*/
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
  // $ANTLR end "T__94"

  // $ANTLR start "T__95"
  void mT__95() {
    try {
  	  int _type = T__95;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   79:7: ( '{' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   79:9: '{'*/
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
  // $ANTLR end "T__95"

  // $ANTLR start "T__96"
  void mT__96() {
    try {
  	  int _type = T__96;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   80:7: ( '|' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   80:9: '|'*/
  	  {
  	  	this.match(124 /*'|'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__96"

  // $ANTLR start "T__97"
  void mT__97() {
    try {
  	  int _type = T__97;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   81:7: ( '|=' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   81:9: '|='*/
  	  {
  	  	this.match("|="); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__97"

  // $ANTLR start "T__98"
  void mT__98() {
    try {
  	  int _type = T__98;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   82:7: ( '||' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   82:9: '||'*/
  	  {
  	  	this.match("||"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__98"

  // $ANTLR start "T__99"
  void mT__99() {
    try {
  	  int _type = T__99;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   83:7: ( '}' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   83:9: '}'*/
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
  // $ANTLR end "T__99"

  // $ANTLR start "T__100"
  void mT__100() {
    try {
  	  int _type = T__100;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   84:8: ( '~' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   84:10: '~'*/
  	  {
  	  	this.match(126 /*'~'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__100"

  // $ANTLR start "IDENTIFIER"
  void mIDENTIFIER() {
    try {
  	  int _type = IDENTIFIER;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   469:2: ( LETTER ( LETTER | '0' .. '9' )* )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   469:4: LETTER ( LETTER | '0' .. '9' )**/
  	  {
  	  	this.mLETTER(); 


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 469:11: ( LETTER | '0' .. '9' )**/
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if((LA1_0 == 36/*36 /*'$'*/*/
  	  	    || (LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/)
  	  	    || (LA1_0 >= 65 /*'A'*/ && LA1_0 <= 90 /*'Z'*/)
  	  	    || LA1_0 == 95/*95 /*'_'*/*/
  	  	    || (LA1_0 >= 97 /*'a'*/ && LA1_0 <= 122 /*'z'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			  */
  	  			  {
  	  			  	if(this.input.LA(1) == 36 /*'$'*/
  	  			  	  || (this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
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


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop1;
  	  	  }
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "IDENTIFIER"

  // $ANTLR start "LETTER"
  void mLETTER() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   475:2: ( '$' | 'A' .. 'Z' | 'a' .. 'z' | '_' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  */
  	  {
  	  	if(this.input.LA(1) == 36 /*'$'*/
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


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "LETTER"

  // $ANTLR start "CHARACTER_LITERAL"
  void mCHARACTER_LITERAL() {
    try {
  	  int _type = CHARACTER_LITERAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   481:5: ( '\\'' ( EscapeSequence |~ ( '\\'' | '\\\\' ) ) '\\'' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   481:9: '\\'' ( EscapeSequence |~ ( '\\'' | '\\\\' ) ) '\\''*/
  	  {
  	  	this.match(39 /*'\''*/); 


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 481:14: ( EscapeSequence |~ ( '\\'' | '\\\\' ) )*/
  	  	int alt2 = 2;
  	  	int LA2_0 = this.input.LA(1);

  	  	if((LA2_0 == 92/*92 /*'\\'*/*/)) {
  	  	  alt2 = 1;
  	  	}
  	  	else if(((LA2_0 >= 0 /*'\u0000'*/ && LA2_0 <= 38 /*'&'*/)
  	  	  || (LA2_0 >= 40 /*'('*/ && LA2_0 <= 91 /*'['*/)
  	  	  || (LA2_0 >= 93 /*']'*/ && LA2_0 <= 65535 /*'\uFFFF'*/))) {
  	  	  alt2 = 2;
  	  	}
  	  	else {
  	  	  NoViableAltException nvae =
  	  	      new NoViableAltException("", 2, 0, this.input);

  	  	  throw nvae;

  	  	}
  	  	switch (alt2) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     481:16: EscapeSequence*/
  	  	    {
  	  	    	this.mEscapeSequence(); 


  	  	    }
  	  	    break;
  	  	  case 2 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     481:33: ~ ( '\\'' | '\\\\' )*/
  	  	    {
  	  	    	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 38 /*'&'*/)
  	  	    	  || (this.input.LA(1) >= 40 /*'('*/ && this.input.LA(1) <= 91 /*'['*/)
  	  	    	  || (this.input.LA(1) >= 93 /*']'*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
  	  	    	  this.input.consume();
  	  	    	}
  	  	    	else {
  	  	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	    	  this.recover(mse);
  	  	    	  throw mse;
  	  	    	}


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(39 /*'\''*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CHARACTER_LITERAL"

  // $ANTLR start "STRING_LITERAL"
  void mSTRING_LITERAL() {
    try {
  	  int _type = STRING_LITERAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   485:5: ( '\"' ( EscapeSequence |~ ( '\\\\' | '\"' ) )* '\"' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   485:8: '\"' ( EscapeSequence |~ ( '\\\\' | '\"' ) )* '\"'*/
  	  {
  	  	this.match(34 /*'\"'*/); 


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 485:12: ( EscapeSequence |~ ( '\\\\' | '\"' ) )**/
  	  	loop3:
  	  	do {
  	  	  int alt3 = 3;
  	  	  int LA3_0 = this.input.LA(1);

  	  	  if((LA3_0 == 92/*92 /*'\\'*/*/)) {
  	  	    alt3 = 1;
  	  	  }
  	  	  else if(((LA3_0 >= 0 /*'\u0000'*/ && LA3_0 <= 33 /*'!'*/)
  	  	    || (LA3_0 >= 35 /*'#'*/ && LA3_0 <= 91 /*'['*/)
  	  	    || (LA3_0 >= 93 /*']'*/ && LA3_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt3 = 2;
  	  	  }


  	  	  switch (alt3) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			   485:14: EscapeSequence*/
  	  			  {
  	  			  	this.mEscapeSequence(); 


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			   485:31: ~ ( '\\\\' | '\"' )*/
  	  			  {
  	  			  	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 33 /*'!'*/)
  	  			  	  || (this.input.LA(1) >= 35 /*'#'*/ && this.input.LA(1) <= 91 /*'['*/)
  	  			  	  || (this.input.LA(1) >= 93 /*']'*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
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
  	  		    break loop3;
  	  	  }
  	  	} while(true);


  	  	this.match(34 /*'\"'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "STRING_LITERAL"

  // $ANTLR start "HEX_LITERAL"
  void mHEX_LITERAL() {
    try {
  	  int _type = HEX_LITERAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   488:13: ( '0' ( 'x' | 'X' ) ( HexDigit )+ ( IntegerTypeSuffix )? )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   488:15: '0' ( 'x' | 'X' ) ( HexDigit )+ ( IntegerTypeSuffix )?*/
  	  {
  	  	this.match(48 /*'0'*/); 


  	  	if(this.input.LA(1) == 88 /*'X'*/
  	  	  || this.input.LA(1) == 120 /*'x'*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 488:29: ( HexDigit )+*/
  	  	int cnt4 = 0;
  	  	loop4:
  	  	do {
  	  	  int alt4 = 2;
  	  	  int LA4_0 = this.input.LA(1);

  	  	  if(((LA4_0 >= 48 /*'0'*/ && LA4_0 <= 57 /*'9'*/)
  	  	    || (LA4_0 >= 65 /*'A'*/ && LA4_0 <= 70 /*'F'*/)
  	  	    || (LA4_0 >= 97 /*'a'*/ && LA4_0 <= 102 /*'f'*/))) {
  	  	    alt4 = 1;
  	  	  }


  	  	  switch (alt4) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
  	  			  	  || (this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 70 /*'F'*/)
  	  			  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 102 /*'f'*/)) {
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
  	  		    if(cnt4 >= 1) break loop4;
  	  	        EarlyExitException eee = new EarlyExitException(4, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt4++;
  	  	} while(true);


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 488:39: ( IntegerTypeSuffix )?*/
  	  	int alt5 = 2;
  	  	int LA5_0 = this.input.LA(1);

  	  	if((LA5_0 == 76/*76 /*'L'*/*/
  	  	  || LA5_0 == 85/*85 /*'U'*/*/
  	  	  || LA5_0 == 108/*108 /*'l'*/*/
  	  	  || LA5_0 == 117/*117 /*'u'*/*/)) {
  	  	  alt5 = 1;
  	  	}
  	  	switch (alt5) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     488:39: IntegerTypeSuffix*/
  	  	    {
  	  	    	this.mIntegerTypeSuffix(); 


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
  // $ANTLR end "HEX_LITERAL"

  // $ANTLR start "DECIMAL_LITERAL"
  void mDECIMAL_LITERAL() {
    try {
  	  int _type = DECIMAL_LITERAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   490:17: ( ( '0' | '1' .. '9' ( '0' .. '9' )* ) ( IntegerTypeSuffix )? )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   490:19: ( '0' | '1' .. '9' ( '0' .. '9' )* ) ( IntegerTypeSuffix )?*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 490:19: ( '0' | '1' .. '9' ( '0' .. '9' )* )*/
  	  	int alt7 = 2;
  	  	int LA7_0 = this.input.LA(1);

  	  	if((LA7_0 == 48/*48 /*'0'*/*/)) {
  	  	  alt7 = 1;
  	  	}
  	  	else if(((LA7_0 >= 49 /*'1'*/ && LA7_0 <= 57 /*'9'*/))) {
  	  	  alt7 = 2;
  	  	}
  	  	else {
  	  	  NoViableAltException nvae =
  	  	      new NoViableAltException("", 7, 0, this.input);

  	  	  throw nvae;

  	  	}
  	  	switch (alt7) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     490:20: '0'*/
  	  	    {
  	  	    	this.match(48 /*'0'*/); 


  	  	    }
  	  	    break;
  	  	  case 2 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     490:26: '1' .. '9' ( '0' .. '9' )**/
  	  	    {
  	  	    	this.matchRange(49 /*'1'*/, 57 /*'9'*/); 


  	  	    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	    	 490:35: ( '0' .. '9' )**/
  	  	    	loop6:
  	  	    	do {
  	  	    	  int alt6 = 2;
  	  	    	  int LA6_0 = this.input.LA(1);

  	  	    	  if(((LA6_0 >= 48 /*'0'*/ && LA6_0 <= 57 /*'9'*/))) {
  	  	    	    alt6 = 1;
  	  	    	  }


  	  	    	  switch (alt6) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	  	    		    break loop6;
  	  	    	  }
  	  	    	} while(true);


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 490:46: ( IntegerTypeSuffix )?*/
  	  	int alt8 = 2;
  	  	int LA8_0 = this.input.LA(1);

  	  	if((LA8_0 == 76/*76 /*'L'*/*/
  	  	  || LA8_0 == 85/*85 /*'U'*/*/
  	  	  || LA8_0 == 108/*108 /*'l'*/*/
  	  	  || LA8_0 == 117/*117 /*'u'*/*/)) {
  	  	  alt8 = 1;
  	  	}
  	  	switch (alt8) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     490:46: IntegerTypeSuffix*/
  	  	    {
  	  	    	this.mIntegerTypeSuffix(); 


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
  // $ANTLR end "DECIMAL_LITERAL"

  // $ANTLR start "OCTAL_LITERAL"
  void mOCTAL_LITERAL() {
    try {
  	  int _type = OCTAL_LITERAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   492:15: ( '0' ( '0' .. '7' )+ ( IntegerTypeSuffix )? )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   492:17: '0' ( '0' .. '7' )+ ( IntegerTypeSuffix )?*/
  	  {
  	  	this.match(48 /*'0'*/); 


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 492:21: ( '0' .. '7' )+*/
  	  	int cnt9 = 0;
  	  	loop9:
  	  	do {
  	  	  int alt9 = 2;
  	  	  int LA9_0 = this.input.LA(1);

  	  	  if(((LA9_0 >= 48 /*'0'*/ && LA9_0 <= 55 /*'7'*/))) {
  	  	    alt9 = 1;
  	  	  }


  	  	  switch (alt9) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 55 /*'7'*/)) {
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
  	  		    if(cnt9 >= 1) break loop9;
  	  	        EarlyExitException eee = new EarlyExitException(9, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt9++;
  	  	} while(true);


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 492:33: ( IntegerTypeSuffix )?*/
  	  	int alt10 = 2;
  	  	int LA10_0 = this.input.LA(1);

  	  	if((LA10_0 == 76/*76 /*'L'*/*/
  	  	  || LA10_0 == 85/*85 /*'U'*/*/
  	  	  || LA10_0 == 108/*108 /*'l'*/*/
  	  	  || LA10_0 == 117/*117 /*'u'*/*/)) {
  	  	  alt10 = 1;
  	  	}
  	  	switch (alt10) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     492:33: IntegerTypeSuffix*/
  	  	    {
  	  	    	this.mIntegerTypeSuffix(); 


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
  // $ANTLR end "OCTAL_LITERAL"

  // $ANTLR start "HexDigit"
  void mHexDigit() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   496:10: ( ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  */
  	  {
  	  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
  	  	  || (this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 70 /*'F'*/)
  	  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 102 /*'f'*/)) {
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
  // $ANTLR end "HexDigit"

  // $ANTLR start "IntegerTypeSuffix"
  void mIntegerTypeSuffix() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g: 
  	   500:2: ( ( 'u' | 'U' )? ( 'l' | 'L' ) | ( 'u' | 'U' ) ( 'l' | 'L' )? )*/
  	  int alt13 = 2;
  	  int LA13_0 = this.input.LA(1);

  	  if((LA13_0 == 85/*85 /*'U'*/*/
  	    || LA13_0 == 117/*117 /*'u'*/*/)) {
  	    int LA13_1 = this.input.LA(2);

  	    if((LA13_1 == 76/*76 /*'L'*/*/
  	      || LA13_1 == 108/*108 /*'l'*/*/)) {
  	      alt13 = 1;
  	    }
  	    else {
  	      alt13 = 2;
  	    }
  	  }
  	  else if((LA13_0 == 76/*76 /*'L'*/*/
  	    || LA13_0 == 108/*108 /*'l'*/*/)) {
  	    alt13 = 1;
  	  }
  	  else {
  	    NoViableAltException nvae =
  	        new NoViableAltException("", 13, 0, this.input);

  	    throw nvae;

  	  }
  	  switch (alt13) {
  	    case 1 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       500:4: ( 'u' | 'U' )? ( 'l' | 'L' )*/
  	      {
  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 500:4: ( 'u' | 'U' )?*/
  	      	int alt11 = 2;
  	      	int LA11_0 = this.input.LA(1);

  	      	if((LA11_0 == 85/*85 /*'U'*/*/
  	      	  || LA11_0 == 117/*117 /*'u'*/*/)) {
  	      	  alt11 = 1;
  	      	}
  	      	switch (alt11) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	    */
  	      	    {
  	      	    	if(this.input.LA(1) == 85 /*'U'*/
  	      	    	  || this.input.LA(1) == 117 /*'u'*/) {
  	      	    	  this.input.consume();
  	      	    	}
  	      	    	else {
  	      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	    	  this.recover(mse);
  	      	    	  throw mse;
  	      	    	}


  	      	    }
  	      	    break;

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


  	      }
  	      break;
  	    case 2 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       501:4: ( 'u' | 'U' ) ( 'l' | 'L' )?*/
  	      {
  	      	if(this.input.LA(1) == 85 /*'U'*/
  	      	  || this.input.LA(1) == 117 /*'u'*/) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 501:15: ( 'l' | 'L' )?*/
  	      	int alt12 = 2;
  	      	int LA12_0 = this.input.LA(1);

  	      	if((LA12_0 == 76/*76 /*'L'*/*/
  	      	  || LA12_0 == 108/*108 /*'l'*/*/)) {
  	      	  alt12 = 1;
  	      	}
  	      	switch (alt12) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	    */
  	      	    {
  	      	    	if(this.input.LA(1) == 76 /*'L'*/
  	      	    	  || this.input.LA(1) == 108 /*'l'*/) {
  	      	    	  this.input.consume();
  	      	    	}
  	      	    	else {
  	      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	    	  this.recover(mse);
  	      	    	  throw mse;
  	      	    	}


  	      	    }
  	      	    break;

  	      	}


  	      }
  	      break;

  	  }

    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "IntegerTypeSuffix"

  // $ANTLR start "FLOATING_POINT_LITERAL"
  void mFLOATING_POINT_LITERAL() {
    try {
  	  int _type = FLOATING_POINT_LITERAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g: 
  	   504:5: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | 
  	   '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | 
  	   ( '0' .. '9' )+ ( Exponent )? FloatTypeSuffix )*/
  	  int alt25 = 4;
  	  alt25 = this.dfas["dfa25"].predict(this.input);
  	  switch (alt25) {
  	    case 1 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       504:9: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )?*/
  	      {
  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 504:9: ( '0' .. '9' )+*/
  	      	int cnt14 = 0;
  	      	loop14:
  	      	do {
  	      	  int alt14 = 2;
  	      	  int LA14_0 = this.input.LA(1);

  	      	  if(((LA14_0 >= 48 /*'0'*/ && LA14_0 <= 57 /*'9'*/))) {
  	      	    alt14 = 1;
  	      	  }


  	      	  switch (alt14) {
  	      			case 1 :
  	      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	      		    if(cnt14 >= 1) break loop14;
  	      	        EarlyExitException eee = new EarlyExitException(14, this.input);
  	      	        throw eee;
  	      	  }
  	      	  cnt14++;
  	      	} while(true);


  	      	this.match(46 /*'.'*/); 


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 504:25: ( '0' .. '9' )**/
  	      	loop15:
  	      	do {
  	      	  int alt15 = 2;
  	      	  int LA15_0 = this.input.LA(1);

  	      	  if(((LA15_0 >= 48 /*'0'*/ && LA15_0 <= 57 /*'9'*/))) {
  	      	    alt15 = 1;
  	      	  }


  	      	  switch (alt15) {
  	      			case 1 :
  	      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	      		    break loop15;
  	      	  }
  	      	} while(true);


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 504:37: ( Exponent )?*/
  	      	int alt16 = 2;
  	      	int LA16_0 = this.input.LA(1);

  	      	if((LA16_0 == 69/*69 /*'E'*/*/
  	      	  || LA16_0 == 101/*101 /*'e'*/*/)) {
  	      	  alt16 = 1;
  	      	}
  	      	switch (alt16) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	     504:37: Exponent*/
  	      	    {
  	      	    	this.mExponent(); 


  	      	    }
  	      	    break;

  	      	}


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 504:47: ( FloatTypeSuffix )?*/
  	      	int alt17 = 2;
  	      	int LA17_0 = this.input.LA(1);

  	      	if((LA17_0 == 68/*68 /*'D'*/*/
  	      	  || LA17_0 == 70/*70 /*'F'*/*/
  	      	  || LA17_0 == 100/*100 /*'d'*/*/
  	      	  || LA17_0 == 102/*102 /*'f'*/*/)) {
  	      	  alt17 = 1;
  	      	}
  	      	switch (alt17) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	    */
  	      	    {
  	      	    	if(this.input.LA(1) == 68 /*'D'*/
  	      	    	  || this.input.LA(1) == 70 /*'F'*/
  	      	    	  || this.input.LA(1) == 100 /*'d'*/
  	      	    	  || this.input.LA(1) == 102 /*'f'*/) {
  	      	    	  this.input.consume();
  	      	    	}
  	      	    	else {
  	      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	    	  this.recover(mse);
  	      	    	  throw mse;
  	      	    	}


  	      	    }
  	      	    break;

  	      	}


  	      }
  	      break;
  	    case 2 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       505:9: '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )?*/
  	      {
  	      	this.match(46 /*'.'*/); 


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 505:13: ( '0' .. '9' )+*/
  	      	int cnt18 = 0;
  	      	loop18:
  	      	do {
  	      	  int alt18 = 2;
  	      	  int LA18_0 = this.input.LA(1);

  	      	  if(((LA18_0 >= 48 /*'0'*/ && LA18_0 <= 57 /*'9'*/))) {
  	      	    alt18 = 1;
  	      	  }


  	      	  switch (alt18) {
  	      			case 1 :
  	      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	      		    if(cnt18 >= 1) break loop18;
  	      	        EarlyExitException eee = new EarlyExitException(18, this.input);
  	      	        throw eee;
  	      	  }
  	      	  cnt18++;
  	      	} while(true);


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 505:25: ( Exponent )?*/
  	      	int alt19 = 2;
  	      	int LA19_0 = this.input.LA(1);

  	      	if((LA19_0 == 69/*69 /*'E'*/*/
  	      	  || LA19_0 == 101/*101 /*'e'*/*/)) {
  	      	  alt19 = 1;
  	      	}
  	      	switch (alt19) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	     505:25: Exponent*/
  	      	    {
  	      	    	this.mExponent(); 


  	      	    }
  	      	    break;

  	      	}


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 505:35: ( FloatTypeSuffix )?*/
  	      	int alt20 = 2;
  	      	int LA20_0 = this.input.LA(1);

  	      	if((LA20_0 == 68/*68 /*'D'*/*/
  	      	  || LA20_0 == 70/*70 /*'F'*/*/
  	      	  || LA20_0 == 100/*100 /*'d'*/*/
  	      	  || LA20_0 == 102/*102 /*'f'*/*/)) {
  	      	  alt20 = 1;
  	      	}
  	      	switch (alt20) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	    */
  	      	    {
  	      	    	if(this.input.LA(1) == 68 /*'D'*/
  	      	    	  || this.input.LA(1) == 70 /*'F'*/
  	      	    	  || this.input.LA(1) == 100 /*'d'*/
  	      	    	  || this.input.LA(1) == 102 /*'f'*/) {
  	      	    	  this.input.consume();
  	      	    	}
  	      	    	else {
  	      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	    	  this.recover(mse);
  	      	    	  throw mse;
  	      	    	}


  	      	    }
  	      	    break;

  	      	}


  	      }
  	      break;
  	    case 3 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       506:9: ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )?*/
  	      {
  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 506:9: ( '0' .. '9' )+*/
  	      	int cnt21 = 0;
  	      	loop21:
  	      	do {
  	      	  int alt21 = 2;
  	      	  int LA21_0 = this.input.LA(1);

  	      	  if(((LA21_0 >= 48 /*'0'*/ && LA21_0 <= 57 /*'9'*/))) {
  	      	    alt21 = 1;
  	      	  }


  	      	  switch (alt21) {
  	      			case 1 :
  	      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	      		    if(cnt21 >= 1) break loop21;
  	      	        EarlyExitException eee = new EarlyExitException(21, this.input);
  	      	        throw eee;
  	      	  }
  	      	  cnt21++;
  	      	} while(true);


  	      	this.mExponent(); 


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 506:30: ( FloatTypeSuffix )?*/
  	      	int alt22 = 2;
  	      	int LA22_0 = this.input.LA(1);

  	      	if((LA22_0 == 68/*68 /*'D'*/*/
  	      	  || LA22_0 == 70/*70 /*'F'*/*/
  	      	  || LA22_0 == 100/*100 /*'d'*/*/
  	      	  || LA22_0 == 102/*102 /*'f'*/*/)) {
  	      	  alt22 = 1;
  	      	}
  	      	switch (alt22) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	    */
  	      	    {
  	      	    	if(this.input.LA(1) == 68 /*'D'*/
  	      	    	  || this.input.LA(1) == 70 /*'F'*/
  	      	    	  || this.input.LA(1) == 100 /*'d'*/
  	      	    	  || this.input.LA(1) == 102 /*'f'*/) {
  	      	    	  this.input.consume();
  	      	    	}
  	      	    	else {
  	      	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	    	  this.recover(mse);
  	      	    	  throw mse;
  	      	    	}


  	      	    }
  	      	    break;

  	      	}


  	      }
  	      break;
  	    case 4 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       507:9: ( '0' .. '9' )+ ( Exponent )? FloatTypeSuffix*/
  	      {
  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 507:9: ( '0' .. '9' )+*/
  	      	int cnt23 = 0;
  	      	loop23:
  	      	do {
  	      	  int alt23 = 2;
  	      	  int LA23_0 = this.input.LA(1);

  	      	  if(((LA23_0 >= 48 /*'0'*/ && LA23_0 <= 57 /*'9'*/))) {
  	      	    alt23 = 1;
  	      	  }


  	      	  switch (alt23) {
  	      			case 1 :
  	      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	      		    if(cnt23 >= 1) break loop23;
  	      	        EarlyExitException eee = new EarlyExitException(23, this.input);
  	      	        throw eee;
  	      	  }
  	      	  cnt23++;
  	      	} while(true);


  	      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	 507:21: ( Exponent )?*/
  	      	int alt24 = 2;
  	      	int LA24_0 = this.input.LA(1);

  	      	if((LA24_0 == 69/*69 /*'E'*/*/
  	      	  || LA24_0 == 101/*101 /*'e'*/*/)) {
  	      	  alt24 = 1;
  	      	}
  	      	switch (alt24) {
  	      	  case 1 :
  	      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	      	     507:21: Exponent*/
  	      	    {
  	      	    	this.mExponent(); 


  	      	    }
  	      	    break;

  	      	}


  	      	this.mFloatTypeSuffix(); 


  	      }
  	      break;

  	  }
  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "FLOATING_POINT_LITERAL"

  // $ANTLR start "Exponent"
  void mExponent() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   512:10: ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   512:12: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+*/
  	  {
  	  	if(this.input.LA(1) == 69 /*'E'*/
  	  	  || this.input.LA(1) == 101 /*'e'*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 512:22: ( '+' | '-' )?*/
  	  	int alt26 = 2;
  	  	int LA26_0 = this.input.LA(1);

  	  	if((LA26_0 == 43/*43 /*'+'*/*/
  	  	  || LA26_0 == 45/*45 /*'-'*/*/)) {
  	  	  alt26 = 1;
  	  	}
  	  	switch (alt26) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	    */
  	  	    {
  	  	    	if(this.input.LA(1) == 43 /*'+'*/
  	  	    	  || this.input.LA(1) == 45 /*'-'*/) {
  	  	    	  this.input.consume();
  	  	    	}
  	  	    	else {
  	  	    	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	    	  this.recover(mse);
  	  	    	  throw mse;
  	  	    	}


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 512:33: ( '0' .. '9' )+*/
  	  	int cnt27 = 0;
  	  	loop27:
  	  	do {
  	  	  int alt27 = 2;
  	  	  int LA27_0 = this.input.LA(1);

  	  	  if(((LA27_0 >= 48 /*'0'*/ && LA27_0 <= 57 /*'9'*/))) {
  	  	    alt27 = 1;
  	  	  }


  	  	  switch (alt27) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
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
  	  		    if(cnt27 >= 1) break loop27;
  	  	        EarlyExitException eee = new EarlyExitException(27, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt27++;
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "Exponent"

  // $ANTLR start "FloatTypeSuffix"
  void mFloatTypeSuffix() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   515:17: ( ( 'f' | 'F' | 'd' | 'D' ) )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  */
  	  {
  	  	if(this.input.LA(1) == 68 /*'D'*/
  	  	  || this.input.LA(1) == 70 /*'F'*/
  	  	  || this.input.LA(1) == 100 /*'d'*/
  	  	  || this.input.LA(1) == 102 /*'f'*/) {
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
  // $ANTLR end "FloatTypeSuffix"

  // $ANTLR start "EscapeSequence"
  void mEscapeSequence() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g: 
  	   519:5: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | 
  	   '\\\\' ) | OctalEscape )*/
  	  int alt28 = 2;
  	  int LA28_0 = this.input.LA(1);

  	  if((LA28_0 == 92/*92 /*'\\'*/*/)) {
  	    int LA28_1 = this.input.LA(2);

  	    if((LA28_1 == 34/*34 /*'\"'*/*/
  	      || LA28_1 == 39/*39 /*'\''*/*/
  	      || LA28_1 == 92/*92 /*'\\'*/*/
  	      || LA28_1 == 98/*98 /*'b'*/*/
  	      || LA28_1 == 102/*102 /*'f'*/*/
  	      || LA28_1 == 110/*110 /*'n'*/*/
  	      || LA28_1 == 114/*114 /*'r'*/*/
  	      || LA28_1 == 116/*116 /*'t'*/*/)) {
  	      alt28 = 1;
  	    }
  	    else if(((LA28_1 >= 48 /*'0'*/ && LA28_1 <= 55 /*'7'*/))) {
  	      alt28 = 2;
  	    }
  	    else {
  	      NoViableAltException nvae =
  	          new NoViableAltException("", 28, 1, this.input);

  	      throw nvae;

  	    }
  	  }
  	  else {
  	    NoViableAltException nvae =
  	        new NoViableAltException("", 28, 0, this.input);

  	    throw nvae;

  	  }
  	  switch (alt28) {
  	    case 1 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       519:9: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )*/
  	      {
  	      	this.match(92 /*'\\'*/); 


  	      	if(this.input.LA(1) == 34 /*'\"'*/
  	      	  || this.input.LA(1) == 39 /*'\''*/
  	      	  || this.input.LA(1) == 92 /*'\\'*/
  	      	  || this.input.LA(1) == 98 /*'b'*/
  	      	  || this.input.LA(1) == 102 /*'f'*/
  	      	  || this.input.LA(1) == 110 /*'n'*/
  	      	  || this.input.LA(1) == 114 /*'r'*/
  	      	  || this.input.LA(1) == 116 /*'t'*/) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      }
  	      break;
  	    case 2 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       520:9: OctalEscape*/
  	      {
  	      	this.mOctalEscape(); 


  	      }
  	      break;

  	  }

    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "EscapeSequence"

  // $ANTLR start "OctalEscape"
  void mOctalEscape() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g: 
  	   525:5: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | 
  	   '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ) */
  	  int alt29 = 3;
  	  int LA29_0 = this.input.LA(1);

  	  if((LA29_0 == 92/*92 /*'\\'*/*/)) {
  	    int LA29_1 = this.input.LA(2);

  	    if(((LA29_1 >= 48 /*'0'*/ && LA29_1 <= 51 /*'3'*/))) {
  	      int LA29_2 = this.input.LA(3);

  	      if(((LA29_2 >= 48 /*'0'*/ && LA29_2 <= 55 /*'7'*/))) {
  	        int LA29_4 = this.input.LA(4);

  	        if(((LA29_4 >= 48 /*'0'*/ && LA29_4 <= 55 /*'7'*/))) {
  	          alt29 = 1;
  	        }
  	        else {
  	          alt29 = 2;
  	        }
  	      }
  	      else {
  	        alt29 = 3;
  	      }
  	    }
  	    else if(((LA29_1 >= 52 /*'4'*/ && LA29_1 <= 55 /*'7'*/))) {
  	      int LA29_3 = this.input.LA(3);

  	      if(((LA29_3 >= 48 /*'0'*/ && LA29_3 <= 55 /*'7'*/))) {
  	        alt29 = 2;
  	      }
  	      else {
  	        alt29 = 3;
  	      }
  	    }
  	    else {
  	      NoViableAltException nvae =
  	          new NoViableAltException("", 29, 1, this.input);

  	      throw nvae;

  	    }
  	  }
  	  else {
  	    NoViableAltException nvae =
  	        new NoViableAltException("", 29, 0, this.input);

  	    throw nvae;

  	  }
  	  switch (alt29) {
  	    case 1 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       525:9: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )*/
  	      {
  	      	this.match(92 /*'\\'*/); 


  	      	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 51 /*'3'*/)) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 55 /*'7'*/)) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 55 /*'7'*/)) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      }
  	      break;
  	    case 2 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       526:9: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )*/
  	      {
  	      	this.match(92 /*'\\'*/); 


  	      	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 55 /*'7'*/)) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 55 /*'7'*/)) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      }
  	      break;
  	    case 3 :
  	      /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	       527:9: '\\\\' ( '0' .. '7' )*/
  	      {
  	      	this.match(92 /*'\\'*/); 


  	      	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 55 /*'7'*/)) {
  	      	  this.input.consume();
  	      	}
  	      	else {
  	      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	      	  this.recover(mse);
  	      	  throw mse;
  	      	}


  	      }
  	      break;

  	  }

    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "OctalEscape"

  // $ANTLR start "UnicodeEscape"
  void mUnicodeEscape() {
    try {
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   532:5: ( '\\\\' 'u' HexDigit HexDigit HexDigit HexDigit )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   532:9: '\\\\' 'u' HexDigit HexDigit HexDigit HexDigit*/
  	  {
  	  	this.match(92 /*'\\'*/); 


  	  	this.match(117 /*'u'*/); 


  	  	this.mHexDigit(); 


  	  	this.mHexDigit(); 


  	  	this.mHexDigit(); 


  	  	this.mHexDigit(); 


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "UnicodeEscape"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   534:5: ( ( ' ' | '\\r' | '\\t' | '\\u000C' | '\\n' ) )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   534:8: ( ' ' | '\\r' | '\\t' | '\\u000C' | '\\n' )*/
  	  {
  	  	if((this.input.LA(1) >= 9 /*'\t'*/ && this.input.LA(1) <= 10 /*'\n'*/)
  	  	  || (this.input.LA(1) >= 12 /*'\f'*/ && this.input.LA(1) <= 13 /*'\r'*/)
  	  	  || this.input.LA(1) == 32 /*' '*/) {
  	  	  this.input.consume();
  	  	}
  	  	else {
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	_channel=HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  // $ANTLR start "COMMENT"
  void mCOMMENT() {
    try {
  	  int _type = COMMENT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   538:5: ( '/*' ( options {greedy=false; } : . )* '*/' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   538:9: '/*' ( options {greedy=false; } : . )* '*/'*/
  	  {
  	  	this.match("/*"); 




  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 538:14: ( options {greedy=false; } : . )**/
  	  	loop30:
  	  	do {
  	  	  int alt30 = 2;
  	  	  int LA30_0 = this.input.LA(1);

  	  	  if((LA30_0 == 42/*42 /*'*'*/*/)) {
  	  	    int LA30_1 = this.input.LA(2);

  	  	    if((LA30_1 == 47/*47 /*'/'*/*/)) {
  	  	      alt30 = 2;
  	  	    }
  	  	    else if(((LA30_1 >= 0 /*'\u0000'*/ && LA30_1 <= 46 /*'.'*/)
  	  	      || (LA30_1 >= 48 /*'0'*/ && LA30_1 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt30 = 1;
  	  	    }


  	  	  }
  	  	  else if(((LA30_0 >= 0 /*'\u0000'*/ && LA30_0 <= 41 /*')'*/)
  	  	    || (LA30_0 >= 43 /*'+'*/ && LA30_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt30 = 1;
  	  	  }


  	  	  switch (alt30) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			   538:42: .*/
  	  			  {
  	  			  	this.matchAny(); 


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop30;
  	  	  }
  	  	} while(true);


  	  	this.match("*/"); 




  	  	_channel=HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "COMMENT"

  // $ANTLR start "LINE_COMMENT"
  void mLINE_COMMENT() {
    try {
  	  int _type = LINE_COMMENT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   542:5: ( '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   542:7: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'*/
  	  {
  	  	this.match("//"); 




  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 542:12: (~ ( '\\n' | '\\r' ) )**/
  	  	loop31:
  	  	do {
  	  	  int alt31 = 2;
  	  	  int LA31_0 = this.input.LA(1);

  	  	  if(((LA31_0 >= 0 /*'\u0000'*/ && LA31_0 <= 9 /*'\t'*/)
  	  	    || (LA31_0 >= 11 /*'\u000B'*/ && LA31_0 <= 12 /*'\f'*/)
  	  	    || (LA31_0 >= 14 /*'\u000E'*/ && LA31_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt31 = 1;
  	  	  }


  	  	  switch (alt31) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 9 /*'\t'*/)
  	  			  	  || (this.input.LA(1) >= 11 /*'\u000B'*/ && this.input.LA(1) <= 12 /*'\f'*/)
  	  			  	  || (this.input.LA(1) >= 14 /*'\u000E'*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
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
  	  		    break loop31;
  	  	  }
  	  	} while(true);


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 542:26: ( '\\r' )?*/
  	  	int alt32 = 2;
  	  	int LA32_0 = this.input.LA(1);

  	  	if((LA32_0 == 13/*13 /*'\r'*/*/)) {
  	  	  alt32 = 1;
  	  	}
  	  	switch (alt32) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     542:26: '\\r'*/
  	  	    {
  	  	    	this.match(13 /*'\r'*/); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(10 /*'\n'*/); 


  	  	_channel=HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "LINE_COMMENT"

  // $ANTLR start "LINE_COMMAND"
  void mLINE_COMMAND() {
    try {
  	  int _type = LINE_COMMAND;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   547:5: ( '#' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n' )*/
  	  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	   547:7: '#' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'*/
  	  {
  	  	this.match(35 /*'#'*/); 


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 547:11: (~ ( '\\n' | '\\r' ) )**/
  	  	loop33:
  	  	do {
  	  	  int alt33 = 2;
  	  	  int LA33_0 = this.input.LA(1);

  	  	  if(((LA33_0 >= 0 /*'\u0000'*/ && LA33_0 <= 9 /*'\t'*/)
  	  	    || (LA33_0 >= 11 /*'\u000B'*/ && LA33_0 <= 12 /*'\f'*/)
  	  	    || (LA33_0 >= 14 /*'\u000E'*/ && LA33_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt33 = 1;
  	  	  }


  	  	  switch (alt33) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 0 /*'\u0000'*/ && this.input.LA(1) <= 9 /*'\t'*/)
  	  			  	  || (this.input.LA(1) >= 11 /*'\u000B'*/ && this.input.LA(1) <= 12 /*'\f'*/)
  	  			  	  || (this.input.LA(1) >= 14 /*'\u000E'*/ && this.input.LA(1) <= 65535 /*'\uFFFF'*/)) {
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
  	  		    break loop33;
  	  	  }
  	  	} while(true);


  	  	/* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	 547:25: ( '\\r' )?*/
  	  	int alt34 = 2;
  	  	int LA34_0 = this.input.LA(1);

  	  	if((LA34_0 == 13/*13 /*'\r'*/*/)) {
  	  	  alt34 = 1;
  	  	}
  	  	switch (alt34) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
  	  	     547:25: '\\r'*/
  	  	    {
  	  	    	this.match(13 /*'\r'*/); 


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(10 /*'\n'*/); 


  	  	_channel=HIDDEN;


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "LINE_COMMAND"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g: 
     1:8: ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | 
     T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | 
     T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | 
     T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | 
     T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | 
     T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | 
     T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | 
     T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | 
     T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | 
     T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | IDENTIFIER | 
     CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL | 
     OCTAL_LITERAL | FLOATING_POINT_LITERAL | WS | COMMENT | LINE_COMMENT | 
     LINE_COMMAND )*/
    int alt35 = 89;
    alt35 = this.dfas["dfa35"].predict(this.input);
    switch (alt35) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:10: T__23*/
        {
        	this.mT__23(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:16: T__24*/
        {
        	this.mT__24(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:22: T__25*/
        {
        	this.mT__25(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:28: T__26*/
        {
        	this.mT__26(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:34: T__27*/
        {
        	this.mT__27(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:40: T__28*/
        {
        	this.mT__28(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:46: T__29*/
        {
        	this.mT__29(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:52: T__30*/
        {
        	this.mT__30(); 


        }
        break;
      case 9 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:58: T__31*/
        {
        	this.mT__31(); 


        }
        break;
      case 10 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:64: T__32*/
        {
        	this.mT__32(); 


        }
        break;
      case 11 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:70: T__33*/
        {
        	this.mT__33(); 


        }
        break;
      case 12 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:76: T__34*/
        {
        	this.mT__34(); 


        }
        break;
      case 13 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:82: T__35*/
        {
        	this.mT__35(); 


        }
        break;
      case 14 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:88: T__36*/
        {
        	this.mT__36(); 


        }
        break;
      case 15 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:94: T__37*/
        {
        	this.mT__37(); 


        }
        break;
      case 16 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:100: T__38*/
        {
        	this.mT__38(); 


        }
        break;
      case 17 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:106: T__39*/
        {
        	this.mT__39(); 


        }
        break;
      case 18 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:112: T__40*/
        {
        	this.mT__40(); 


        }
        break;
      case 19 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:118: T__41*/
        {
        	this.mT__41(); 


        }
        break;
      case 20 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:124: T__42*/
        {
        	this.mT__42(); 


        }
        break;
      case 21 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:130: T__43*/
        {
        	this.mT__43(); 


        }
        break;
      case 22 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:136: T__44*/
        {
        	this.mT__44(); 


        }
        break;
      case 23 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:142: T__45*/
        {
        	this.mT__45(); 


        }
        break;
      case 24 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:148: T__46*/
        {
        	this.mT__46(); 


        }
        break;
      case 25 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:154: T__47*/
        {
        	this.mT__47(); 


        }
        break;
      case 26 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:160: T__48*/
        {
        	this.mT__48(); 


        }
        break;
      case 27 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:166: T__49*/
        {
        	this.mT__49(); 


        }
        break;
      case 28 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:172: T__50*/
        {
        	this.mT__50(); 


        }
        break;
      case 29 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:178: T__51*/
        {
        	this.mT__51(); 


        }
        break;
      case 30 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:184: T__52*/
        {
        	this.mT__52(); 


        }
        break;
      case 31 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:190: T__53*/
        {
        	this.mT__53(); 


        }
        break;
      case 32 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:196: T__54*/
        {
        	this.mT__54(); 


        }
        break;
      case 33 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:202: T__55*/
        {
        	this.mT__55(); 


        }
        break;
      case 34 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:208: T__56*/
        {
        	this.mT__56(); 


        }
        break;
      case 35 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:214: T__57*/
        {
        	this.mT__57(); 


        }
        break;
      case 36 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:220: T__58*/
        {
        	this.mT__58(); 


        }
        break;
      case 37 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:226: T__59*/
        {
        	this.mT__59(); 


        }
        break;
      case 38 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:232: T__60*/
        {
        	this.mT__60(); 


        }
        break;
      case 39 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:238: T__61*/
        {
        	this.mT__61(); 


        }
        break;
      case 40 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:244: T__62*/
        {
        	this.mT__62(); 


        }
        break;
      case 41 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:250: T__63*/
        {
        	this.mT__63(); 


        }
        break;
      case 42 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:256: T__64*/
        {
        	this.mT__64(); 


        }
        break;
      case 43 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:262: T__65*/
        {
        	this.mT__65(); 


        }
        break;
      case 44 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:268: T__66*/
        {
        	this.mT__66(); 


        }
        break;
      case 45 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:274: T__67*/
        {
        	this.mT__67(); 


        }
        break;
      case 46 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:280: T__68*/
        {
        	this.mT__68(); 


        }
        break;
      case 47 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:286: T__69*/
        {
        	this.mT__69(); 


        }
        break;
      case 48 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:292: T__70*/
        {
        	this.mT__70(); 


        }
        break;
      case 49 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:298: T__71*/
        {
        	this.mT__71(); 


        }
        break;
      case 50 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:304: T__72*/
        {
        	this.mT__72(); 


        }
        break;
      case 51 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:310: T__73*/
        {
        	this.mT__73(); 


        }
        break;
      case 52 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:316: T__74*/
        {
        	this.mT__74(); 


        }
        break;
      case 53 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:322: T__75*/
        {
        	this.mT__75(); 


        }
        break;
      case 54 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:328: T__76*/
        {
        	this.mT__76(); 


        }
        break;
      case 55 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:334: T__77*/
        {
        	this.mT__77(); 


        }
        break;
      case 56 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:340: T__78*/
        {
        	this.mT__78(); 


        }
        break;
      case 57 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:346: T__79*/
        {
        	this.mT__79(); 


        }
        break;
      case 58 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:352: T__80*/
        {
        	this.mT__80(); 


        }
        break;
      case 59 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:358: T__81*/
        {
        	this.mT__81(); 


        }
        break;
      case 60 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:364: T__82*/
        {
        	this.mT__82(); 


        }
        break;
      case 61 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:370: T__83*/
        {
        	this.mT__83(); 


        }
        break;
      case 62 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:376: T__84*/
        {
        	this.mT__84(); 


        }
        break;
      case 63 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:382: T__85*/
        {
        	this.mT__85(); 


        }
        break;
      case 64 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:388: T__86*/
        {
        	this.mT__86(); 


        }
        break;
      case 65 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:394: T__87*/
        {
        	this.mT__87(); 


        }
        break;
      case 66 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:400: T__88*/
        {
        	this.mT__88(); 


        }
        break;
      case 67 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:406: T__89*/
        {
        	this.mT__89(); 


        }
        break;
      case 68 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:412: T__90*/
        {
        	this.mT__90(); 


        }
        break;
      case 69 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:418: T__91*/
        {
        	this.mT__91(); 


        }
        break;
      case 70 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:424: T__92*/
        {
        	this.mT__92(); 


        }
        break;
      case 71 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:430: T__93*/
        {
        	this.mT__93(); 


        }
        break;
      case 72 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:436: T__94*/
        {
        	this.mT__94(); 


        }
        break;
      case 73 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:442: T__95*/
        {
        	this.mT__95(); 


        }
        break;
      case 74 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:448: T__96*/
        {
        	this.mT__96(); 


        }
        break;
      case 75 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:454: T__97*/
        {
        	this.mT__97(); 


        }
        break;
      case 76 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:460: T__98*/
        {
        	this.mT__98(); 


        }
        break;
      case 77 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:466: T__99*/
        {
        	this.mT__99(); 


        }
        break;
      case 78 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:472: T__100*/
        {
        	this.mT__100(); 


        }
        break;
      case 79 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:479: IDENTIFIER*/
        {
        	this.mIDENTIFIER(); 


        }
        break;
      case 80 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:490: CHARACTER_LITERAL*/
        {
        	this.mCHARACTER_LITERAL(); 


        }
        break;
      case 81 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:508: STRING_LITERAL*/
        {
        	this.mSTRING_LITERAL(); 


        }
        break;
      case 82 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:523: HEX_LITERAL*/
        {
        	this.mHEX_LITERAL(); 


        }
        break;
      case 83 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:535: DECIMAL_LITERAL*/
        {
        	this.mDECIMAL_LITERAL(); 


        }
        break;
      case 84 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:551: OCTAL_LITERAL*/
        {
        	this.mOCTAL_LITERAL(); 


        }
        break;
      case 85 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:565: FLOATING_POINT_LITERAL*/
        {
        	this.mFLOATING_POINT_LITERAL(); 


        }
        break;
      case 86 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:588: WS*/
        {
        	this.mWS(); 


        }
        break;
      case 87 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:591: COMMENT*/
        {
        	this.mCOMMENT(); 


        }
        break;
      case 88 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:599: LINE_COMMENT*/
        {
        	this.mLINE_COMMENT(); 


        }
        break;
      case 89 :
        /* ../runtime/dart/tests/grammars/t033backtracking.g:
         1:612: LINE_COMMAND*/
        {
        	this.mLINE_COMMAND(); 


        }
        break;

    }

  }  

  static final String DFA25_eotS =
      "\u0007\uffff\u0001\u0008\u0002\uffff";
  static final String DFA25_eofS =
      "\u000a\uffff";
  static final String DFA25_minS =
      "\u0002\u002e\u0002\uffff\u0001\u002b\u0001\uffff\u0002\u0030\u0002"
      "\uffff";
  static final String DFA25_maxS =
      "\u0001\u0039\u0001\u0066\u0002\uffff\u0001\u0039\u0001\uffff\u0001"
      "\u0039\u0001\u0066\u0002\uffff";
  static final String DFA25_acceptS =
      "\u0002\uffff\u0001\u0002\u0001\u0001\u0001\uffff\u0001\u0004\u0002"
      "\uffff\u0002\u0003";
  static final String DFA25_specialS =
      "\u000a\uffff";
  static final List<String> DFA25_transitionS = const [
      "\u0001\u0002\u0001\uffff\u000a\u0001",
      "\u0001\u0003\u0001\uffff\u000a\u0001\u000a\uffff\u0001\u0005\u0001"
      "\u0004\u0001\u0005\u001d\uffff\u0001\u0005\u0001\u0004\u0001\u0005",
      "",
      "",
      "\u0001\u0006\u0001\uffff\u0001\u0006\u0002\uffff\u000a\u0007",
      "",
      "\u000a\u0007",
      "\u000a\u0007\u000a\uffff\u0001\u0009\u0001\uffff\u0001\u0009\u001d"
      "\uffff\u0001\u0009\u0001\uffff\u0001\u0009",
      "",
      ""
  ];

  static List<int> _DFA25_eot = null; 
  static List<int> get DFA25_eot() {
    if(_DFA25_eot == null)
      _DFA25_eot = 
        DFA.unpackEncodedString(DFA25_eotS);
    return _DFA25_eot;
  }

  static List<int> _DFA25_eof = null;
  static List<int> get DFA25_eof() {
    if(_DFA25_eof == null)
      _DFA25_eof = 
        DFA.unpackEncodedString(DFA25_eofS);
    return _DFA25_eof;
  }

  static List<int> _DFA25_min = null;
  static List<int> get DFA25_min() {
    if(_DFA25_min == null)
      _DFA25_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA25_minS);
    return _DFA25_min;
  }

  static List<int> _DFA25_max = null;
  static List<int> get DFA25_max() {
    if(_DFA25_max == null)
      _DFA25_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA25_maxS);
    return _DFA25_max;
  }

  static List<int> _DFA25_accept = null;
  static List<int> get DFA25_accept() {
    if(_DFA25_accept == null)
      _DFA25_accept = 
        DFA.unpackEncodedString(DFA25_acceptS);
    return _DFA25_accept;
  }

  static List<int> _DFA25_special = null;
  static List<int> get DFA25_special() {
    if(_DFA25_special == null)
      _DFA25_special = 
        DFA.unpackEncodedString(DFA25_specialS);
    return _DFA25_special;
  }

  static List<List<int>> _DFA25_transition = null;
  static List<List<int>> get DFA25_transition() {
    if(_DFA25_transition == null) {
      int numStates = DFA25_transitionS.length;
      _DFA25_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA25_transition[i] = 
            DFA.unpackEncodedString(DFA25_transitionS[i]);
    }
    return _DFA25_transition;
  }static final String DFA35_eotS =
      "\u0001\uffff\u0001\u0030\u0001\u0032\u0001\u0035\u0002\uffff\u0001"
      "\u0037\u0001\u003a\u0001\uffff\u0001\u003e\u0001\u0040\u0001\u0045"
      "\u0002\uffff\u0001\u0048\u0001\u004a\u0001\u004d\u0003\uffff\u0001"
      "\u004f\u000f\u0028\u0001\uffff\u0001\u006b\u0005\uffff\u0002\u006d"
      "\u0019\uffff\u0001\u0071\u0005\uffff\u0001\u0073\u0003\uffff\u0006"
      "\u0028\u0001\u007b\u0006\u0028\u0001\u0082\u000b\u0028\u0005\uffff"
      "\u0001\u0093\u0001\u006d\u0004\uffff\u0007\u0028\u0001\uffff\u0004"
      "\u0028\u0001\u00a0\u0001\u0028\u0001\uffff\u0001\u00a2\u000f\u0028"
      "\u0001\uffff\u0001\u00b2\u0001\u0028\u0001\u00b4\u0001\u00b5\u0004"
      "\u0028\u0001\u00ba\u0001\u00bb\u0002\u0028\u0001\uffff\u0001\u00be"
      "\u0001\uffff\u0001\u00bf\u000b\u0028\u0001\u00cb\u0002\u0028\u0001"
      "\uffff\u0001\u00ce\u0002\uffff\u0001\u00cf\u0003\u0028\u0002\uffff"
      "\u0001\u0028\u0001\u00d4\u0002\uffff\u0002\u0028\u0001\u00d7\u0006"
      "\u0028\u0001\u00de\u0001\u0028\u0001\uffff\u0001\u0028\u0001\u00e1"
      "\u0002\uffff\u0002\u0028\u0001\u00e4\u0001\u00e5\u0001\uffff\u0001"
      "\u0028\u0001\u00e7\u0001\uffff\u0001\u00e8\u0001\u00e9\u0001\u00ea"
      "\u0001\u00eb\u0001\u00ec\u0001\u0028\u0001\uffff\u0002\u0028\u0001"
      "\uffff\u0001\u0028\u0001\u00f1\u0002\uffff\u0001\u0028\u0006\uffff"
      "\u0001\u00f3\u0002\u0028\u0001\u00f6\u0001\uffff\u0001\u00f7\u0001"
      "\uffff\u0001\u00f8\u0001\u00f9\u0004\uffff";
  static final String DFA35_eofS =
      "\u00fa\uffff";
  static final String DFA35_minS =
      "\u0001\u0009\u0002\u003d\u0001\u0026\u0002\uffff\u0001\u003d\u0001"
      "\u002b\u0001\uffff\u0001\u002d\u0001\u002e\u0001\u002a\u0002\uffff"
      "\u0001\u003c\u0002\u003d\u0003\uffff\u0001\u003d\u0001\u0075\u0001"
      "\u0072\u0001\u0061\u0001\u0065\u0002\u006c\u0001\u006f\u0001\u0066"
      "\u0001\u006f\u0001\u0065\u0001\u0068\u0001\u0079\u0001\u006e\u0001"
      "\u006f\u0001\u0068\u0001\uffff\u0001\u003d\u0005\uffff\u0002\u002e"
      "\u0019\uffff\u0001\u003d\u0005\uffff\u0001\u003d\u0003\uffff\u0001"
      "\u0074\u0001\u0065\u0001\u0073\u0001\u0061\u0001\u006e\u0001\u0066"
      "\u0001\u0024\u0001\u0073\u0001\u0075\u0001\u0074\u0001\u006f\u0001"
      "\u0072\u0001\u0074\u0001\u0024\u0001\u0074\u0001\u006e\u0001\u0067"
      "\u0001\u006f\u0001\u0067\u0001\u0061\u0001\u0069\u0001\u0070\u0003"
      "\u0069\u0005\uffff\u0002\u002e\u0004\uffff\u0001\u006f\u0001\u0061"
      "\u0001\u0065\u0001\u0072\u0001\u0073\u0001\u0061\u0001\u0062\u0001"
      "\uffff\u0001\u0065\u0001\u006d\u0001\u0065\u0001\u0061\u0001\u0024"
      "\u0001\u006f\u0001\uffff\u0001\u0024\u0001\u0067\u0001\u0069\u0001"
      "\u0075\u0001\u0072\u0001\u006e\u0001\u0065\u0001\u0074\u0001\u0075"
      "\u0001\u0074\u0001\u0065\u0001\u006f\u0001\u0069\u0001\u0064\u0001"
      "\u0061\u0001\u006c\u0001\uffff\u0001\u0024\u0001\u006b\u0002\u0024"
      "\u0001\u0074\u0001\u0069\u0001\u0075\u0001\u006c\u0002\u0024\u0001"
      "\u0072\u0001\u0074\u0001\uffff\u0001\u0024\u0001\uffff\u0001\u0024"
      "\u0001\u0073\u0001\u0072\u0001\u0074\u0001\u0065\u0001\u006f\u0001"
      "\u0069\u0002\u0063\u0001\u0064\u0001\u006e\u0001\u0067\u0001\u0024"
      "\u0001\u0074\u0001\u0065\u0001\uffff\u0001\u0024\u0002\uffff\u0001"
      "\u0024\u0001\u006e\u0001\u006c\u0001\u0065\u0002\uffff\u0001\u006e"
      "\u0001\u0024\u0002\uffff\u0001\u0074\u0001\u006e\u0001\u0024\u0001"
      "\u0064\u0001\u0066\u0001\u0063\u0001\u0074\u0001\u0068\u0001\u0065"
      "\u0001\u0024\u0001\u006e\u0001\uffff\u0001\u0069\u0001\u0024\u0002"
      "\uffff\u0001\u0075\u0001\u0074\u0002\u0024\u0001\uffff\u0001\u0065"
      "\u0001\u0024\u0001\uffff\u0005\u0024\u0001\u0066\u0001\uffff\u0001"
      "\u0065\u0001\u006c\u0001\uffff\u0001\u0065\u0001\u0024\u0002\uffff"
      "\u0001\u0072\u0006\uffff\u0001\u0024\u0001\u0064\u0001\u0065\u0001"
      "\u0024\u0001\uffff\u0001\u0024\u0001\uffff\u0002\u0024\u0004\uffff";
  static final String DFA35_maxS =
      "\u0001\u007e\u0003\u003d\u0002\uffff\u0002\u003d\u0001\uffff\u0001"
      "\u003e\u0001\u0039\u0001\u003d\u0002\uffff\u0002\u003d\u0001\u003e"
      "\u0003\uffff\u0001\u003d\u0001\u0075\u0001\u0072\u0002\u006f\u0001"
      "\u0078\u0002\u006f\u0001\u006e\u0001\u006f\u0001\u0065\u0001\u0077"
      "\u0001\u0079\u0001\u006e\u0001\u006f\u0001\u0068\u0001\uffff\u0001"
      "\u007c\u0005\uffff\u0001\u0078\u0001\u0066\u0019\uffff\u0001\u003d"
      "\u0005\uffff\u0001\u003d\u0003\uffff\u0001\u0074\u0001\u0065\u0001"
      "\u0073\u0001\u0061\u0001\u006e\u0001\u0066\u0001\u007a\u0001\u0073"
      "\u0001\u0075\u0001\u0074\u0001\u006f\u0001\u0072\u0001\u0074\u0001"
      "\u007a\u0001\u0074\u0001\u006e\u0001\u0074\u0001\u006f\u0001\u007a"
      "\u0001\u0072\u0001\u0069\u0001\u0070\u0001\u0073\u0001\u006c\u0001"
      "\u0069\u0005\uffff\u0002\u0066\u0004\uffff\u0001\u006f\u0001\u0061"
      "\u0001\u0065\u0001\u0072\u0001\u0074\u0001\u0061\u0001\u0062\u0001"
      "\uffff\u0001\u0065\u0001\u006d\u0001\u0065\u0001\u0061\u0001\u007a"
      "\u0001\u006f\u0001\uffff\u0001\u007a\u0001\u0067\u0001\u0069\u0001"
      "\u0075\u0001\u0072\u0001\u006e\u0001\u0065\u0001\u0074\u0001\u0075"
      "\u0001\u0074\u0001\u0065\u0001\u006f\u0001\u0069\u0001\u0064\u0001"
      "\u0061\u0001\u006c\u0001\uffff\u0001\u007a\u0001\u006b\u0002\u007a"
      "\u0001\u0074\u0001\u0069\u0001\u0075\u0001\u006c\u0002\u007a\u0001"
      "\u0072\u0001\u0074\u0001\uffff\u0001\u007a\u0001\uffff\u0001\u007a"
      "\u0001\u0073\u0001\u0072\u0001\u0074\u0001\u0065\u0001\u006f\u0001"
      "\u0069\u0002\u0063\u0001\u0064\u0001\u006e\u0001\u0067\u0001\u007a"
      "\u0001\u0074\u0001\u0065\u0001\uffff\u0001\u007a\u0002\uffff\u0001"
      "\u007a\u0001\u006e\u0001\u006c\u0001\u0065\u0002\uffff\u0001\u006e"
      "\u0001\u007a\u0002\uffff\u0001\u0074\u0001\u006e\u0001\u007a\u0001"
      "\u0064\u0001\u0066\u0001\u0063\u0001\u0074\u0001\u0068\u0001\u0065"
      "\u0001\u007a\u0001\u006e\u0001\uffff\u0001\u0069\u0001\u007a\u0002"
      "\uffff\u0001\u0075\u0001\u0074\u0002\u007a\u0001\uffff\u0001\u0065"
      "\u0001\u007a\u0001\uffff\u0005\u007a\u0001\u0066\u0001\uffff\u0001"
      "\u0065\u0001\u006c\u0001\uffff\u0001\u0065\u0001\u007a\u0002\uffff"
      "\u0001\u0072\u0006\uffff\u0001\u007a\u0001\u0064\u0001\u0065\u0001"
      "\u007a\u0001\uffff\u0001\u007a\u0001\uffff\u0002\u007a\u0004\uffff";
  static final String DFA35_acceptS =
      "\u0004\uffff\u0001\u0008\u0001\u0009\u0002\uffff\u0001\u000f\u0003"
      "\uffff\u0001\u0018\u0001\u0019\u0003\uffff\u0001\u0024\u0001\u0025"
      "\u0001\u0026\u0010\uffff\u0001\u0049\u0001\uffff\u0001\u004d\u0001"
      "\u004e\u0001\u004f\u0001\u0050\u0001\u0051\u0002\uffff\u0001\u0056"
      "\u0001\u0059\u0001\u0002\u0001\u0001\u0001\u0004\u0001\u0003\u0001"
      "\u0005\u0001\u0007\u0001\u0006\u0001\u000b\u0001\u000a\u0001\u000d"
      "\u0001\u000e\u0001\u000c\u0001\u0011\u0001\u0012\u0001\u0013\u0001"
      "\u0010\u0001\u0015\u0001\u0014\u0001\u0055\u0001\u0017\u0001\u0057"
      "\u0001\u0058\u0001\u0016\u0001\uffff\u0001\u001d\u0001\u001a\u0001"
      "\u001f\u0001\u001e\u0001\u0021\u0001\uffff\u0001\u0020\u0001\u0028"
      "\u0001\u0027\u0019\uffff\u0001\u004b\u0001\u004c\u0001\u004a\u0001"
      "\u0052\u0001\u0053\u0002\uffff\u0001\u001c\u0001\u001b\u0001\u0023"
      "\u0001\u0022\u0007\uffff\u0001\u0030\u0006\uffff\u0001\u0038\u0010"
      "\uffff\u0001\u0054\u000c\uffff\u0001\u0036\u0001\uffff\u0001\u0039"
      "\u000f\uffff\u0001\u0029\u0001\uffff\u0001\u002b\u0001\u002c\u0004"
      "\uffff\u0001\u0032\u0001\u0033\u0002\uffff\u0001\u0037\u0001\u003a"
      "\u000b\uffff\u0001\u0046\u0002\uffff\u0001\u002a\u0001\u002d\u0004"
      "\uffff\u0001\u0035\u0002\uffff\u0001\u003d\u0006\uffff\u0001\u0044"
      "\u0002\uffff\u0001\u0048\u0002\uffff\u0001\u0031\u0001\u0034\u0001"
      "\uffff\u0001\u003c\u0001\u003e\u0001\u003f\u0001\u0040\u0001\u0041"
      "\u0001\u0042\u0004\uffff\u0001\u002f\u0001\uffff\u0001\u0043\u0002"
      "\uffff\u0001\u002e\u0001\u003b\u0001\u0045\u0001\u0047";
  static final String DFA35_specialS =
      "\u00fa\uffff";
  static final List<String> DFA35_transitionS = const [
      "\u0002\u002d\u0001\uffff\u0002\u002d\u0012\uffff\u0001\u002d\u0001"
      "\u0001\u0001\u002a\u0001\u002e\u0001\u0028\u0001\u0002\u0001\u0003"
      "\u0001\u0029\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001"
      "\u0008\u0001\u0009\u0001\u000a\u0001\u000b\u0001\u002b\u0009\u002c"
      "\u0001\u000c\u0001\u000d\u0001\u000e\u0001\u000f\u0001\u0010\u0001"
      "\u0011\u0001\uffff\u001a\u0028\u0001\u0012\u0001\uffff\u0001\u0013"
      "\u0001\u0014\u0001\u0028\u0001\uffff\u0001\u0015\u0001\u0016\u0001"
      "\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u0028"
      "\u0001\u001c\u0002\u0028\u0001\u001d\u0005\u0028\u0001\u001e\u0001"
      "\u001f\u0001\u0020\u0001\u0021\u0001\u0022\u0001\u0023\u0003\u0028"
      "\u0001\u0024\u0001\u0025\u0001\u0026\u0001\u0027",
      "\u0001\u002f",
      "\u0001\u0031",
      "\u0001\u0033\u0016\uffff\u0001\u0034",
      "",
      "",
      "\u0001\u0036",
      "\u0001\u0038\u0011\uffff\u0001\u0039",
      "",
      "\u0001\u003b\u000f\uffff\u0001\u003c\u0001\u003d",
      "\u0001\u003f\u0001\uffff\u000a\u0041",
      "\u0001\u0043\u0004\uffff\u0001\u0044\u000d\uffff\u0001\u0042",
      "",
      "",
      "\u0001\u0046\u0001\u0047",
      "\u0001\u0049",
      "\u0001\u004b\u0001\u004c",
      "",
      "",
      "",
      "\u0001\u004e",
      "\u0001\u0050",
      "\u0001\u0051",
      "\u0001\u0052\u0006\uffff\u0001\u0053\u0006\uffff\u0001\u0054",
      "\u0001\u0055\u0009\uffff\u0001\u0056",
      "\u0001\u0057\u0001\uffff\u0001\u0058\u0009\uffff\u0001\u0059",
      "\u0001\u005a\u0002\uffff\u0001\u005b",
      "\u0001\u005c",
      "\u0001\u005d\u0007\uffff\u0001\u005e",
      "\u0001\u005f",
      "\u0001\u0060",
      "\u0001\u0061\u0001\u0062\u000a\uffff\u0001\u0063\u0002\uffff\u0001"
      "\u0064",
      "\u0001\u0065",
      "\u0001\u0066",
      "\u0001\u0067",
      "\u0001\u0068",
      "",
      "\u0001\u0069\u003e\uffff\u0001\u006a",
      "",
      "",
      "",
      "",
      "",
      "\u0001\u0041\u0001\uffff\u0008\u006e\u0002\u0041\u000a\uffff\u0003"
      "\u0041\u0011\uffff\u0001\u006c\u000b\uffff\u0003\u0041\u0011\uffff"
      "\u0001\u006c",
      "\u0001\u0041\u0001\uffff\u000a\u006f\u000a\uffff\u0003\u0041\u001d"
      "\uffff\u0003\u0041",
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
      "",
      "",
      "",
      "",
      "",
      "\u0001\u0070",
      "",
      "",
      "",
      "",
      "",
      "\u0001\u0072",
      "",
      "",
      "",
      "\u0001\u0074",
      "\u0001\u0075",
      "\u0001\u0076",
      "\u0001\u0077",
      "\u0001\u0078",
      "\u0001\u0079",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u0014\u0028\u0001\u007a\u0005\u0028",
      "\u0001\u007c",
      "\u0001\u007d",
      "\u0001\u007e",
      "\u0001\u007f",
      "\u0001\u0080",
      "\u0001\u0081",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0083",
      "\u0001\u0084",
      "\u0001\u0085\u000c\uffff\u0001\u0086",
      "\u0001\u0087",
      "\u0001\u0088\u0012\uffff\u0001\u0089",
      "\u0001\u008a\u0010\uffff\u0001\u008b",
      "\u0001\u008c",
      "\u0001\u008d",
      "\u0001\u008e\u0009\uffff\u0001\u008f",
      "\u0001\u0090\u0002\uffff\u0001\u0091",
      "\u0001\u0092",
      "",
      "",
      "",
      "",
      "",
      "\u0001\u0041\u0001\uffff\u0008\u006e\u0002\u0041\u000a\uffff\u0003"
      "\u0041\u001d\uffff\u0003\u0041",
      "\u0001\u0041\u0001\uffff\u000a\u006f\u000a\uffff\u0003\u0041\u001d"
      "\uffff\u0003\u0041",
      "",
      "",
      "",
      "",
      "\u0001\u0094",
      "\u0001\u0095",
      "\u0001\u0096",
      "\u0001\u0097",
      "\u0001\u0098\u0001\u0099",
      "\u0001\u009a",
      "\u0001\u009b",
      "",
      "\u0001\u009c",
      "\u0001\u009d",
      "\u0001\u009e",
      "\u0001\u009f",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00a1",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00a3",
      "\u0001\u00a4",
      "\u0001\u00a5",
      "\u0001\u00a6",
      "\u0001\u00a7",
      "\u0001\u00a8",
      "\u0001\u00a9",
      "\u0001\u00aa",
      "\u0001\u00ab",
      "\u0001\u00ac",
      "\u0001\u00ad",
      "\u0001\u00ae",
      "\u0001\u00af",
      "\u0001\u00b0",
      "\u0001\u00b1",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00b3",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00b6",
      "\u0001\u00b7",
      "\u0001\u00b8",
      "\u0001\u00b9",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00bc",
      "\u0001\u00bd",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00c0",
      "\u0001\u00c1",
      "\u0001\u00c2",
      "\u0001\u00c3",
      "\u0001\u00c4",
      "\u0001\u00c5",
      "\u0001\u00c6",
      "\u0001\u00c7",
      "\u0001\u00c8",
      "\u0001\u00c9",
      "\u0001\u00ca",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00cc",
      "\u0001\u00cd",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00d0",
      "\u0001\u00d1",
      "\u0001\u00d2",
      "",
      "",
      "\u0001\u00d3",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "",
      "\u0001\u00d5",
      "\u0001\u00d6",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00d8",
      "\u0001\u00d9",
      "\u0001\u00da",
      "\u0001\u00db",
      "\u0001\u00dc",
      "\u0001\u00dd",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00df",
      "",
      "\u0001\u00e0",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "",
      "\u0001\u00e2",
      "\u0001\u00e3",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "\u0001\u00e6",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00ed",
      "",
      "\u0001\u00ee",
      "\u0001\u00ef",
      "",
      "\u0001\u00f0",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "",
      "\u0001\u00f2",
      "",
      "",
      "",
      "",
      "",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u00f4",
      "\u0001\u00f5",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "\u0001\u0028\u000b\uffff\u000a\u0028\u0007\uffff\u001a\u0028\u0004"
      "\uffff\u0001\u0028\u0001\uffff\u001a\u0028",
      "",
      "",
      "",
      ""
  ];

  static List<int> _DFA35_eot = null; 
  static List<int> get DFA35_eot() {
    if(_DFA35_eot == null)
      _DFA35_eot = 
        DFA.unpackEncodedString(DFA35_eotS);
    return _DFA35_eot;
  }

  static List<int> _DFA35_eof = null;
  static List<int> get DFA35_eof() {
    if(_DFA35_eof == null)
      _DFA35_eof = 
        DFA.unpackEncodedString(DFA35_eofS);
    return _DFA35_eof;
  }

  static List<int> _DFA35_min = null;
  static List<int> get DFA35_min() {
    if(_DFA35_min == null)
      _DFA35_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA35_minS);
    return _DFA35_min;
  }

  static List<int> _DFA35_max = null;
  static List<int> get DFA35_max() {
    if(_DFA35_max == null)
      _DFA35_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA35_maxS);
    return _DFA35_max;
  }

  static List<int> _DFA35_accept = null;
  static List<int> get DFA35_accept() {
    if(_DFA35_accept == null)
      _DFA35_accept = 
        DFA.unpackEncodedString(DFA35_acceptS);
    return _DFA35_accept;
  }

  static List<int> _DFA35_special = null;
  static List<int> get DFA35_special() {
    if(_DFA35_special == null)
      _DFA35_special = 
        DFA.unpackEncodedString(DFA35_specialS);
    return _DFA35_special;
  }

  static List<List<int>> _DFA35_transition = null;
  static List<List<int>> get DFA35_transition() {
    if(_DFA35_transition == null) {
      int numStates = DFA35_transitionS.length;
      _DFA35_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA35_transition[i] = 
            DFA.unpackEncodedString(DFA35_transitionS[i]);
    }
    return _DFA35_transition;
  }  
}


class DFA25 extends DFA {

  DFA25(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 25;
    this.eot = t033backtrackingLexer.DFA25_eot;
    this.eof = t033backtrackingLexer.DFA25_eof;
    this.min = t033backtrackingLexer.DFA25_min;
    this.max = t033backtrackingLexer.DFA25_max;
    this.accept = t033backtrackingLexer.DFA25_accept;
    this.special = t033backtrackingLexer.DFA25_special;
    this.transition = t033backtrackingLexer.DFA25_transition;
  }

  String get description() => 
        """503:1: FLOATING_POINT_LITERAL : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | 
'.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | 
( '0' .. '9' )+ ( Exponent )? FloatTypeSuffix );""";

}
class DFA35 extends DFA {

  DFA35(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 35;
    this.eot = t033backtrackingLexer.DFA35_eot;
    this.eof = t033backtrackingLexer.DFA35_eof;
    this.min = t033backtrackingLexer.DFA35_min;
    this.max = t033backtrackingLexer.DFA35_max;
    this.accept = t033backtrackingLexer.DFA35_accept;
    this.special = t033backtrackingLexer.DFA35_special;
    this.transition = t033backtrackingLexer.DFA35_transition;
  }

  String get description() => 
        """1:1: Tokens : ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | 
T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | 
T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | 
T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | 
T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | 
T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | 
T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | 
T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | 
T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | 
T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | 
IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | 
DECIMAL_LITERAL | OCTAL_LITERAL | FLOATING_POINT_LITERAL | WS | 
COMMENT | LINE_COMMENT | LINE_COMMAND );""";

}

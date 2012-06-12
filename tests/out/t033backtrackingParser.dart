// $ANTLR 3.4 t033backtrackingParser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

/** ANSI C ANTLR v3 grammar

Translated from Jutta Degener's 1995 ANSI C yacc grammar by Terence Parr
July 2006.  The lexical rules were taken from the Java grammar.

Jutta says: "In 1985, Jeff Lee published his Yacc grammar (which
is accompanied by a matching Lex specification) for the April 30, 1985 draft
version of the ANSI C standard.  Tom Stockfisch reposted it to net.sources in
1987; that original, as mentioned in the answer to question 17.25 of the
comp.lang.c FAQ, can be ftp'ed from ftp.uu.net,
   file usenet/net.sources/ansi.c.grammar.Z.
I intend to keep this version as close to the current C Standard grammar as
possible; please let me know if you discover discrepancies. Jutta Degener, 1995"

Generally speaking, you need symbol table info to parse C; typedefs
define types and then IDENTIFIERS are either types or plain IDs.  I'm doing
the min necessary here tracking only type names.  This is a good example
of the global scope (called Symbols).  Every rule that declares its usage
of Symbols pushes a new copy on the stack effectively creating a new
symbol scope.  Also note rule declaration declares a rule scope that
lets any invoked rule see isTypedef boolean.  It's much easier than
passing that info down as parameters.  Very clean.  Rule
direct_declarator can then easily determine whether the IDENTIFIER
should be declared as a type name.

I have only tested this on a single file, though it is 3500 lines.

This grammar requires ANTLR v3.0.1 or higher.

Terence Parr
July 2006
*/
class t033backtrackingParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "CHARACTER_LITERAL", "COMMENT", 
    "DECIMAL_LITERAL", "EscapeSequence", "Exponent", "FLOATING_POINT_LITERAL", 
    "FloatTypeSuffix", "HEX_LITERAL", "HexDigit", "IDENTIFIER", "IntegerTypeSuffix", 
    "LETTER", "LINE_COMMAND", "LINE_COMMENT", "OCTAL_LITERAL", "OctalEscape", 
    "STRING_LITERAL", "UnicodeEscape", "WS", "'!'", "'!='", "'%'", "'%='", 
    "'&&'", "'&'", "'&='", "'('", "')'", "'*'", "'*='", "'+'", "'++'", "'+='", 
    "','", "'-'", "'--'", "'-='", "'->'", "'.'", "'...'", "'/'", "'/='", 
    "':'", "';'", "'<'", "'<<'", "'<<='", "'<='", "'='", "'=='", "'>'", 
    "'>='", "'>>'", "'>>='", "'?'", "'['", "']'", "'^'", "'^='", "'auto'", 
    "'break'", "'case'", "'char'", "'const'", "'continue'", "'default'", 
    "'do'", "'double'", "'else'", "'enum'", "'extern'", "'float'", "'for'", 
    "'goto'", "'if'", "'int'", "'long'", "'register'", "'return'", "'short'", 
    "'signed'", "'sizeof'", "'static'", "'struct'", "'switch'", "'typedef'", 
    "'union'", "'unsigned'", "'void'", "'volatile'", "'while'", "'{'", "'|'", 
    "'|='", "'||'", "'}'", "'~'"
  ];

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
  
  List<Parser> get delegates() => <Parser>[]; 
  
      
  List Symbols_stack;

  Map<String, DFA> dfas;

  List declaration_stack;


  t033backtrackingParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.dfas = new Map<String, DFA>();
	  this.declaration_stack = new List();

	  this.Symbols_stack = new List();
	  this.state.ruleMemo = new List<Map>(213+1);

	  this.dfas["dfa52"] = new DFA52(this);
	  this.dfas["dfa64"] = new DFA64(this);
  }



  t033backtrackingParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.dfas = new Map<String, DFA>();
    this.declaration_stack = new List();

    this.Symbols_stack = new List();    
    this.state.ruleMemo = new List<Map>(213+1);

    this.dfas["dfa52"] = new DFA52(this);
    this.dfas["dfa64"] = new DFA64(this);
  }    

  List<String> get tokenNames() => t033backtrackingParser._tokenNames;

  String get grammarFileName() => "t033backtracking.g";

  String getRecognizerClassName() => "t033backtrackingParser";


  bool isTypeName(String name) {
    for (int i = Symbols_stack.length-1; i >=0; i--) {
  	_Symbols_scope scope = Symbols_stack[i];
  	if (scope.types.contains(name)) {
  	  return true;
  	}
    }
    return false;
  }


  // $ANTLR start "translation_unit"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   57:1: translation_unit : ( external_declaration )+ ;*/
  void translation_unit() {
    this.Symbols_stack.add(new _Symbols_scope());

    int translation_unit_StartIndex = this.input.index;


      this.Symbols_stack.last().types = new Set();

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 1)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       62:2: ( ( external_declaration )+ )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       62:4: ( external_declaration )+*/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 62:4: ( external_declaration )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 13/*IDENTIFIER*/
      	    || LA1_0 == 30/*30*/
      	    || LA1_0 == 32/*32*/
      	    || LA1_0 == 63/*63*/
      	    || (LA1_0 >= 66 && LA1_0 <= 67)
      	    || LA1_0 == 71/*71*/
      	    || (LA1_0 >= 73 && LA1_0 <= 75)
      	    || (LA1_0 >= 79 && LA1_0 <= 81)
      	    || (LA1_0 >= 83 && LA1_0 <= 84)
      	    || (LA1_0 >= 86 && LA1_0 <= 87)
      	    || (LA1_0 >= 89 && LA1_0 <= 93))) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   62:4: external_declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_external_declaration_in_translation_unit77);
      			  	this.external_declaration();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return ;
      		      }
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 1, translation_unit_StartIndex); 
      }

      this.Symbols_stack.removeLast();

  	}
  	return ;
  }
  // $ANTLR end "translation_unit"


  // $ANTLR start "external_declaration"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   79:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | 
   declaration );*/
  void external_declaration() {
    int external_declaration_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 2)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       81:2: ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | 
       declaration )*/
      int alt2 = 2;
      int LA2_0 = this.input.LA(1);

      if((LA2_0 == 63/*63*/
        || LA2_0 == 74/*74*/
        || LA2_0 == 81/*81*/
        || LA2_0 == 86/*86*/)) {
        int LA2_1 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 1, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 92/*92*/)) {
        int LA2_2 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 2, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 66/*66*/)) {
        int LA2_3 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 3, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 83/*83*/)) {
        int LA2_4 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 4, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 79/*79*/)) {
        int LA2_5 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 5, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 80/*80*/)) {
        int LA2_6 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 6, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 75/*75*/)) {
        int LA2_7 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 7, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 71/*71*/)) {
        int LA2_8 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 8, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 84/*84*/)) {
        int LA2_9 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 9, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 91/*91*/)) {
        int LA2_10 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 10, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 87/*87*/
        || LA2_0 == 90/*90*/)) {
        int LA2_11 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 11, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 73/*73*/)) {
        int LA2_12 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 12, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 13/*IDENTIFIER*/)) {
        int LA2_13 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if(((isTypeName(input.LT(1).text)))) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 13, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 67/*67*/
        || LA2_0 == 93/*93*/)) {
        int LA2_14 = this.input.LA(2);

        if((synpred4_t033backtracking())) {
          alt2 = 1;
        }
        else if((true)) {
          alt2 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 2, 14, this.input);

          throw nvae;

        }
      }
      else if((LA2_0 == 32/*32*/) && (synpred4_t033backtracking())) {
        alt2 = 1;
      }
      else if((LA2_0 == 30/*30*/) && (synpred4_t033backtracking())) {
        alt2 = 1;
      }
      else if((LA2_0 == 89/*89*/)) {
        alt2 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 2, 0, this.input);

        throw nvae;

      }
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           81:4: ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition*/
          {
          	this.pushFollow(FOLLOW_function_definition_in_external_declaration113);
          	this.function_definition();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           82:4: declaration*/
          {
          	this.pushFollow(FOLLOW_declaration_in_external_declaration118);
          	this.declaration();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 2, external_declaration_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "external_declaration"


  // $ANTLR start "function_definition"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   85:1: function_definition : ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | 
   compound_statement ) ;*/
  void function_definition() {
    this.Symbols_stack.add(new _Symbols_scope());

    int function_definition_StartIndex = this.input.index;


      this.Symbols_stack.last().types = new HashSet();

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 3)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       90:2: ( ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | 
       compound_statement ) )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       90:4: ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | 
       compound_statement )*/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 90:4: ( declaration_specifiers )?*/
      	int alt3 = 2;
      	int LA3_0 = this.input.LA(1);

      	if((LA3_0 == 63/*63*/
      	  || (LA3_0 >= 66 && LA3_0 <= 67)
      	  || LA3_0 == 71/*71*/
      	  || (LA3_0 >= 73 && LA3_0 <= 75)
      	  || (LA3_0 >= 79 && LA3_0 <= 81)
      	  || (LA3_0 >= 83 && LA3_0 <= 84)
      	  || (LA3_0 >= 86 && LA3_0 <= 87)
      	  || (LA3_0 >= 90 && LA3_0 <= 93))) {
      	  alt3 = 1;
      	}
      	else if((LA3_0 == 13/*IDENTIFIER*/)) {
      	  switch(this.input.LA(2)) {
      	    case 32:
      	      {
      	      alt3 = 1;
      	      }
      	      break;
      	    case IDENTIFIER:
      	      {
      	      int LA3_18 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 30:
      	      {
      	      int LA3_19 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 63:
      	    case 74:
      	    case 81:
      	    case 86:
      	      {
      	      int LA3_20 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 92:
      	      {
      	      int LA3_21 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 66:
      	      {
      	      int LA3_22 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 83:
      	      {
      	      int LA3_23 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 79:
      	      {
      	      int LA3_24 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 80:
      	      {
      	      int LA3_25 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 75:
      	      {
      	      int LA3_26 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 71:
      	      {
      	      int LA3_27 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 84:
      	      {
      	      int LA3_28 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 91:
      	      {
      	      int LA3_29 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 87:
      	    case 90:
      	      {
      	      int LA3_30 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 73:
      	      {
      	      int LA3_31 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	    case 67:
      	    case 93:
      	      {
      	      int LA3_32 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred5_t033backtracking()))) {
      	        alt3 = 1;
      	      }
      	      }
      	      break;
      	  }

      	}
      	switch (alt3) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     90:4: declaration_specifiers*/
      	    {
      	    	this.pushFollow(FOLLOW_declaration_specifiers_in_function_definition140);
      	    	this.declaration_specifiers();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      	this.pushFollow(FOLLOW_declarator_in_function_definition143);
      	this.declarator();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 91:3: ( ( declaration )+ compound_statement | compound_statement )*/
      	int alt5 = 2;
      	int LA5_0 = this.input.LA(1);

      	if((LA5_0 == 13/*IDENTIFIER*/
      	  || LA5_0 == 63/*63*/
      	  || (LA5_0 >= 66 && LA5_0 <= 67)
      	  || LA5_0 == 71/*71*/
      	  || (LA5_0 >= 73 && LA5_0 <= 75)
      	  || (LA5_0 >= 79 && LA5_0 <= 81)
      	  || (LA5_0 >= 83 && LA5_0 <= 84)
      	  || (LA5_0 >= 86 && LA5_0 <= 87)
      	  || (LA5_0 >= 89 && LA5_0 <= 93))) {
      	  alt5 = 1;
      	}
      	else if((LA5_0 == 95/*95*/)) {
      	  alt5 = 2;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 5, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt5) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     91:5: ( declaration )+ compound_statement*/
      	    {
      	    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	    	 91:5: ( declaration )+*/
      	    	int cnt4 = 0;
      	    	loop4:
      	    	do {
      	    	  int alt4 = 2;
      	    	  int LA4_0 = this.input.LA(1);

      	    	  if((LA4_0 == 13/*IDENTIFIER*/
      	    	    || LA4_0 == 63/*63*/
      	    	    || (LA4_0 >= 66 && LA4_0 <= 67)
      	    	    || LA4_0 == 71/*71*/
      	    	    || (LA4_0 >= 73 && LA4_0 <= 75)
      	    	    || (LA4_0 >= 79 && LA4_0 <= 81)
      	    	    || (LA4_0 >= 83 && LA4_0 <= 84)
      	    	    || (LA4_0 >= 86 && LA4_0 <= 87)
      	    	    || (LA4_0 >= 89 && LA4_0 <= 93))) {
      	    	    alt4 = 1;
      	    	  }


      	    	  switch (alt4) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	    			   91:5: declaration*/
      	    			  {
      	    			  	this.pushFollow(FOLLOW_declaration_in_function_definition149);
      	    			  	this.declaration();

      	    			  	this.state.fsp--;
      	    			  	if(this.state.failed) 
      	    			  	  return ;

      	    			  }
      	    			  break;

      	    			default :
      	    		    if(cnt4 >= 1) break loop4;
      	    		      if(this.state.backtracking > 0) {
      	    		        this.state.failed = true; 
      	    		        return ;
      	    		      }
      	    	        EarlyExitException eee = new EarlyExitException(4, this.input);
      	    	        throw eee;
      	    	  }
      	    	  cnt4++;
      	    	} while(true);


      	    	this.pushFollow(FOLLOW_compound_statement_in_function_definition152);
      	    	this.compound_statement();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     92:5: compound_statement*/
      	    {
      	    	this.pushFollow(FOLLOW_compound_statement_in_function_definition159);
      	    	this.compound_statement();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 3, function_definition_StartIndex); 
      }

      this.Symbols_stack.removeLast();

  	}
  	return ;
  }
  // $ANTLR end "function_definition"


  // $ANTLR start "declaration"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   96:1: declaration : ( 'typedef' ( declaration_specifiers )? init_declarator_list ';' | 
   declaration_specifiers ( init_declarator_list )? ';' );*/
  void declaration() {
    this.declaration_stack.add(new _declaration_scope());
    int declaration_StartIndex = this.input.index;


      this.declaration_stack.last().isTypedef = false;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 4)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       103:2: ( 'typedef' ( declaration_specifiers )? init_declarator_list ';' | 
       declaration_specifiers ( init_declarator_list )? ';' )*/
      int alt8 = 2;
      int LA8_0 = this.input.LA(1);

      if((LA8_0 == 89/*89*/)) {
        alt8 = 1;
      }
      else if((LA8_0 == 13/*IDENTIFIER*/
        || LA8_0 == 63/*63*/
        || (LA8_0 >= 66 && LA8_0 <= 67)
        || LA8_0 == 71/*71*/
        || (LA8_0 >= 73 && LA8_0 <= 75)
        || (LA8_0 >= 79 && LA8_0 <= 81)
        || (LA8_0 >= 83 && LA8_0 <= 84)
        || (LA8_0 >= 86 && LA8_0 <= 87)
        || (LA8_0 >= 90 && LA8_0 <= 93))) {
        alt8 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 8, 0, this.input);

        throw nvae;

      }
      switch (alt8) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           103:4: 'typedef' ( declaration_specifiers )? init_declarator_list ';'*/
          {
          	this.matchSymbol(this.input,
          	    89,FOLLOW_89_in_declaration187); 
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 103:14: ( declaration_specifiers )?*/
          	int alt6 = 2;
          	int LA6_0 = this.input.LA(1);

          	if((LA6_0 == 63/*63*/
          	  || (LA6_0 >= 66 && LA6_0 <= 67)
          	  || LA6_0 == 71/*71*/
          	  || (LA6_0 >= 73 && LA6_0 <= 75)
          	  || (LA6_0 >= 79 && LA6_0 <= 81)
          	  || (LA6_0 >= 83 && LA6_0 <= 84)
          	  || (LA6_0 >= 86 && LA6_0 <= 87)
          	  || (LA6_0 >= 90 && LA6_0 <= 93))) {
          	  alt6 = 1;
          	}
          	else if((LA6_0 == 13/*IDENTIFIER*/)) {
          	  int LA6_13 = this.input.LA(2);

          	  if((LA6_13 == 13/*IDENTIFIER*/
          	    || LA6_13 == 32/*32*/
          	    || LA6_13 == 63/*63*/
          	    || (LA6_13 >= 66 && LA6_13 <= 67)
          	    || LA6_13 == 71/*71*/
          	    || (LA6_13 >= 73 && LA6_13 <= 75)
          	    || (LA6_13 >= 79 && LA6_13 <= 81)
          	    || (LA6_13 >= 83 && LA6_13 <= 84)
          	    || (LA6_13 >= 86 && LA6_13 <= 87)
          	    || (LA6_13 >= 90 && LA6_13 <= 93))) {
          	    alt6 = 1;
          	  }
          	  else if((LA6_13 == 30/*30*/)) {
          	    int LA6_19 = this.input.LA(3);

          	    if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred8_t033backtracking()))) {
          	      alt6 = 1;
          	    }
          	  }
          	}
          	switch (alt6) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     103:14: declaration_specifiers*/
          	    {
          	    	this.pushFollow(FOLLOW_declaration_specifiers_in_declaration189);
          	    	this.declaration_specifiers();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          	if(this.state.backtracking == 0) {
          	  this.declaration_stack.last().isTypedef =true;;
          	}


          	this.pushFollow(FOLLOW_init_declarator_list_in_declaration197);
          	this.init_declarator_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_declaration199); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           105:4: declaration_specifiers ( init_declarator_list )? ';'*/
          {
          	this.pushFollow(FOLLOW_declaration_specifiers_in_declaration205);
          	this.declaration_specifiers();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 105:27: ( init_declarator_list )?*/
          	int alt7 = 2;
          	int LA7_0 = this.input.LA(1);

          	if((LA7_0 == 13/*IDENTIFIER*/
          	  || LA7_0 == 30/*30*/
          	  || LA7_0 == 32/*32*/)) {
          	  alt7 = 1;
          	}
          	switch (alt7) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     105:27: init_declarator_list*/
          	    {
          	    	this.pushFollow(FOLLOW_init_declarator_list_in_declaration207);
          	    	this.init_declarator_list();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_declaration210); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 4, declaration_StartIndex); 
      }

      this.declaration_stack.removeLast();
  	}
  	return ;
  }
  // $ANTLR end "declaration"


  // $ANTLR start "declaration_specifiers"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   108:1: declaration_specifiers : ( storage_class_specifier | type_specifier | 
   type_qualifier )+ ;*/
  void declaration_specifiers() {
    int declaration_specifiers_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 5)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       109:2: ( ( storage_class_specifier | type_specifier | type_qualifier )+ )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       109:6: ( storage_class_specifier | type_specifier | type_qualifier )+*/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 109:6: ( storage_class_specifier | type_specifier | type_qualifier )+*/
      	int cnt9 = 0;
      	loop9:
      	do {
      	  int alt9 = 4;
      	  switch ( this.input.LA(1) ) {
      	  case IDENTIFIER:
      	    {
      	    int LA9_2 = this.input.LA(2);

      	    if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred12_t033backtracking()))) {
      	      alt9 = 2;
      	    }


      	    }
      	    break;
      	  case 63:
      	  case 74:
      	  case 81:
      	  case 86:
      	    {
      	    alt9 = 1;
      	    }
      	    break;
      	  case 66:
      	  case 71:
      	  case 73:
      	  case 75:
      	  case 79:
      	  case 80:
      	  case 83:
      	  case 84:
      	  case 87:
      	  case 90:
      	  case 91:
      	  case 92:
      	    {
      	    alt9 = 2;
      	    }
      	    break;
      	  case 67:
      	  case 93:
      	    {
      	    alt9 = 3;
      	    }
      	    break;

      	  }

      	  switch (alt9) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   109:10: storage_class_specifier*/
      			  {
      			  	this.pushFollow(FOLLOW_storage_class_specifier_in_declaration_specifiers227);
      			  	this.storage_class_specifier();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   110:7: type_specifier*/
      			  {
      			  	this.pushFollow(FOLLOW_type_specifier_in_declaration_specifiers235);
      			  	this.type_specifier();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 3 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   111:13: type_qualifier*/
      			  {
      			  	this.pushFollow(FOLLOW_type_qualifier_in_declaration_specifiers249);
      			  	this.type_qualifier();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    if(cnt9 >= 1) break loop9;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return ;
      		      }
      	        EarlyExitException eee = new EarlyExitException(9, this.input);
      	        throw eee;
      	  }
      	  cnt9++;
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 5, declaration_specifiers_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "declaration_specifiers"


  // $ANTLR start "init_declarator_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   115:1: init_declarator_list : init_declarator ( ',' init_declarator )* ;*/
  void init_declarator_list() {
    int init_declarator_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 6)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       116:2: ( init_declarator ( ',' init_declarator )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       116:4: init_declarator ( ',' init_declarator )**/
      {
      	this.pushFollow(FOLLOW_init_declarator_in_init_declarator_list271);
      	this.init_declarator();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 116:20: ( ',' init_declarator )**/
      	loop10:
      	do {
      	  int alt10 = 2;
      	  int LA10_0 = this.input.LA(1);

      	  if((LA10_0 == 37/*37*/)) {
      	    alt10 = 1;
      	  }


      	  switch (alt10) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   116:21: ',' init_declarator*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_init_declarator_list274); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_init_declarator_in_init_declarator_list276);
      			  	this.init_declarator();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop10;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 6, init_declarator_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "init_declarator_list"


  // $ANTLR start "init_declarator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   119:1: init_declarator : declarator ( '=' initializer )? ;*/
  void init_declarator() {
    int init_declarator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 7)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       120:2: ( declarator ( '=' initializer )? )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       120:4: declarator ( '=' initializer )?*/
      {
      	this.pushFollow(FOLLOW_declarator_in_init_declarator289);
      	this.declarator();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 120:15: ( '=' initializer )?*/
      	int alt11 = 2;
      	int LA11_0 = this.input.LA(1);

      	if((LA11_0 == 52/*52*/)) {
      	  alt11 = 1;
      	}
      	switch (alt11) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     120:16: '=' initializer*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    52,FOLLOW_52_in_init_declarator292); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.pushFollow(FOLLOW_initializer_in_init_declarator294);
      	    	this.initializer();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 7, init_declarator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "init_declarator"


  // $ANTLR start "storage_class_specifier"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   123:1: storage_class_specifier : ( 'extern' | 'static' | 'auto' | 'register' );*/
  void storage_class_specifier() {
    int storage_class_specifier_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 8)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       124:2: ( 'extern' | 'static' | 'auto' | 'register' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
      */
      {
      	if(this.input.LA(1) == 63
      	  || this.input.LA(1) == 74
      	  || this.input.LA(1) == 81
      	  || this.input.LA(1) == 86) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 8, storage_class_specifier_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "storage_class_specifier"


  // $ANTLR start "type_specifier"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   130:1: type_specifier : ( 'void' | 'char' | 'short' | 'int' | 
   'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | 
   enum_specifier | type_id );*/
  void type_specifier() {
    int type_specifier_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 9)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       131:2: ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 
       'double' | 'signed' | 'unsigned' | struct_or_union_specifier | 
       enum_specifier | type_id )*/
      int alt12 = 12;
      switch(this.input.LA(1)) {
      case 92:
        {
        alt12 = 1;
        }
        break;
      case 66:
        {
        alt12 = 2;
        }
        break;
      case 83:
        {
        alt12 = 3;
        }
        break;
      case 79:
        {
        alt12 = 4;
        }
        break;
      case 80:
        {
        alt12 = 5;
        }
        break;
      case 75:
        {
        alt12 = 6;
        }
        break;
      case 71:
        {
        alt12 = 7;
        }
        break;
      case 84:
        {
        alt12 = 8;
        }
        break;
      case 91:
        {
        alt12 = 9;
        }
        break;
      case 87:
      case 90:
        {
        alt12 = 10;
        }
        break;
      case 73:
        {
        alt12 = 11;
        }
        break;
      case IDENTIFIER:
        {
        alt12 = 12;
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 12, 0, this.input);

        throw nvae;

      }

      switch (alt12) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           131:4: 'void'*/
          {
          	this.matchSymbol(this.input,
          	    92,FOLLOW_92_in_type_specifier333); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           132:4: 'char'*/
          {
          	this.matchSymbol(this.input,
          	    66,FOLLOW_66_in_type_specifier338); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           133:4: 'short'*/
          {
          	this.matchSymbol(this.input,
          	    83,FOLLOW_83_in_type_specifier343); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           134:4: 'int'*/
          {
          	this.matchSymbol(this.input,
          	    79,FOLLOW_79_in_type_specifier348); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           135:4: 'long'*/
          {
          	this.matchSymbol(this.input,
          	    80,FOLLOW_80_in_type_specifier353); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 6 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           136:4: 'float'*/
          {
          	this.matchSymbol(this.input,
          	    75,FOLLOW_75_in_type_specifier358); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 7 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           137:4: 'double'*/
          {
          	this.matchSymbol(this.input,
          	    71,FOLLOW_71_in_type_specifier363); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 8 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           138:4: 'signed'*/
          {
          	this.matchSymbol(this.input,
          	    84,FOLLOW_84_in_type_specifier368); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 9 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           139:4: 'unsigned'*/
          {
          	this.matchSymbol(this.input,
          	    91,FOLLOW_91_in_type_specifier373); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 10 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           140:4: struct_or_union_specifier*/
          {
          	this.pushFollow(FOLLOW_struct_or_union_specifier_in_type_specifier378);
          	this.struct_or_union_specifier();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 11 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           141:4: enum_specifier*/
          {
          	this.pushFollow(FOLLOW_enum_specifier_in_type_specifier383);
          	this.enum_specifier();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 12 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           142:4: type_id*/
          {
          	this.pushFollow(FOLLOW_type_id_in_type_specifier388);
          	this.type_id();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 9, type_specifier_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "type_specifier"


  // $ANTLR start "type_id"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   145:1: type_id :{...}? IDENTIFIER ;*/
  void type_id() {
    int type_id_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 10)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       146:5: ({...}? IDENTIFIER )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       146:9: {...}? IDENTIFIER*/
      {
      	if(!((isTypeName(input.LT(1).text)))) {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  throw new FailedPredicateException(input, "type_id", @"isTypeName(input.LT(1).text)");
      	}

      	this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_type_id406); 
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 10, type_id_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "type_id"


  // $ANTLR start "struct_or_union_specifier"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   150:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | 
   struct_or_union IDENTIFIER );*/
  void struct_or_union_specifier() {
    this.Symbols_stack.add(new _Symbols_scope());

    int struct_or_union_specifier_StartIndex = this.input.index;


      this.Symbols_stack.last().types = new Set();

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 11)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       156:2: ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | 
       struct_or_union IDENTIFIER )*/
      int alt14 = 2;
      int LA14_0 = this.input.LA(1);

      if((LA14_0 == 87/*87*/
        || LA14_0 == 90/*90*/)) {
        int LA14_1 = this.input.LA(2);

        if((LA14_1 == 13/*IDENTIFIER*/)) {
          int LA14_2 = this.input.LA(3);

          if((LA14_2 == 95/*95*/)) {
            alt14 = 1;
          }
          else if((LA14_2 == -1/*EOF*/
            || LA14_2 == 13/*IDENTIFIER*/
            || (LA14_2 >= 30 && LA14_2 <= 32)
            || LA14_2 == 37/*37*/
            || (LA14_2 >= 46 && LA14_2 <= 47)
            || LA14_2 == 59/*59*/
            || LA14_2 == 63/*63*/
            || (LA14_2 >= 66 && LA14_2 <= 67)
            || LA14_2 == 71/*71*/
            || (LA14_2 >= 73 && LA14_2 <= 75)
            || (LA14_2 >= 79 && LA14_2 <= 81)
            || (LA14_2 >= 83 && LA14_2 <= 84)
            || (LA14_2 >= 86 && LA14_2 <= 87)
            || (LA14_2 >= 90 && LA14_2 <= 93))) {
            alt14 = 2;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 14, 2, this.input);

            throw nvae;

          }
        }
        else if((LA14_1 == 95/*95*/)) {
          alt14 = 1;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 14, 1, this.input);

          throw nvae;

        }
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 14, 0, this.input);

        throw nvae;

      }
      switch (alt14) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           156:4: struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}'*/
          {
          	this.pushFollow(FOLLOW_struct_or_union_in_struct_or_union_specifier439);
          	this.struct_or_union();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 156:20: ( IDENTIFIER )?*/
          	int alt13 = 2;
          	int LA13_0 = this.input.LA(1);

          	if((LA13_0 == 13/*IDENTIFIER*/)) {
          	  alt13 = 1;
          	}
          	switch (alt13) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     156:20: IDENTIFIER*/
          	    {
          	    	this.matchSymbol(this.input,
          	    	    IDENTIFIER,FOLLOW_IDENTIFIER_in_struct_or_union_specifier441); 
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          	this.matchSymbol(this.input,
          	    95,FOLLOW_95_in_struct_or_union_specifier444); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_struct_declaration_list_in_struct_or_union_specifier446);
          	this.struct_declaration_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    99,FOLLOW_99_in_struct_or_union_specifier448); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           157:4: struct_or_union IDENTIFIER*/
          {
          	this.pushFollow(FOLLOW_struct_or_union_in_struct_or_union_specifier453);
          	this.struct_or_union();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    IDENTIFIER,FOLLOW_IDENTIFIER_in_struct_or_union_specifier455); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 11, struct_or_union_specifier_StartIndex); 
      }

      this.Symbols_stack.removeLast();

  	}
  	return ;
  }
  // $ANTLR end "struct_or_union_specifier"


  // $ANTLR start "struct_or_union"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   160:1: struct_or_union : ( 'struct' | 'union' );*/
  void struct_or_union() {
    int struct_or_union_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 12)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       161:2: ( 'struct' | 'union' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
      */
      {
      	if(this.input.LA(1) == 87
      	  || this.input.LA(1) == 90) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 12, struct_or_union_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "struct_or_union"


  // $ANTLR start "struct_declaration_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   165:1: struct_declaration_list : ( struct_declaration )+ ;*/
  void struct_declaration_list() {
    int struct_declaration_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 13)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       166:2: ( ( struct_declaration )+ )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       166:4: ( struct_declaration )+*/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 166:4: ( struct_declaration )+*/
      	int cnt15 = 0;
      	loop15:
      	do {
      	  int alt15 = 2;
      	  int LA15_0 = this.input.LA(1);

      	  if((LA15_0 == 13/*IDENTIFIER*/
      	    || (LA15_0 >= 66 && LA15_0 <= 67)
      	    || LA15_0 == 71/*71*/
      	    || LA15_0 == 73/*73*/
      	    || LA15_0 == 75/*75*/
      	    || (LA15_0 >= 79 && LA15_0 <= 80)
      	    || (LA15_0 >= 83 && LA15_0 <= 84)
      	    || LA15_0 == 87/*87*/
      	    || (LA15_0 >= 90 && LA15_0 <= 93))) {
      	    alt15 = 1;
      	  }


      	  switch (alt15) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   166:4: struct_declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_struct_declaration_in_struct_declaration_list482);
      			  	this.struct_declaration();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    if(cnt15 >= 1) break loop15;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return ;
      		      }
      	        EarlyExitException eee = new EarlyExitException(15, this.input);
      	        throw eee;
      	  }
      	  cnt15++;
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 13, struct_declaration_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "struct_declaration_list"


  // $ANTLR start "struct_declaration"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   169:1: struct_declaration : specifier_qualifier_list struct_declarator_list ';' ;*/
  void struct_declaration() {
    int struct_declaration_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 14)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       170:2: ( specifier_qualifier_list struct_declarator_list ';' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       170:4: specifier_qualifier_list struct_declarator_list ';'*/
      {
      	this.pushFollow(FOLLOW_specifier_qualifier_list_in_struct_declaration494);
      	this.specifier_qualifier_list();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	this.pushFollow(FOLLOW_struct_declarator_list_in_struct_declaration496);
      	this.struct_declarator_list();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	this.matchSymbol(this.input,
      	    47,FOLLOW_47_in_struct_declaration498); 
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 14, struct_declaration_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "struct_declaration"


  // $ANTLR start "specifier_qualifier_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   173:1: specifier_qualifier_list : ( type_qualifier | type_specifier )+ ;*/
  void specifier_qualifier_list() {
    int specifier_qualifier_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 15)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       174:2: ( ( type_qualifier | type_specifier )+ )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       174:4: ( type_qualifier | type_specifier )+*/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 174:4: ( type_qualifier | type_specifier )+*/
      	int cnt16 = 0;
      	loop16:
      	do {
      	  int alt16 = 3;
      	  switch ( this.input.LA(1) ) {
      	  case IDENTIFIER:
      	    {
      	    switch ( this.input.LA(2) ) {
      	    case 59:
      	      {
      	      int LA16_19 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred35_t033backtracking()))) {
      	        alt16 = 2;
      	      }


      	      }
      	      break;
      	    case 30:
      	      {
      	      int LA16_20 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred35_t033backtracking()))) {
      	        alt16 = 2;
      	      }


      	      }
      	      break;
      	    case 46:
      	      {
      	      int LA16_21 = this.input.LA(3);

      	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred35_t033backtracking()))) {
      	        alt16 = 2;
      	      }


      	      }
      	      break;
      	    case IDENTIFIER:
      	    case 31:
      	    case 32:
      	    case 66:
      	    case 67:
      	    case 71:
      	    case 73:
      	    case 75:
      	    case 79:
      	    case 80:
      	    case 83:
      	    case 84:
      	    case 87:
      	    case 90:
      	    case 91:
      	    case 92:
      	    case 93:
      	      {
      	      alt16 = 2;
      	      }
      	      break;

      	    }

      	    }
      	    break;
      	  case 67:
      	  case 93:
      	    {
      	    alt16 = 1;
      	    }
      	    break;
      	  case 66:
      	  case 71:
      	  case 73:
      	  case 75:
      	  case 79:
      	  case 80:
      	  case 83:
      	  case 84:
      	  case 87:
      	  case 90:
      	  case 91:
      	  case 92:
      	    {
      	    alt16 = 2;
      	    }
      	    break;

      	  }

      	  switch (alt16) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   174:6: type_qualifier*/
      			  {
      			  	this.pushFollow(FOLLOW_type_qualifier_in_specifier_qualifier_list511);
      			  	this.type_qualifier();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   174:23: type_specifier*/
      			  {
      			  	this.pushFollow(FOLLOW_type_specifier_in_specifier_qualifier_list515);
      			  	this.type_specifier();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    if(cnt16 >= 1) break loop16;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return ;
      		      }
      	        EarlyExitException eee = new EarlyExitException(16, this.input);
      	        throw eee;
      	  }
      	  cnt16++;
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 15, specifier_qualifier_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "specifier_qualifier_list"


  // $ANTLR start "struct_declarator_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   177:1: struct_declarator_list : struct_declarator ( ',' struct_declarator )* ;*/
  void struct_declarator_list() {
    int struct_declarator_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 16)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       178:2: ( struct_declarator ( ',' struct_declarator )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       178:4: struct_declarator ( ',' struct_declarator )**/
      {
      	this.pushFollow(FOLLOW_struct_declarator_in_struct_declarator_list529);
      	this.struct_declarator();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 178:22: ( ',' struct_declarator )**/
      	loop17:
      	do {
      	  int alt17 = 2;
      	  int LA17_0 = this.input.LA(1);

      	  if((LA17_0 == 37/*37*/)) {
      	    alt17 = 1;
      	  }


      	  switch (alt17) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   178:23: ',' struct_declarator*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_struct_declarator_list532); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_struct_declarator_in_struct_declarator_list534);
      			  	this.struct_declarator();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop17;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 16, struct_declarator_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "struct_declarator_list"


  // $ANTLR start "struct_declarator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   181:1: struct_declarator : ( declarator ( ':' constant_expression )? | 
   ':' constant_expression );*/
  void struct_declarator() {
    int struct_declarator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 17)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       182:2: ( declarator ( ':' constant_expression )? | ':' constant_expression )*/
      int alt19 = 2;
      int LA19_0 = this.input.LA(1);

      if((LA19_0 == 13/*IDENTIFIER*/
        || LA19_0 == 30/*30*/
        || LA19_0 == 32/*32*/)) {
        alt19 = 1;
      }
      else if((LA19_0 == 46/*46*/)) {
        alt19 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 19, 0, this.input);

        throw nvae;

      }
      switch (alt19) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           182:4: declarator ( ':' constant_expression )?*/
          {
          	this.pushFollow(FOLLOW_declarator_in_struct_declarator547);
          	this.declarator();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 182:15: ( ':' constant_expression )?*/
          	int alt18 = 2;
          	int LA18_0 = this.input.LA(1);

          	if((LA18_0 == 46/*46*/)) {
          	  alt18 = 1;
          	}
          	switch (alt18) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     182:16: ':' constant_expression*/
          	    {
          	    	this.matchSymbol(this.input,
          	    	    46,FOLLOW_46_in_struct_declarator550); 
          	    	if(this.state.failed) 
          	    	  return ;

          	    	this.pushFollow(FOLLOW_constant_expression_in_struct_declarator552);
          	    	this.constant_expression();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           183:4: ':' constant_expression*/
          {
          	this.matchSymbol(this.input,
          	    46,FOLLOW_46_in_struct_declarator559); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_constant_expression_in_struct_declarator561);
          	this.constant_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 17, struct_declarator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "struct_declarator"


  // $ANTLR start "enum_specifier"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   186:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 
   'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER ); */
  void enum_specifier() {
    int enum_specifier_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 18)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       188:2: ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 
       'enum' IDENTIFIER )*/
      int alt20 = 3;
      int LA20_0 = this.input.LA(1);

      if((LA20_0 == 73/*73*/)) {
        int LA20_1 = this.input.LA(2);

        if((LA20_1 == 95/*95*/)) {
          alt20 = 1;
        }
        else if((LA20_1 == 13/*IDENTIFIER*/)) {
          int LA20_3 = this.input.LA(3);

          if((LA20_3 == 95/*95*/)) {
            alt20 = 2;
          }
          else if((LA20_3 == -1/*EOF*/
            || LA20_3 == 13/*IDENTIFIER*/
            || (LA20_3 >= 30 && LA20_3 <= 32)
            || LA20_3 == 37/*37*/
            || (LA20_3 >= 46 && LA20_3 <= 47)
            || LA20_3 == 59/*59*/
            || LA20_3 == 63/*63*/
            || (LA20_3 >= 66 && LA20_3 <= 67)
            || LA20_3 == 71/*71*/
            || (LA20_3 >= 73 && LA20_3 <= 75)
            || (LA20_3 >= 79 && LA20_3 <= 81)
            || (LA20_3 >= 83 && LA20_3 <= 84)
            || (LA20_3 >= 86 && LA20_3 <= 87)
            || (LA20_3 >= 90 && LA20_3 <= 93))) {
            alt20 = 3;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 20, 3, this.input);

            throw nvae;

          }
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 20, 1, this.input);

          throw nvae;

        }
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 20, 0, this.input);

        throw nvae;

      }
      switch (alt20) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           188:4: 'enum' '{' enumerator_list '}'*/
          {
          	this.matchSymbol(this.input,
          	    73,FOLLOW_73_in_enum_specifier579); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    95,FOLLOW_95_in_enum_specifier581); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_enumerator_list_in_enum_specifier583);
          	this.enumerator_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    99,FOLLOW_99_in_enum_specifier585); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           189:4: 'enum' IDENTIFIER '{' enumerator_list '}'*/
          {
          	this.matchSymbol(this.input,
          	    73,FOLLOW_73_in_enum_specifier590); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    IDENTIFIER,FOLLOW_IDENTIFIER_in_enum_specifier592); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    95,FOLLOW_95_in_enum_specifier594); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_enumerator_list_in_enum_specifier596);
          	this.enumerator_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    99,FOLLOW_99_in_enum_specifier598); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           190:4: 'enum' IDENTIFIER*/
          {
          	this.matchSymbol(this.input,
          	    73,FOLLOW_73_in_enum_specifier603); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    IDENTIFIER,FOLLOW_IDENTIFIER_in_enum_specifier605); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 18, enum_specifier_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "enum_specifier"


  // $ANTLR start "enumerator_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   193:1: enumerator_list : enumerator ( ',' enumerator )* ;*/
  void enumerator_list() {
    int enumerator_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 19)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       194:2: ( enumerator ( ',' enumerator )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       194:4: enumerator ( ',' enumerator )**/
      {
      	this.pushFollow(FOLLOW_enumerator_in_enumerator_list616);
      	this.enumerator();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 194:15: ( ',' enumerator )**/
      	loop21:
      	do {
      	  int alt21 = 2;
      	  int LA21_0 = this.input.LA(1);

      	  if((LA21_0 == 37/*37*/)) {
      	    alt21 = 1;
      	  }


      	  switch (alt21) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   194:16: ',' enumerator*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_enumerator_list619); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_enumerator_in_enumerator_list621);
      			  	this.enumerator();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop21;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 19, enumerator_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "enumerator_list"


  // $ANTLR start "enumerator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   197:1: enumerator : IDENTIFIER ( '=' constant_expression )? ;*/
  void enumerator() {
    int enumerator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 20)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       198:2: ( IDENTIFIER ( '=' constant_expression )? )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       198:4: IDENTIFIER ( '=' constant_expression )?*/
      {
      	this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_enumerator634); 
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 198:15: ( '=' constant_expression )?*/
      	int alt22 = 2;
      	int LA22_0 = this.input.LA(1);

      	if((LA22_0 == 52/*52*/)) {
      	  alt22 = 1;
      	}
      	switch (alt22) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     198:16: '=' constant_expression*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    52,FOLLOW_52_in_enumerator637); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.pushFollow(FOLLOW_constant_expression_in_enumerator639);
      	    	this.constant_expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 20, enumerator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "enumerator"


  // $ANTLR start "type_qualifier"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   201:1: type_qualifier : ( 'const' | 'volatile' );*/
  void type_qualifier() {
    int type_qualifier_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 21)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       202:2: ( 'const' | 'volatile' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
      */
      {
      	if(this.input.LA(1) == 67
      	  || this.input.LA(1) == 93) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 21, type_qualifier_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "type_qualifier"


  // $ANTLR start "declarator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   206:1: declarator : ( ( pointer )? direct_declarator | pointer );*/
  void declarator() {
    int declarator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 22)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       207:2: ( ( pointer )? direct_declarator | pointer )*/
      int alt24 = 2;
      int LA24_0 = this.input.LA(1);

      if((LA24_0 == 32/*32*/)) {
        int LA24_1 = this.input.LA(2);

        if((synpred45_t033backtracking())) {
          alt24 = 1;
        }
        else if((true)) {
          alt24 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 24, 1, this.input);

          throw nvae;

        }
      }
      else if((LA24_0 == 13/*IDENTIFIER*/
        || LA24_0 == 30/*30*/)) {
        alt24 = 1;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 24, 0, this.input);

        throw nvae;

      }
      switch (alt24) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           207:4: ( pointer )? direct_declarator*/
          {
          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 207:4: ( pointer )?*/
          	int alt23 = 2;
          	int LA23_0 = this.input.LA(1);

          	if((LA23_0 == 32/*32*/)) {
          	  alt23 = 1;
          	}
          	switch (alt23) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     207:4: pointer*/
          	    {
          	    	this.pushFollow(FOLLOW_pointer_in_declarator668);
          	    	this.pointer();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          	this.pushFollow(FOLLOW_direct_declarator_in_declarator671);
          	this.direct_declarator();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           208:4: pointer*/
          {
          	this.pushFollow(FOLLOW_pointer_in_declarator676);
          	this.pointer();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 22, declarator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "declarator"


  // $ANTLR start "direct_declarator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   211:1: direct_declarator : ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )* ; */
  void direct_declarator() {
    int direct_declarator_StartIndex = this.input.index;

    Token IDENTIFIER1 = null;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 23)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       212:2: ( ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       212:6: ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )**/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 212:6: ( IDENTIFIER | '(' declarator ')' )*/
      	int alt25 = 2;
      	int LA25_0 = this.input.LA(1);

      	if((LA25_0 == 13/*IDENTIFIER*/)) {
      	  alt25 = 1;
      	}
      	else if((LA25_0 == 30/*30*/)) {
      	  alt25 = 2;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 25, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt25) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     212:8: IDENTIFIER*/
      	    {
      	    	IDENTIFIER1 = this.matchSymbol(this.input,
      	    	    IDENTIFIER,FOLLOW_IDENTIFIER_in_direct_declarator691); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	if(this.state.backtracking == 0) {

      	    	  			if (declaration_stack.length>0&&this.declaration_stack.last().isTypedef) {
      	    	  				this.Symbols_stack.last().types.add((IDENTIFIER1 != null) ? IDENTIFIER1.text : null);
      	    	  				print("define type ${(IDENTIFIER1 != null) ? IDENTIFIER1.text : null}");
      	    	  			}
      	    	  			;
      	    	}


      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     219:5: '(' declarator ')'*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    30,FOLLOW_30_in_direct_declarator702); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.pushFollow(FOLLOW_declarator_in_direct_declarator704);
      	    	this.declarator();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.matchSymbol(this.input,
      	    	    31,FOLLOW_31_in_direct_declarator706); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 221:9: ( declarator_suffix )**/
      	loop26:
      	do {
      	  int alt26 = 2;
      	  int LA26_0 = this.input.LA(1);

      	  if((LA26_0 == 30/*30*/)) {
      	    switch ( this.input.LA(2) ) {
      	    case 31:
      	      {
      	      int LA26_26 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case IDENTIFIER:
      	      {
      	      int LA26_28 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 63:
      	    case 74:
      	    case 81:
      	    case 86:
      	      {
      	      int LA26_31 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 92:
      	      {
      	      int LA26_32 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 66:
      	      {
      	      int LA26_33 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 83:
      	      {
      	      int LA26_34 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 79:
      	      {
      	      int LA26_35 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 80:
      	      {
      	      int LA26_36 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 75:
      	      {
      	      int LA26_37 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 71:
      	      {
      	      int LA26_38 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 84:
      	      {
      	      int LA26_39 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 91:
      	      {
      	      int LA26_40 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 87:
      	    case 90:
      	      {
      	      int LA26_41 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 73:
      	      {
      	      int LA26_42 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 67:
      	    case 93:
      	      {
      	      int LA26_43 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;

      	    }

      	  }
      	  else if((LA26_0 == 59/*59*/)) {
      	    switch ( this.input.LA(2) ) {
      	    case 60:
      	      {
      	      int LA26_44 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 30:
      	      {
      	      int LA26_45 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case IDENTIFIER:
      	      {
      	      int LA26_46 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case CHARACTER_LITERAL:
      	    case DECIMAL_LITERAL:
      	    case FLOATING_POINT_LITERAL:
      	    case HEX_LITERAL:
      	    case OCTAL_LITERAL:
      	    case STRING_LITERAL:
      	      {
      	      int LA26_47 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 35:
      	      {
      	      int LA26_48 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 39:
      	      {
      	      int LA26_49 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 23:
      	    case 28:
      	    case 32:
      	    case 34:
      	    case 38:
      	    case 100:
      	      {
      	      int LA26_50 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;
      	    case 85:
      	      {
      	      int LA26_51 = this.input.LA(3);

      	      if((synpred47_t033backtracking())) {
      	        alt26 = 1;
      	      }


      	      }
      	      break;

      	    }

      	  }


      	  switch (alt26) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   221:9: declarator_suffix*/
      			  {
      			  	this.pushFollow(FOLLOW_declarator_suffix_in_direct_declarator720);
      			  	this.declarator_suffix();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop26;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 23, direct_declarator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "direct_declarator"


  // $ANTLR start "declarator_suffix"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   224:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | 
   '(' parameter_type_list ')' | '(' identifier_list ')' | '(' ')' ); */
  void declarator_suffix() {
    int declarator_suffix_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 24)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       225:2: ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' | 
       '(' identifier_list ')' | '(' ')' )*/
      int alt27 = 5;
      int LA27_0 = this.input.LA(1);

      if((LA27_0 == 59/*59*/)) {
        int LA27_1 = this.input.LA(2);

        if((LA27_1 == 60/*60*/)) {
          alt27 = 2;
        }
        else if((LA27_1 == 4/*CHARACTER_LITERAL*/
          || LA27_1 == 6/*DECIMAL_LITERAL*/
          || LA27_1 == 9/*FLOATING_POINT_LITERAL*/
          || LA27_1 == 11/*HEX_LITERAL*/
          || LA27_1 == 13/*IDENTIFIER*/
          || LA27_1 == 18/*OCTAL_LITERAL*/
          || LA27_1 == 20/*STRING_LITERAL*/
          || LA27_1 == 23/*23*/
          || LA27_1 == 28/*28*/
          || LA27_1 == 30/*30*/
          || LA27_1 == 32/*32*/
          || (LA27_1 >= 34 && LA27_1 <= 35)
          || (LA27_1 >= 38 && LA27_1 <= 39)
          || LA27_1 == 85/*85*/
          || LA27_1 == 100/*100*/)) {
          alt27 = 1;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 27, 1, this.input);

          throw nvae;

        }
      }
      else if((LA27_0 == 30/*30*/)) {
        switch(this.input.LA(2)) {
        case 31:
          {
          alt27 = 5;
          }
          break;
        case 63:
        case 66:
        case 67:
        case 71:
        case 73:
        case 74:
        case 75:
        case 79:
        case 80:
        case 81:
        case 83:
        case 84:
        case 86:
        case 87:
        case 90:
        case 91:
        case 92:
        case 93:
          {
          alt27 = 3;
          }
          break;
        case IDENTIFIER:
          {
          int LA27_24 = this.input.LA(3);

          if((synpred50_t033backtracking())) {
            alt27 = 3;
          }
          else if((synpred51_t033backtracking())) {
            alt27 = 4;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 27, 24, this.input);

            throw nvae;

          }
          }
          break;
        default:
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 27, 2, this.input);

          throw nvae;

        }

      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 27, 0, this.input);

        throw nvae;

      }
      switch (alt27) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           225:6: '[' constant_expression ']'*/
          {
          	this.matchSymbol(this.input,
          	    59,FOLLOW_59_in_declarator_suffix734); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_constant_expression_in_declarator_suffix736);
          	this.constant_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    60,FOLLOW_60_in_declarator_suffix738); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           226:9: '[' ']'*/
          {
          	this.matchSymbol(this.input,
          	    59,FOLLOW_59_in_declarator_suffix748); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    60,FOLLOW_60_in_declarator_suffix750); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           227:9: '(' parameter_type_list ')'*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_declarator_suffix760); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_parameter_type_list_in_declarator_suffix762);
          	this.parameter_type_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_declarator_suffix764); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           228:9: '(' identifier_list ')'*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_declarator_suffix774); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_identifier_list_in_declarator_suffix776);
          	this.identifier_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_declarator_suffix778); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           229:9: '(' ')'*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_declarator_suffix788); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_declarator_suffix790); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 24, declarator_suffix_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "declarator_suffix"


  // $ANTLR start "pointer"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   232:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );*/
  void pointer() {
    int pointer_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 25)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       233:2: ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' )*/
      int alt30 = 3;
      int LA30_0 = this.input.LA(1);

      if((LA30_0 == 32/*32*/)) {
        switch(this.input.LA(2)) {
        case 67:
        case 93:
          {
          int LA30_2 = this.input.LA(3);

          if((synpred54_t033backtracking())) {
            alt30 = 1;
          }
          else if((true)) {
            alt30 = 3;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 30, 2, this.input);

            throw nvae;

          }
          }
          break;
        case 32:
          {
          int LA30_3 = this.input.LA(3);

          if((synpred55_t033backtracking())) {
            alt30 = 2;
          }
          else if((true)) {
            alt30 = 3;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 30, 3, this.input);

            throw nvae;

          }
          }
          break;
        case EOF:
        case IDENTIFIER:
        case 30:
        case 31:
        case 37:
        case 46:
        case 47:
        case 52:
        case 59:
        case 63:
        case 66:
        case 71:
        case 73:
        case 74:
        case 75:
        case 79:
        case 80:
        case 81:
        case 83:
        case 84:
        case 86:
        case 87:
        case 89:
        case 90:
        case 91:
        case 92:
        case 95:
          {
          alt30 = 3;
          }
          break;
        default:
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 30, 1, this.input);

          throw nvae;

        }

      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 30, 0, this.input);

        throw nvae;

      }
      switch (alt30) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           233:4: '*' ( type_qualifier )+ ( pointer )?*/
          {
          	this.matchSymbol(this.input,
          	    32,FOLLOW_32_in_pointer801); 
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 233:8: ( type_qualifier )+*/
          	int cnt28 = 0;
          	loop28:
          	do {
          	  int alt28 = 2;
          	  int LA28_0 = this.input.LA(1);

          	  if((LA28_0 == 67/*67*/
          	    || LA28_0 == 93/*93*/)) {
          	    int LA28_17 = this.input.LA(2);

          	    if((synpred52_t033backtracking())) {
          	      alt28 = 1;
          	    }


          	  }


          	  switch (alt28) {
          			case 1 :
          			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
          			   233:8: type_qualifier*/
          			  {
          			  	this.pushFollow(FOLLOW_type_qualifier_in_pointer803);
          			  	this.type_qualifier();

          			  	this.state.fsp--;
          			  	if(this.state.failed) 
          			  	  return ;

          			  }
          			  break;

          			default :
          		    if(cnt28 >= 1) break loop28;
          		      if(this.state.backtracking > 0) {
          		        this.state.failed = true; 
          		        return ;
          		      }
          	        EarlyExitException eee = new EarlyExitException(28, this.input);
          	        throw eee;
          	  }
          	  cnt28++;
          	} while(true);


          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 233:24: ( pointer )?*/
          	int alt29 = 2;
          	int LA29_0 = this.input.LA(1);

          	if((LA29_0 == 32/*32*/)) {
          	  int LA29_1 = this.input.LA(2);

          	  if((synpred53_t033backtracking())) {
          	    alt29 = 1;
          	  }
          	}
          	switch (alt29) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     233:24: pointer*/
          	    {
          	    	this.pushFollow(FOLLOW_pointer_in_pointer806);
          	    	this.pointer();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           234:4: '*' pointer*/
          {
          	this.matchSymbol(this.input,
          	    32,FOLLOW_32_in_pointer812); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_pointer_in_pointer814);
          	this.pointer();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           235:4: '*'*/
          {
          	this.matchSymbol(this.input,
          	    32,FOLLOW_32_in_pointer819); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 25, pointer_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "pointer"


  // $ANTLR start "parameter_type_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   238:1: parameter_type_list : parameter_list ( ',' '...' )? ;*/
  void parameter_type_list() {
    int parameter_type_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 26)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       239:2: ( parameter_list ( ',' '...' )? )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       239:4: parameter_list ( ',' '...' )?*/
      {
      	this.pushFollow(FOLLOW_parameter_list_in_parameter_type_list830);
      	this.parameter_list();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 239:19: ( ',' '...' )?*/
      	int alt31 = 2;
      	int LA31_0 = this.input.LA(1);

      	if((LA31_0 == 37/*37*/)) {
      	  alt31 = 1;
      	}
      	switch (alt31) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     239:20: ',' '...'*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    37,FOLLOW_37_in_parameter_type_list833); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.matchSymbol(this.input,
      	    	    43,FOLLOW_43_in_parameter_type_list835); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 26, parameter_type_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "parameter_type_list"


  // $ANTLR start "parameter_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   242:1: parameter_list : parameter_declaration ( ',' parameter_declaration )* ;*/
  void parameter_list() {
    int parameter_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 27)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       243:2: ( parameter_declaration ( ',' parameter_declaration )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       243:4: parameter_declaration ( ',' parameter_declaration )**/
      {
      	this.pushFollow(FOLLOW_parameter_declaration_in_parameter_list848);
      	this.parameter_declaration();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 243:26: ( ',' parameter_declaration )**/
      	loop32:
      	do {
      	  int alt32 = 2;
      	  int LA32_0 = this.input.LA(1);

      	  if((LA32_0 == 37/*37*/)) {
      	    int LA32_1 = this.input.LA(2);

      	    if((LA32_1 == 13/*IDENTIFIER*/
      	      || LA32_1 == 63/*63*/
      	      || (LA32_1 >= 66 && LA32_1 <= 67)
      	      || LA32_1 == 71/*71*/
      	      || (LA32_1 >= 73 && LA32_1 <= 75)
      	      || (LA32_1 >= 79 && LA32_1 <= 81)
      	      || (LA32_1 >= 83 && LA32_1 <= 84)
      	      || (LA32_1 >= 86 && LA32_1 <= 87)
      	      || (LA32_1 >= 90 && LA32_1 <= 93))) {
      	      alt32 = 1;
      	    }


      	  }


      	  switch (alt32) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   243:27: ',' parameter_declaration*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_parameter_list851); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_parameter_declaration_in_parameter_list853);
      			  	this.parameter_declaration();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop32;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 27, parameter_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "parameter_list"


  // $ANTLR start "parameter_declaration"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   246:1: parameter_declaration : declaration_specifiers ( declarator | 
   abstract_declarator )* ;*/
  void parameter_declaration() {
    int parameter_declaration_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 28)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       247:2: ( declaration_specifiers ( declarator | abstract_declarator )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       247:4: declaration_specifiers ( declarator | abstract_declarator )**/
      {
      	this.pushFollow(FOLLOW_declaration_specifiers_in_parameter_declaration866);
      	this.declaration_specifiers();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 247:27: ( declarator | abstract_declarator )**/
      	loop33:
      	do {
      	  int alt33 = 3;
      	  switch ( this.input.LA(1) ) {
      	  case 32:
      	    {
      	    int LA33_4 = this.input.LA(2);

      	    if((synpred58_t033backtracking())) {
      	      alt33 = 1;
      	    }
      	    else if((synpred59_t033backtracking())) {
      	      alt33 = 2;
      	    }


      	    }
      	    break;
      	  case IDENTIFIER:
      	    {
      	    alt33 = 1;
      	    }
      	    break;
      	  case 30:
      	    {
      	    switch ( this.input.LA(2) ) {
      	    case 31:
      	    case 59:
      	    case 63:
      	    case 66:
      	    case 67:
      	    case 71:
      	    case 73:
      	    case 74:
      	    case 75:
      	    case 79:
      	    case 80:
      	    case 81:
      	    case 83:
      	    case 84:
      	    case 86:
      	    case 87:
      	    case 90:
      	    case 91:
      	    case 92:
      	    case 93:
      	      {
      	      alt33 = 2;
      	      }
      	      break;
      	    case 32:
      	      {
      	      int LA33_17 = this.input.LA(3);

      	      if((synpred58_t033backtracking())) {
      	        alt33 = 1;
      	      }
      	      else if((synpred59_t033backtracking())) {
      	        alt33 = 2;
      	      }


      	      }
      	      break;
      	    case IDENTIFIER:
      	      {
      	      int LA33_18 = this.input.LA(3);

      	      if((synpred58_t033backtracking())) {
      	        alt33 = 1;
      	      }
      	      else if((synpred59_t033backtracking())) {
      	        alt33 = 2;
      	      }


      	      }
      	      break;
      	    case 30:
      	      {
      	      int LA33_19 = this.input.LA(3);

      	      if((synpred58_t033backtracking())) {
      	        alt33 = 1;
      	      }
      	      else if((synpred59_t033backtracking())) {
      	        alt33 = 2;
      	      }


      	      }
      	      break;

      	    }

      	    }
      	    break;
      	  case 59:
      	    {
      	    alt33 = 2;
      	    }
      	    break;

      	  }

      	  switch (alt33) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   247:28: declarator*/
      			  {
      			  	this.pushFollow(FOLLOW_declarator_in_parameter_declaration869);
      			  	this.declarator();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   247:39: abstract_declarator*/
      			  {
      			  	this.pushFollow(FOLLOW_abstract_declarator_in_parameter_declaration871);
      			  	this.abstract_declarator();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop33;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 28, parameter_declaration_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "parameter_declaration"


  // $ANTLR start "identifier_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   250:1: identifier_list : IDENTIFIER ( ',' IDENTIFIER )* ;*/
  void identifier_list() {
    int identifier_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 29)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       251:2: ( IDENTIFIER ( ',' IDENTIFIER )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       251:4: IDENTIFIER ( ',' IDENTIFIER )**/
      {
      	this.matchSymbol(this.input,
      	    IDENTIFIER,FOLLOW_IDENTIFIER_in_identifier_list884); 
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 251:15: ( ',' IDENTIFIER )**/
      	loop34:
      	do {
      	  int alt34 = 2;
      	  int LA34_0 = this.input.LA(1);

      	  if((LA34_0 == 37/*37*/)) {
      	    alt34 = 1;
      	  }


      	  switch (alt34) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   251:16: ',' IDENTIFIER*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_identifier_list887); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.matchSymbol(this.input,
      			  	    IDENTIFIER,FOLLOW_IDENTIFIER_in_identifier_list889); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop34;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 29, identifier_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "identifier_list"


  // $ANTLR start "type_name"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   254:1: type_name : specifier_qualifier_list ( abstract_declarator )? ;*/
  void type_name() {
    int type_name_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 30)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       255:2: ( specifier_qualifier_list ( abstract_declarator )? )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       255:4: specifier_qualifier_list ( abstract_declarator )?*/
      {
      	this.pushFollow(FOLLOW_specifier_qualifier_list_in_type_name902);
      	this.specifier_qualifier_list();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 255:29: ( abstract_declarator )?*/
      	int alt35 = 2;
      	int LA35_0 = this.input.LA(1);

      	if((LA35_0 == 30/*30*/
      	  || LA35_0 == 32/*32*/
      	  || LA35_0 == 59/*59*/)) {
      	  alt35 = 1;
      	}
      	switch (alt35) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     255:29: abstract_declarator*/
      	    {
      	    	this.pushFollow(FOLLOW_abstract_declarator_in_type_name904);
      	    	this.abstract_declarator();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 30, type_name_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "type_name"


  // $ANTLR start "abstract_declarator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   258:1: abstract_declarator : ( pointer ( direct_abstract_declarator )? | 
   direct_abstract_declarator );*/
  void abstract_declarator() {
    int abstract_declarator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 31)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       259:2: ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator )*/
      int alt37 = 2;
      int LA37_0 = this.input.LA(1);

      if((LA37_0 == 32/*32*/)) {
        alt37 = 1;
      }
      else if((LA37_0 == 30/*30*/
        || LA37_0 == 59/*59*/)) {
        alt37 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 37, 0, this.input);

        throw nvae;

      }
      switch (alt37) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           259:4: pointer ( direct_abstract_declarator )?*/
          {
          	this.pushFollow(FOLLOW_pointer_in_abstract_declarator916);
          	this.pointer();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 259:12: ( direct_abstract_declarator )?*/
          	int alt36 = 2;
          	int LA36_0 = this.input.LA(1);

          	if((LA36_0 == 30/*30*/)) {
          	  switch(this.input.LA(2)) {
          	    case 31:
          	      {
          	      int LA36_8 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 32:
          	      {
          	      int LA36_9 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 30:
          	      {
          	      int LA36_10 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 59:
          	      {
          	      int LA36_11 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 63:
          	    case 74:
          	    case 81:
          	    case 86:
          	      {
          	      int LA36_12 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 92:
          	      {
          	      int LA36_13 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 66:
          	      {
          	      int LA36_14 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 83:
          	      {
          	      int LA36_15 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 79:
          	      {
          	      int LA36_16 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 80:
          	      {
          	      int LA36_17 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 75:
          	      {
          	      int LA36_18 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 71:
          	      {
          	      int LA36_19 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 84:
          	      {
          	      int LA36_20 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 91:
          	      {
          	      int LA36_21 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 87:
          	    case 90:
          	      {
          	      int LA36_22 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 73:
          	      {
          	      int LA36_23 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case IDENTIFIER:
          	      {
          	      int LA36_24 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 67:
          	    case 93:
          	      {
          	      int LA36_25 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	  }

          	}
          	else if((LA36_0 == 59/*59*/)) {
          	  switch(this.input.LA(2)) {
          	    case 60:
          	      {
          	      int LA36_26 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 30:
          	      {
          	      int LA36_27 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case IDENTIFIER:
          	      {
          	      int LA36_28 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case CHARACTER_LITERAL:
          	    case DECIMAL_LITERAL:
          	    case FLOATING_POINT_LITERAL:
          	    case HEX_LITERAL:
          	    case OCTAL_LITERAL:
          	    case STRING_LITERAL:
          	      {
          	      int LA36_29 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 35:
          	      {
          	      int LA36_30 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 39:
          	      {
          	      int LA36_31 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 23:
          	    case 28:
          	    case 32:
          	    case 34:
          	    case 38:
          	    case 100:
          	      {
          	      int LA36_32 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	    case 85:
          	      {
          	      int LA36_33 = this.input.LA(3);

          	      if((synpred62_t033backtracking())) {
          	        alt36 = 1;
          	      }
          	      }
          	      break;
          	  }

          	}
          	switch (alt36) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     259:12: direct_abstract_declarator*/
          	    {
          	    	this.pushFollow(FOLLOW_direct_abstract_declarator_in_abstract_declarator918);
          	    	this.direct_abstract_declarator();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           260:4: direct_abstract_declarator*/
          {
          	this.pushFollow(FOLLOW_direct_abstract_declarator_in_abstract_declarator924);
          	this.direct_abstract_declarator();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 31, abstract_declarator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "abstract_declarator"


  // $ANTLR start "direct_abstract_declarator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   263:1: direct_abstract_declarator : ( '(' abstract_declarator ')' | 
   abstract_declarator_suffix ) ( abstract_declarator_suffix )* ; */
  void direct_abstract_declarator() {
    int direct_abstract_declarator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 32)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       264:2: ( ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* ) */
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       264:4: ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* */
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 264:4: ( '(' abstract_declarator ')' | abstract_declarator_suffix )*/
      	int alt38 = 2;
      	int LA38_0 = this.input.LA(1);

      	if((LA38_0 == 30/*30*/)) {
      	  int LA38_1 = this.input.LA(2);

      	  if((LA38_1 == 13/*IDENTIFIER*/
      	    || LA38_1 == 31/*31*/
      	    || LA38_1 == 63/*63*/
      	    || (LA38_1 >= 66 && LA38_1 <= 67)
      	    || LA38_1 == 71/*71*/
      	    || (LA38_1 >= 73 && LA38_1 <= 75)
      	    || (LA38_1 >= 79 && LA38_1 <= 81)
      	    || (LA38_1 >= 83 && LA38_1 <= 84)
      	    || (LA38_1 >= 86 && LA38_1 <= 87)
      	    || (LA38_1 >= 90 && LA38_1 <= 93))) {
      	    alt38 = 2;
      	  }
      	  else if((LA38_1 == 30/*30*/
      	    || LA38_1 == 32/*32*/
      	    || LA38_1 == 59/*59*/)) {
      	    alt38 = 1;
      	  }
      	  else {
      	    if(this.state.backtracking > 0) {
      	      this.state.failed = true; 
      	      return ;
      	    }
      	    NoViableAltException nvae =
      	        new NoViableAltException("", 38, 1, this.input);

      	    throw nvae;

      	  }
      	}
      	else if((LA38_0 == 59/*59*/)) {
      	  alt38 = 2;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 38, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt38) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     264:6: '(' abstract_declarator ')'*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    30,FOLLOW_30_in_direct_abstract_declarator937); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.pushFollow(FOLLOW_abstract_declarator_in_direct_abstract_declarator939);
      	    	this.abstract_declarator();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.matchSymbol(this.input,
      	    	    31,FOLLOW_31_in_direct_abstract_declarator941); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     264:36: abstract_declarator_suffix*/
      	    {
      	    	this.pushFollow(FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator945);
      	    	this.abstract_declarator_suffix();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 264:65: ( abstract_declarator_suffix )**/
      	loop39:
      	do {
      	  int alt39 = 2;
      	  int LA39_0 = this.input.LA(1);

      	  if((LA39_0 == 30/*30*/)) {
      	    switch ( this.input.LA(2) ) {
      	    case 31:
      	      {
      	      int LA39_8 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case IDENTIFIER:
      	      {
      	      int LA39_10 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 63:
      	    case 74:
      	    case 81:
      	    case 86:
      	      {
      	      int LA39_13 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 92:
      	      {
      	      int LA39_14 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 66:
      	      {
      	      int LA39_15 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 83:
      	      {
      	      int LA39_16 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 79:
      	      {
      	      int LA39_17 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 80:
      	      {
      	      int LA39_18 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 75:
      	      {
      	      int LA39_19 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 71:
      	      {
      	      int LA39_20 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 84:
      	      {
      	      int LA39_21 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 91:
      	      {
      	      int LA39_22 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 87:
      	    case 90:
      	      {
      	      int LA39_23 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 73:
      	      {
      	      int LA39_24 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 67:
      	    case 93:
      	      {
      	      int LA39_25 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;

      	    }

      	  }
      	  else if((LA39_0 == 59/*59*/)) {
      	    switch ( this.input.LA(2) ) {
      	    case 60:
      	      {
      	      int LA39_26 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 30:
      	      {
      	      int LA39_27 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case IDENTIFIER:
      	      {
      	      int LA39_28 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case CHARACTER_LITERAL:
      	    case DECIMAL_LITERAL:
      	    case FLOATING_POINT_LITERAL:
      	    case HEX_LITERAL:
      	    case OCTAL_LITERAL:
      	    case STRING_LITERAL:
      	      {
      	      int LA39_29 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 35:
      	      {
      	      int LA39_30 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 39:
      	      {
      	      int LA39_31 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 23:
      	    case 28:
      	    case 32:
      	    case 34:
      	    case 38:
      	    case 100:
      	      {
      	      int LA39_32 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;
      	    case 85:
      	      {
      	      int LA39_33 = this.input.LA(3);

      	      if((synpred65_t033backtracking())) {
      	        alt39 = 1;
      	      }


      	      }
      	      break;

      	    }

      	  }


      	  switch (alt39) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   264:65: abstract_declarator_suffix*/
      			  {
      			  	this.pushFollow(FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator949);
      			  	this.abstract_declarator_suffix();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop39;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 32, direct_abstract_declarator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "direct_abstract_declarator"


  // $ANTLR start "abstract_declarator_suffix"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   267:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | 
   '(' ')' | '(' parameter_type_list ')' );*/
  void abstract_declarator_suffix() {
    int abstract_declarator_suffix_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 33)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       268:2: ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' ) */
      int alt40 = 4;
      int LA40_0 = this.input.LA(1);

      if((LA40_0 == 59/*59*/)) {
        int LA40_1 = this.input.LA(2);

        if((LA40_1 == 60/*60*/)) {
          alt40 = 1;
        }
        else if((LA40_1 == 4/*CHARACTER_LITERAL*/
          || LA40_1 == 6/*DECIMAL_LITERAL*/
          || LA40_1 == 9/*FLOATING_POINT_LITERAL*/
          || LA40_1 == 11/*HEX_LITERAL*/
          || LA40_1 == 13/*IDENTIFIER*/
          || LA40_1 == 18/*OCTAL_LITERAL*/
          || LA40_1 == 20/*STRING_LITERAL*/
          || LA40_1 == 23/*23*/
          || LA40_1 == 28/*28*/
          || LA40_1 == 30/*30*/
          || LA40_1 == 32/*32*/
          || (LA40_1 >= 34 && LA40_1 <= 35)
          || (LA40_1 >= 38 && LA40_1 <= 39)
          || LA40_1 == 85/*85*/
          || LA40_1 == 100/*100*/)) {
          alt40 = 2;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 40, 1, this.input);

          throw nvae;

        }
      }
      else if((LA40_0 == 30/*30*/)) {
        int LA40_2 = this.input.LA(2);

        if((LA40_2 == 31/*31*/)) {
          alt40 = 3;
        }
        else if((LA40_2 == 13/*IDENTIFIER*/
          || LA40_2 == 63/*63*/
          || (LA40_2 >= 66 && LA40_2 <= 67)
          || LA40_2 == 71/*71*/
          || (LA40_2 >= 73 && LA40_2 <= 75)
          || (LA40_2 >= 79 && LA40_2 <= 81)
          || (LA40_2 >= 83 && LA40_2 <= 84)
          || (LA40_2 >= 86 && LA40_2 <= 87)
          || (LA40_2 >= 90 && LA40_2 <= 93))) {
          alt40 = 4;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 40, 2, this.input);

          throw nvae;

        }
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 40, 0, this.input);

        throw nvae;

      }
      switch (alt40) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           268:4: '[' ']'*/
          {
          	this.matchSymbol(this.input,
          	    59,FOLLOW_59_in_abstract_declarator_suffix961); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    60,FOLLOW_60_in_abstract_declarator_suffix963); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           269:4: '[' constant_expression ']'*/
          {
          	this.matchSymbol(this.input,
          	    59,FOLLOW_59_in_abstract_declarator_suffix968); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_constant_expression_in_abstract_declarator_suffix970);
          	this.constant_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    60,FOLLOW_60_in_abstract_declarator_suffix972); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           270:4: '(' ')'*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_abstract_declarator_suffix977); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_abstract_declarator_suffix979); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           271:4: '(' parameter_type_list ')'*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_abstract_declarator_suffix984); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_parameter_type_list_in_abstract_declarator_suffix986);
          	this.parameter_type_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_abstract_declarator_suffix988); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 33, abstract_declarator_suffix_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "abstract_declarator_suffix"


  // $ANTLR start "initializer"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   274:1: initializer : ( assignment_expression | '{' initializer_list ( ',' )? '}' ); */
  void initializer() {
    int initializer_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 34)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       275:2: ( assignment_expression | '{' initializer_list ( ',' )? '}' )*/
      int alt42 = 2;
      int LA42_0 = this.input.LA(1);

      if((LA42_0 == 4/*CHARACTER_LITERAL*/
        || LA42_0 == 6/*DECIMAL_LITERAL*/
        || LA42_0 == 9/*FLOATING_POINT_LITERAL*/
        || LA42_0 == 11/*HEX_LITERAL*/
        || LA42_0 == 13/*IDENTIFIER*/
        || LA42_0 == 18/*OCTAL_LITERAL*/
        || LA42_0 == 20/*STRING_LITERAL*/
        || LA42_0 == 23/*23*/
        || LA42_0 == 28/*28*/
        || LA42_0 == 30/*30*/
        || LA42_0 == 32/*32*/
        || (LA42_0 >= 34 && LA42_0 <= 35)
        || (LA42_0 >= 38 && LA42_0 <= 39)
        || LA42_0 == 85/*85*/
        || LA42_0 == 100/*100*/)) {
        alt42 = 1;
      }
      else if((LA42_0 == 95/*95*/)) {
        alt42 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 42, 0, this.input);

        throw nvae;

      }
      switch (alt42) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           275:4: assignment_expression*/
          {
          	this.pushFollow(FOLLOW_assignment_expression_in_initializer1000);
          	this.assignment_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           276:4: '{' initializer_list ( ',' )? '}'*/
          {
          	this.matchSymbol(this.input,
          	    95,FOLLOW_95_in_initializer1005); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_initializer_list_in_initializer1007);
          	this.initializer_list();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 276:25: ( ',' )?*/
          	int alt41 = 2;
          	int LA41_0 = this.input.LA(1);

          	if((LA41_0 == 37/*37*/)) {
          	  alt41 = 1;
          	}
          	switch (alt41) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     276:25: ','*/
          	    {
          	    	this.matchSymbol(this.input,
          	    	    37,FOLLOW_37_in_initializer1009); 
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          	this.matchSymbol(this.input,
          	    99,FOLLOW_99_in_initializer1012); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 34, initializer_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "initializer"


  // $ANTLR start "initializer_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   279:1: initializer_list : initializer ( ',' initializer )* ;*/
  void initializer_list() {
    int initializer_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 35)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       280:2: ( initializer ( ',' initializer )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       280:4: initializer ( ',' initializer )**/
      {
      	this.pushFollow(FOLLOW_initializer_in_initializer_list1023);
      	this.initializer();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 280:16: ( ',' initializer )**/
      	loop43:
      	do {
      	  int alt43 = 2;
      	  int LA43_0 = this.input.LA(1);

      	  if((LA43_0 == 37/*37*/)) {
      	    int LA43_1 = this.input.LA(2);

      	    if((LA43_1 == 4/*CHARACTER_LITERAL*/
      	      || LA43_1 == 6/*DECIMAL_LITERAL*/
      	      || LA43_1 == 9/*FLOATING_POINT_LITERAL*/
      	      || LA43_1 == 11/*HEX_LITERAL*/
      	      || LA43_1 == 13/*IDENTIFIER*/
      	      || LA43_1 == 18/*OCTAL_LITERAL*/
      	      || LA43_1 == 20/*STRING_LITERAL*/
      	      || LA43_1 == 23/*23*/
      	      || LA43_1 == 28/*28*/
      	      || LA43_1 == 30/*30*/
      	      || LA43_1 == 32/*32*/
      	      || (LA43_1 >= 34 && LA43_1 <= 35)
      	      || (LA43_1 >= 38 && LA43_1 <= 39)
      	      || LA43_1 == 85/*85*/
      	      || LA43_1 == 95/*95*/
      	      || LA43_1 == 100/*100*/)) {
      	      alt43 = 1;
      	    }


      	  }


      	  switch (alt43) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   280:17: ',' initializer*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_initializer_list1026); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_initializer_in_initializer_list1028);
      			  	this.initializer();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop43;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 35, initializer_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "initializer_list"


  // $ANTLR start "argument_expression_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   285:1: argument_expression_list : assignment_expression ( ',' assignment_expression )* ;*/
  void argument_expression_list() {
    int argument_expression_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 36)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       286:2: ( assignment_expression ( ',' assignment_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       286:6: assignment_expression ( ',' assignment_expression )**/
      {
      	this.pushFollow(FOLLOW_assignment_expression_in_argument_expression_list1045);
      	this.assignment_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 286:28: ( ',' assignment_expression )**/
      	loop44:
      	do {
      	  int alt44 = 2;
      	  int LA44_0 = this.input.LA(1);

      	  if((LA44_0 == 37/*37*/)) {
      	    alt44 = 1;
      	  }


      	  switch (alt44) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   286:29: ',' assignment_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_argument_expression_list1048); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_assignment_expression_in_argument_expression_list1050);
      			  	this.assignment_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop44;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 36, argument_expression_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "argument_expression_list"


  // $ANTLR start "additive_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   289:1: additive_expression : ( multiplicative_expression ) ( '+' multiplicative_expression | 
   '-' multiplicative_expression )* ;*/
  void additive_expression() {
    int additive_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 37)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       290:2: ( ( multiplicative_expression ) ( '+' multiplicative_expression | 
       '-' multiplicative_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       290:4: ( multiplicative_expression ) ( '+' multiplicative_expression | 
       '-' multiplicative_expression )**/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 290:4: ( multiplicative_expression )*/
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 290:5: multiplicative_expression*/
      	{
      		this.pushFollow(FOLLOW_multiplicative_expression_in_additive_expression1064);
      		this.multiplicative_expression();

      		this.state.fsp--;
      		if(this.state.failed) 
      		  return ;

      	}


      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 290:32: ( '+' multiplicative_expression | '-' multiplicative_expression )**/
      	loop45:
      	do {
      	  int alt45 = 3;
      	  int LA45_0 = this.input.LA(1);

      	  if((LA45_0 == 34/*34*/)) {
      	    alt45 = 1;
      	  }
      	  else if((LA45_0 == 38/*38*/)) {
      	    alt45 = 2;
      	  }


      	  switch (alt45) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   290:33: '+' multiplicative_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    34,FOLLOW_34_in_additive_expression1068); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_multiplicative_expression_in_additive_expression1070);
      			  	this.multiplicative_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   290:65: '-' multiplicative_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    38,FOLLOW_38_in_additive_expression1074); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_multiplicative_expression_in_additive_expression1076);
      			  	this.multiplicative_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop45;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 37, additive_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "additive_expression"


  // $ANTLR start "multiplicative_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   293:1: multiplicative_expression : ( cast_expression ) ( '*' cast_expression | 
   '/' cast_expression | '%' cast_expression )* ;*/
  void multiplicative_expression() {
    int multiplicative_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 38)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       294:2: ( ( cast_expression ) ( '*' cast_expression | '/' cast_expression | 
       '%' cast_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       294:4: ( cast_expression ) ( '*' cast_expression | '/' cast_expression | 
       '%' cast_expression )**/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 294:4: ( cast_expression )*/
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 294:5: cast_expression*/
      	{
      		this.pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1090);
      		this.cast_expression();

      		this.state.fsp--;
      		if(this.state.failed) 
      		  return ;

      	}


      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 294:22: ( '*' cast_expression | '/' cast_expression | '%' cast_expression )**/
      	loop46:
      	do {
      	  int alt46 = 4;
      	  switch ( this.input.LA(1) ) {
      	  case 32:
      	    {
      	    alt46 = 1;
      	    }
      	    break;
      	  case 44:
      	    {
      	    alt46 = 2;
      	    }
      	    break;
      	  case 25:
      	    {
      	    alt46 = 3;
      	    }
      	    break;

      	  }

      	  switch (alt46) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   294:23: '*' cast_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    32,FOLLOW_32_in_multiplicative_expression1094); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1096);
      			  	this.cast_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   294:45: '/' cast_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    44,FOLLOW_44_in_multiplicative_expression1100); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1102);
      			  	this.cast_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 3 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   294:67: '%' cast_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    25,FOLLOW_25_in_multiplicative_expression1106); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1108);
      			  	this.cast_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop46;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 38, multiplicative_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "multiplicative_expression"


  // $ANTLR start "cast_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   297:1: cast_expression : ( '(' type_name ')' cast_expression | 
   unary_expression );*/
  void cast_expression() {
    int cast_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 39)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       298:2: ( '(' type_name ')' cast_expression | unary_expression )*/
      int alt47 = 2;
      int LA47_0 = this.input.LA(1);

      if((LA47_0 == 30/*30*/)) {
        switch(this.input.LA(2)) {
        case 66:
        case 67:
        case 71:
        case 73:
        case 75:
        case 79:
        case 80:
        case 83:
        case 84:
        case 87:
        case 90:
        case 91:
        case 92:
        case 93:
          {
          alt47 = 1;
          }
          break;
        case IDENTIFIER:
          {
          int LA47_20 = this.input.LA(3);

          if((synpred78_t033backtracking())) {
            alt47 = 1;
          }
          else if((true)) {
            alt47 = 2;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 47, 20, this.input);

            throw nvae;

          }
          }
          break;
        case CHARACTER_LITERAL:
        case DECIMAL_LITERAL:
        case FLOATING_POINT_LITERAL:
        case HEX_LITERAL:
        case OCTAL_LITERAL:
        case STRING_LITERAL:
        case 23:
        case 28:
        case 30:
        case 32:
        case 34:
        case 35:
        case 38:
        case 39:
        case 85:
        case 100:
          {
          alt47 = 2;
          }
          break;
        default:
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 47, 1, this.input);

          throw nvae;

        }

      }
      else if((LA47_0 == 4/*CHARACTER_LITERAL*/
        || LA47_0 == 6/*DECIMAL_LITERAL*/
        || LA47_0 == 9/*FLOATING_POINT_LITERAL*/
        || LA47_0 == 11/*HEX_LITERAL*/
        || LA47_0 == 13/*IDENTIFIER*/
        || LA47_0 == 18/*OCTAL_LITERAL*/
        || LA47_0 == 20/*STRING_LITERAL*/
        || LA47_0 == 23/*23*/
        || LA47_0 == 28/*28*/
        || LA47_0 == 32/*32*/
        || (LA47_0 >= 34 && LA47_0 <= 35)
        || (LA47_0 >= 38 && LA47_0 <= 39)
        || LA47_0 == 85/*85*/
        || LA47_0 == 100/*100*/)) {
        alt47 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 47, 0, this.input);

        throw nvae;

      }
      switch (alt47) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           298:4: '(' type_name ')' cast_expression*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_cast_expression1121); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_type_name_in_cast_expression1123);
          	this.type_name();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_cast_expression1125); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_cast_expression_in_cast_expression1127);
          	this.cast_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           299:4: unary_expression*/
          {
          	this.pushFollow(FOLLOW_unary_expression_in_cast_expression1132);
          	this.unary_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 39, cast_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "cast_expression"


  // $ANTLR start "unary_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   302:1: unary_expression : ( postfix_expression | '++' unary_expression | 
   '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 
   'sizeof' '(' type_name ')' );*/
  void unary_expression() {
    int unary_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 40)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       303:2: ( postfix_expression | '++' unary_expression | '--' unary_expression | 
       unary_operator cast_expression | 'sizeof' unary_expression | 
       'sizeof' '(' type_name ')' )*/
      int alt48 = 6;
      switch(this.input.LA(1)) {
      case CHARACTER_LITERAL:
      case DECIMAL_LITERAL:
      case FLOATING_POINT_LITERAL:
      case HEX_LITERAL:
      case IDENTIFIER:
      case OCTAL_LITERAL:
      case STRING_LITERAL:
      case 30:
        {
        alt48 = 1;
        }
        break;
      case 35:
        {
        alt48 = 2;
        }
        break;
      case 39:
        {
        alt48 = 3;
        }
        break;
      case 23:
      case 28:
      case 32:
      case 34:
      case 38:
      case 100:
        {
        alt48 = 4;
        }
        break;
      case 85:
        {
        int LA48_7 = this.input.LA(2);

        if((LA48_7 == 30/*30*/)) {
          int LA48_8 = this.input.LA(3);

          if((synpred83_t033backtracking())) {
            alt48 = 5;
          }
          else if((true)) {
            alt48 = 6;
          }
          else {
            if(this.state.backtracking > 0) {
              this.state.failed = true; 
              return ;
            }
            NoViableAltException nvae =
                new NoViableAltException("", 48, 8, this.input);

            throw nvae;

          }
        }
        else if((LA48_7 == 4/*CHARACTER_LITERAL*/
          || LA48_7 == 6/*DECIMAL_LITERAL*/
          || LA48_7 == 9/*FLOATING_POINT_LITERAL*/
          || LA48_7 == 11/*HEX_LITERAL*/
          || LA48_7 == 13/*IDENTIFIER*/
          || LA48_7 == 18/*OCTAL_LITERAL*/
          || LA48_7 == 20/*STRING_LITERAL*/
          || LA48_7 == 23/*23*/
          || LA48_7 == 28/*28*/
          || LA48_7 == 32/*32*/
          || (LA48_7 >= 34 && LA48_7 <= 35)
          || (LA48_7 >= 38 && LA48_7 <= 39)
          || LA48_7 == 85/*85*/
          || LA48_7 == 100/*100*/)) {
          alt48 = 5;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 48, 7, this.input);

          throw nvae;

        }
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 48, 0, this.input);

        throw nvae;

      }

      switch (alt48) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           303:4: postfix_expression*/
          {
          	this.pushFollow(FOLLOW_postfix_expression_in_unary_expression1143);
          	this.postfix_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           304:4: '++' unary_expression*/
          {
          	this.matchSymbol(this.input,
          	    35,FOLLOW_35_in_unary_expression1148); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_unary_expression_in_unary_expression1150);
          	this.unary_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           305:4: '--' unary_expression*/
          {
          	this.matchSymbol(this.input,
          	    39,FOLLOW_39_in_unary_expression1155); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_unary_expression_in_unary_expression1157);
          	this.unary_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           306:4: unary_operator cast_expression*/
          {
          	this.pushFollow(FOLLOW_unary_operator_in_unary_expression1162);
          	this.unary_operator();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_cast_expression_in_unary_expression1164);
          	this.cast_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           307:4: 'sizeof' unary_expression*/
          {
          	this.matchSymbol(this.input,
          	    85,FOLLOW_85_in_unary_expression1169); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_unary_expression_in_unary_expression1171);
          	this.unary_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 6 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           308:4: 'sizeof' '(' type_name ')'*/
          {
          	this.matchSymbol(this.input,
          	    85,FOLLOW_85_in_unary_expression1176); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_unary_expression1178); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_type_name_in_unary_expression1180);
          	this.type_name();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_unary_expression1182); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 40, unary_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "unary_expression"


  // $ANTLR start "postfix_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   311:1: postfix_expression : primary_expression ( '[' expression ']' | 
   '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | 
   '->' IDENTIFIER | '++' | '--' )* ;*/
  void postfix_expression() {
    int postfix_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 41)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       312:2: ( primary_expression ( '[' expression ']' | '(' ')' | 
       '(' argument_expression_list ')' | '.' IDENTIFIER | '->' IDENTIFIER | 
       '++' | '--' )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       312:6: primary_expression ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | 
       '.' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )**/
      {
      	this.pushFollow(FOLLOW_primary_expression_in_postfix_expression1195);
      	this.primary_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 313:9: ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | 
      	 '.' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )**/
      	loop49:
      	do {
      	  int alt49 = 8;
      	  switch ( this.input.LA(1) ) {
      	  case 59:
      	    {
      	    alt49 = 1;
      	    }
      	    break;
      	  case 30:
      	    {
      	    int LA49_24 = this.input.LA(2);

      	    if((LA49_24 == 31/*31*/)) {
      	      alt49 = 2;
      	    }
      	    else if((LA49_24 == 4/*CHARACTER_LITERAL*/
      	      || LA49_24 == 6/*DECIMAL_LITERAL*/
      	      || LA49_24 == 9/*FLOATING_POINT_LITERAL*/
      	      || LA49_24 == 11/*HEX_LITERAL*/
      	      || LA49_24 == 13/*IDENTIFIER*/
      	      || LA49_24 == 18/*OCTAL_LITERAL*/
      	      || LA49_24 == 20/*STRING_LITERAL*/
      	      || LA49_24 == 23/*23*/
      	      || LA49_24 == 28/*28*/
      	      || LA49_24 == 30/*30*/
      	      || LA49_24 == 32/*32*/
      	      || (LA49_24 >= 34 && LA49_24 <= 35)
      	      || (LA49_24 >= 38 && LA49_24 <= 39)
      	      || LA49_24 == 85/*85*/
      	      || LA49_24 == 100/*100*/)) {
      	      alt49 = 3;
      	    }


      	    }
      	    break;
      	  case 42:
      	    {
      	    alt49 = 4;
      	    }
      	    break;
      	  case 41:
      	    {
      	    alt49 = 5;
      	    }
      	    break;
      	  case 35:
      	    {
      	    alt49 = 6;
      	    }
      	    break;
      	  case 39:
      	    {
      	    alt49 = 7;
      	    }
      	    break;

      	  }

      	  switch (alt49) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   313:13: '[' expression ']'*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    59,FOLLOW_59_in_postfix_expression1209); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_expression_in_postfix_expression1211);
      			  	this.expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.matchSymbol(this.input,
      			  	    60,FOLLOW_60_in_postfix_expression1213); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   314:13: '(' ')'*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    30,FOLLOW_30_in_postfix_expression1227); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.matchSymbol(this.input,
      			  	    31,FOLLOW_31_in_postfix_expression1229); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 3 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   315:13: '(' argument_expression_list ')'*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    30,FOLLOW_30_in_postfix_expression1243); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_argument_expression_list_in_postfix_expression1245);
      			  	this.argument_expression_list();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.matchSymbol(this.input,
      			  	    31,FOLLOW_31_in_postfix_expression1247); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 4 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   316:13: '.' IDENTIFIER*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    42,FOLLOW_42_in_postfix_expression1261); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.matchSymbol(this.input,
      			  	    IDENTIFIER,FOLLOW_IDENTIFIER_in_postfix_expression1263); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 5 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   317:13: '->' IDENTIFIER*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    41,FOLLOW_41_in_postfix_expression1277); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.matchSymbol(this.input,
      			  	    IDENTIFIER,FOLLOW_IDENTIFIER_in_postfix_expression1279); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 6 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   318:13: '++'*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    35,FOLLOW_35_in_postfix_expression1293); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;
      			case 7 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   319:13: '--'*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    39,FOLLOW_39_in_postfix_expression1307); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop49;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 41, postfix_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "postfix_expression"


  // $ANTLR start "unary_operator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   323:1: unary_operator : ( '&' | '*' | '+' | '-' | '~' | '!' );*/
  void unary_operator() {
    int unary_operator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 42)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       324:2: ( '&' | '*' | '+' | '-' | '~' | '!' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
      */
      {
      	if(this.input.LA(1) == 23
      	  || this.input.LA(1) == 28
      	  || this.input.LA(1) == 32
      	  || this.input.LA(1) == 34
      	  || this.input.LA(1) == 38
      	  || this.input.LA(1) == 100) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 42, unary_operator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "unary_operator"


  // $ANTLR start "primary_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   332:1: primary_expression : ( IDENTIFIER | constant | '(' expression ')' );*/
  void primary_expression() {
    int primary_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 43)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       333:2: ( IDENTIFIER | constant | '(' expression ')' )*/
      int alt50 = 3;
      switch(this.input.LA(1)) {
      case IDENTIFIER:
        {
        alt50 = 1;
        }
        break;
      case CHARACTER_LITERAL:
      case DECIMAL_LITERAL:
      case FLOATING_POINT_LITERAL:
      case HEX_LITERAL:
      case OCTAL_LITERAL:
      case STRING_LITERAL:
        {
        alt50 = 2;
        }
        break;
      case 30:
        {
        alt50 = 3;
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 50, 0, this.input);

        throw nvae;

      }

      switch (alt50) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           333:4: IDENTIFIER*/
          {
          	this.matchSymbol(this.input,
          	    IDENTIFIER,FOLLOW_IDENTIFIER_in_primary_expression1365); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           334:4: constant*/
          {
          	this.pushFollow(FOLLOW_constant_in_primary_expression1370);
          	this.constant();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           335:4: '(' expression ')'*/
          {
          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_primary_expression1375); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_in_primary_expression1377);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_primary_expression1379); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 43, primary_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "primary_expression"


  // $ANTLR start "constant"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   338:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | 
   CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL ); */
  void constant() {
    int constant_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 44)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       339:5: ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | 
       STRING_LITERAL | FLOATING_POINT_LITERAL )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
      */
      {
      	if(this.input.LA(1) == CHARACTER_LITERAL
      	  || this.input.LA(1) == DECIMAL_LITERAL
      	  || this.input.LA(1) == FLOATING_POINT_LITERAL
      	  || this.input.LA(1) == HEX_LITERAL
      	  || this.input.LA(1) == OCTAL_LITERAL
      	  || this.input.LA(1) == STRING_LITERAL) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 44, constant_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "constant"


  // $ANTLR start "expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   349:1: expression : assignment_expression ( ',' assignment_expression )* ;*/
  void expression() {
    int expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 45)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       350:2: ( assignment_expression ( ',' assignment_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       350:4: assignment_expression ( ',' assignment_expression )**/
      {
      	this.pushFollow(FOLLOW_assignment_expression_in_expression1454);
      	this.assignment_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 350:26: ( ',' assignment_expression )**/
      	loop51:
      	do {
      	  int alt51 = 2;
      	  int LA51_0 = this.input.LA(1);

      	  if((LA51_0 == 37/*37*/)) {
      	    alt51 = 1;
      	  }


      	  switch (alt51) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   350:27: ',' assignment_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    37,FOLLOW_37_in_expression1457); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_assignment_expression_in_expression1459);
      			  	this.assignment_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop51;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 45, expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "expression"


  // $ANTLR start "constant_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   353:1: constant_expression : conditional_expression ;*/
  void constant_expression() {
    int constant_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 46)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       354:2: ( conditional_expression )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       354:4: conditional_expression*/
      {
      	this.pushFollow(FOLLOW_conditional_expression_in_constant_expression1472);
      	this.conditional_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 46, constant_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "constant_expression"


  // $ANTLR start "assignment_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   357:1: assignment_expression : ( lvalue assignment_operator assignment_expression | 
   conditional_expression );*/
  void assignment_expression() {
    int assignment_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 47)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       358:2: ( lvalue assignment_operator assignment_expression | conditional_expression ) */
      int alt52 = 2;
      alt52 = this.dfas["dfa52"].predict(this.input);
      switch (alt52) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           358:4: lvalue assignment_operator assignment_expression*/
          {
          	this.pushFollow(FOLLOW_lvalue_in_assignment_expression1483);
          	this.lvalue();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_assignment_operator_in_assignment_expression1485);
          	this.assignment_operator();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_assignment_expression_in_assignment_expression1487);
          	this.assignment_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           359:4: conditional_expression*/
          {
          	this.pushFollow(FOLLOW_conditional_expression_in_assignment_expression1492);
          	this.conditional_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 47, assignment_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "assignment_expression"


  // $ANTLR start "lvalue"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   362:1: lvalue : unary_expression ;*/
  void lvalue() {
    int lvalue_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 48)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       363:2: ( unary_expression )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       363:4: unary_expression*/
      {
      	this.pushFollow(FOLLOW_unary_expression_in_lvalue1504);
      	this.unary_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 48, lvalue_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "lvalue"


  // $ANTLR start "assignment_operator"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   366:1: assignment_operator : ( '=' | '*=' | '/=' | '%=' | '+=' | 
   '-=' | '<<=' | '>>=' | '&=' | '^=' | '|=' );*/
  void assignment_operator() {
    int assignment_operator_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 49)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       367:2: ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | 
       '&=' | '^=' | '|=' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
      */
      {
      	if(this.input.LA(1) == 26
      	  || this.input.LA(1) == 29
      	  || this.input.LA(1) == 33
      	  || this.input.LA(1) == 36
      	  || this.input.LA(1) == 40
      	  || this.input.LA(1) == 45
      	  || this.input.LA(1) == 50
      	  || this.input.LA(1) == 52
      	  || this.input.LA(1) == 57
      	  || this.input.LA(1) == 62
      	  || this.input.LA(1) == 97) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	  this.state.failed = false;
      	}
      	else {
      	  if(this.state.backtracking > 0) {
      	    this.state.failed = true; 
      	    return ;
      	  }
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 49, assignment_operator_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "assignment_operator"


  // $ANTLR start "conditional_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   380:1: conditional_expression : logical_or_expression ( '?' expression ':' conditional_expression )? ;*/
  void conditional_expression() {
    int conditional_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 50)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       381:2: ( logical_or_expression ( '?' expression ':' conditional_expression )? )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       381:4: logical_or_expression ( '?' expression ':' conditional_expression )?*/
      {
      	this.pushFollow(FOLLOW_logical_or_expression_in_conditional_expression1576);
      	this.logical_or_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 381:26: ( '?' expression ':' conditional_expression )?*/
      	int alt53 = 2;
      	int LA53_0 = this.input.LA(1);

      	if((LA53_0 == 58/*58*/)) {
      	  alt53 = 1;
      	}
      	switch (alt53) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     381:27: '?' expression ':' conditional_expression*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    58,FOLLOW_58_in_conditional_expression1579); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.pushFollow(FOLLOW_expression_in_conditional_expression1581);
      	    	this.expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.matchSymbol(this.input,
      	    	    46,FOLLOW_46_in_conditional_expression1583); 
      	    	if(this.state.failed) 
      	    	  return ;

      	    	this.pushFollow(FOLLOW_conditional_expression_in_conditional_expression1585);
      	    	this.conditional_expression();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 50, conditional_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "conditional_expression"


  // $ANTLR start "logical_or_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   384:1: logical_or_expression : logical_and_expression ( '||' logical_and_expression )* ; */
  void logical_or_expression() {
    int logical_or_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 51)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       385:2: ( logical_and_expression ( '||' logical_and_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       385:4: logical_and_expression ( '||' logical_and_expression )**/
      {
      	this.pushFollow(FOLLOW_logical_and_expression_in_logical_or_expression1598);
      	this.logical_and_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 385:27: ( '||' logical_and_expression )**/
      	loop54:
      	do {
      	  int alt54 = 2;
      	  int LA54_0 = this.input.LA(1);

      	  if((LA54_0 == 98/*98*/)) {
      	    alt54 = 1;
      	  }


      	  switch (alt54) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   385:28: '||' logical_and_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    98,FOLLOW_98_in_logical_or_expression1601); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_logical_and_expression_in_logical_or_expression1603);
      			  	this.logical_and_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop54;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 51, logical_or_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "logical_or_expression"


  // $ANTLR start "logical_and_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   388:1: logical_and_expression : inclusive_or_expression ( '&&' inclusive_or_expression )* ;*/
  void logical_and_expression() {
    int logical_and_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 52)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       389:2: ( inclusive_or_expression ( '&&' inclusive_or_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       389:4: inclusive_or_expression ( '&&' inclusive_or_expression )**/
      {
      	this.pushFollow(FOLLOW_inclusive_or_expression_in_logical_and_expression1616);
      	this.inclusive_or_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 389:28: ( '&&' inclusive_or_expression )**/
      	loop55:
      	do {
      	  int alt55 = 2;
      	  int LA55_0 = this.input.LA(1);

      	  if((LA55_0 == 27/*27*/)) {
      	    alt55 = 1;
      	  }


      	  switch (alt55) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   389:29: '&&' inclusive_or_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    27,FOLLOW_27_in_logical_and_expression1619); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_inclusive_or_expression_in_logical_and_expression1621);
      			  	this.inclusive_or_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop55;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 52, logical_and_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "logical_and_expression"


  // $ANTLR start "inclusive_or_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   392:1: inclusive_or_expression : exclusive_or_expression ( '|' exclusive_or_expression )* ; */
  void inclusive_or_expression() {
    int inclusive_or_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 53)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       393:2: ( exclusive_or_expression ( '|' exclusive_or_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       393:4: exclusive_or_expression ( '|' exclusive_or_expression )**/
      {
      	this.pushFollow(FOLLOW_exclusive_or_expression_in_inclusive_or_expression1634);
      	this.exclusive_or_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 393:28: ( '|' exclusive_or_expression )**/
      	loop56:
      	do {
      	  int alt56 = 2;
      	  int LA56_0 = this.input.LA(1);

      	  if((LA56_0 == 96/*96*/)) {
      	    alt56 = 1;
      	  }


      	  switch (alt56) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   393:29: '|' exclusive_or_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    96,FOLLOW_96_in_inclusive_or_expression1637); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_exclusive_or_expression_in_inclusive_or_expression1639);
      			  	this.exclusive_or_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop56;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 53, inclusive_or_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "inclusive_or_expression"


  // $ANTLR start "exclusive_or_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   396:1: exclusive_or_expression : and_expression ( '^' and_expression )* ;*/
  void exclusive_or_expression() {
    int exclusive_or_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 54)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       397:2: ( and_expression ( '^' and_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       397:4: and_expression ( '^' and_expression )**/
      {
      	this.pushFollow(FOLLOW_and_expression_in_exclusive_or_expression1652);
      	this.and_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 397:19: ( '^' and_expression )**/
      	loop57:
      	do {
      	  int alt57 = 2;
      	  int LA57_0 = this.input.LA(1);

      	  if((LA57_0 == 61/*61*/)) {
      	    alt57 = 1;
      	  }


      	  switch (alt57) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   397:20: '^' and_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    61,FOLLOW_61_in_exclusive_or_expression1655); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_and_expression_in_exclusive_or_expression1657);
      			  	this.and_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop57;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 54, exclusive_or_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "exclusive_or_expression"


  // $ANTLR start "and_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   400:1: and_expression : equality_expression ( '&' equality_expression )* ;*/
  void and_expression() {
    int and_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 55)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       401:2: ( equality_expression ( '&' equality_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       401:4: equality_expression ( '&' equality_expression )**/
      {
      	this.pushFollow(FOLLOW_equality_expression_in_and_expression1670);
      	this.equality_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 401:24: ( '&' equality_expression )**/
      	loop58:
      	do {
      	  int alt58 = 2;
      	  int LA58_0 = this.input.LA(1);

      	  if((LA58_0 == 28/*28*/)) {
      	    alt58 = 1;
      	  }


      	  switch (alt58) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   401:25: '&' equality_expression*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    28,FOLLOW_28_in_and_expression1673); 
      			  	if(this.state.failed) 
      			  	  return ;

      			  	this.pushFollow(FOLLOW_equality_expression_in_and_expression1675);
      			  	this.equality_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop58;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 55, and_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "and_expression"


  // $ANTLR start "equality_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   403:1: equality_expression : relational_expression ( ( '==' | 
   '!=' ) relational_expression )* ;*/
  void equality_expression() {
    int equality_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 56)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       404:2: ( relational_expression ( ( '==' | '!=' ) relational_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       404:4: relational_expression ( ( '==' | '!=' ) relational_expression )**/
      {
      	this.pushFollow(FOLLOW_relational_expression_in_equality_expression1687);
      	this.relational_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 404:26: ( ( '==' | '!=' ) relational_expression )**/
      	loop59:
      	do {
      	  int alt59 = 2;
      	  int LA59_0 = this.input.LA(1);

      	  if((LA59_0 == 24/*24*/
      	    || LA59_0 == 53/*53*/)) {
      	    alt59 = 1;
      	  }


      	  switch (alt59) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   404:27: ( '==' | '!=' ) relational_expression*/
      			  {
      			  	if(this.input.LA(1) == 24
      			  	  || this.input.LA(1) == 53) {
      			  	  this.input.consume();
      			  	  this.state.errorRecovery = false;
      			  	  this.state.failed = false;
      			  	}
      			  	else {
      			  	  if(this.state.backtracking > 0) {
      			  	    this.state.failed = true; 
      			  	    return ;
      			  	  }
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  throw mse;
      			  	}


      			  	this.pushFollow(FOLLOW_relational_expression_in_equality_expression1696);
      			  	this.relational_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop59;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 56, equality_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "equality_expression"


  // $ANTLR start "relational_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   407:1: relational_expression : shift_expression ( ( '<' | '>' | 
   '<=' | '>=' ) shift_expression )* ;*/
  void relational_expression() {
    int relational_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 57)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       408:2: ( shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       408:4: shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )**/
      {
      	this.pushFollow(FOLLOW_shift_expression_in_relational_expression1709);
      	this.shift_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 408:21: ( ( '<' | '>' | '<=' | '>=' ) shift_expression )**/
      	loop60:
      	do {
      	  int alt60 = 2;
      	  int LA60_0 = this.input.LA(1);

      	  if((LA60_0 == 48/*48*/
      	    || LA60_0 == 51/*51*/
      	    || (LA60_0 >= 54 && LA60_0 <= 55))) {
      	    alt60 = 1;
      	  }


      	  switch (alt60) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   408:22: ( '<' | '>' | '<=' | '>=' ) shift_expression*/
      			  {
      			  	if(this.input.LA(1) == 48
      			  	  || this.input.LA(1) == 51
      			  	  || (this.input.LA(1) >= 54 && this.input.LA(1) <= 55)) {
      			  	  this.input.consume();
      			  	  this.state.errorRecovery = false;
      			  	  this.state.failed = false;
      			  	}
      			  	else {
      			  	  if(this.state.backtracking > 0) {
      			  	    this.state.failed = true; 
      			  	    return ;
      			  	  }
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  throw mse;
      			  	}


      			  	this.pushFollow(FOLLOW_shift_expression_in_relational_expression1722);
      			  	this.shift_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop60;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 57, relational_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "relational_expression"


  // $ANTLR start "shift_expression"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   411:1: shift_expression : additive_expression ( ( '<<' | '>>' ) additive_expression )* ; */
  void shift_expression() {
    int shift_expression_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 58)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       412:2: ( additive_expression ( ( '<<' | '>>' ) additive_expression )* )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       412:4: additive_expression ( ( '<<' | '>>' ) additive_expression )**/
      {
      	this.pushFollow(FOLLOW_additive_expression_in_shift_expression1735);
      	this.additive_expression();

      	this.state.fsp--;
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 412:24: ( ( '<<' | '>>' ) additive_expression )**/
      	loop61:
      	do {
      	  int alt61 = 2;
      	  int LA61_0 = this.input.LA(1);

      	  if((LA61_0 == 49/*49*/
      	    || LA61_0 == 56/*56*/)) {
      	    alt61 = 1;
      	  }


      	  switch (alt61) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   412:25: ( '<<' | '>>' ) additive_expression*/
      			  {
      			  	if(this.input.LA(1) == 49
      			  	  || this.input.LA(1) == 56) {
      			  	  this.input.consume();
      			  	  this.state.errorRecovery = false;
      			  	  this.state.failed = false;
      			  	}
      			  	else {
      			  	  if(this.state.backtracking > 0) {
      			  	    this.state.failed = true; 
      			  	    return ;
      			  	  }
      			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      			  	  throw mse;
      			  	}


      			  	this.pushFollow(FOLLOW_additive_expression_in_shift_expression1744);
      			  	this.additive_expression();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop61;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 58, shift_expression_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "shift_expression"


  // $ANTLR start "statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   417:1: statement : ( labeled_statement | compound_statement | 
   expression_statement | selection_statement | iteration_statement | 
   jump_statement );*/
  void statement() {
    int statement_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 59)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       418:2: ( labeled_statement | compound_statement | expression_statement | 
       selection_statement | iteration_statement | jump_statement ) */
      int alt62 = 6;
      switch(this.input.LA(1)) {
      case IDENTIFIER:
        {
        int LA62_1 = this.input.LA(2);

        if((LA62_1 == 46/*46*/)) {
          alt62 = 1;
        }
        else if(((LA62_1 >= 24 && LA62_1 <= 30)
          || (LA62_1 >= 32 && LA62_1 <= 42)
          || (LA62_1 >= 44 && LA62_1 <= 45)
          || (LA62_1 >= 47 && LA62_1 <= 59)
          || (LA62_1 >= 61 && LA62_1 <= 62)
          || (LA62_1 >= 96 && LA62_1 <= 98))) {
          alt62 = 3;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 62, 1, this.input);

          throw nvae;

        }
        }
        break;
      case 65:
      case 69:
        {
        alt62 = 1;
        }
        break;
      case 95:
        {
        alt62 = 2;
        }
        break;
      case CHARACTER_LITERAL:
      case DECIMAL_LITERAL:
      case FLOATING_POINT_LITERAL:
      case HEX_LITERAL:
      case OCTAL_LITERAL:
      case STRING_LITERAL:
      case 23:
      case 28:
      case 30:
      case 32:
      case 34:
      case 35:
      case 38:
      case 39:
      case 47:
      case 85:
      case 100:
        {
        alt62 = 3;
        }
        break;
      case 78:
      case 88:
        {
        alt62 = 4;
        }
        break;
      case 70:
      case 76:
      case 94:
        {
        alt62 = 5;
        }
        break;
      case 64:
      case 68:
      case 77:
      case 82:
        {
        alt62 = 6;
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 62, 0, this.input);

        throw nvae;

      }

      switch (alt62) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           418:4: labeled_statement*/
          {
          	this.pushFollow(FOLLOW_labeled_statement_in_statement1759);
          	this.labeled_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           419:4: compound_statement*/
          {
          	this.pushFollow(FOLLOW_compound_statement_in_statement1764);
          	this.compound_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           420:4: expression_statement*/
          {
          	this.pushFollow(FOLLOW_expression_statement_in_statement1769);
          	this.expression_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           421:4: selection_statement*/
          {
          	this.pushFollow(FOLLOW_selection_statement_in_statement1774);
          	this.selection_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           422:4: iteration_statement*/
          {
          	this.pushFollow(FOLLOW_iteration_statement_in_statement1779);
          	this.iteration_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 6 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           423:4: jump_statement*/
          {
          	this.pushFollow(FOLLOW_jump_statement_in_statement1784);
          	this.jump_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 59, statement_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "statement"


  // $ANTLR start "labeled_statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   426:1: labeled_statement : ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 
   'default' ':' statement );*/
  void labeled_statement() {
    int labeled_statement_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 60)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       427:2: ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 
       'default' ':' statement )*/
      int alt63 = 3;
      switch(this.input.LA(1)) {
      case IDENTIFIER:
        {
        alt63 = 1;
        }
        break;
      case 65:
        {
        alt63 = 2;
        }
        break;
      case 69:
        {
        alt63 = 3;
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 63, 0, this.input);

        throw nvae;

      }

      switch (alt63) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           427:4: IDENTIFIER ':' statement*/
          {
          	this.matchSymbol(this.input,
          	    IDENTIFIER,FOLLOW_IDENTIFIER_in_labeled_statement1795); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    46,FOLLOW_46_in_labeled_statement1797); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_labeled_statement1799);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           428:4: 'case' constant_expression ':' statement*/
          {
          	this.matchSymbol(this.input,
          	    65,FOLLOW_65_in_labeled_statement1804); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_constant_expression_in_labeled_statement1806);
          	this.constant_expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    46,FOLLOW_46_in_labeled_statement1808); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_labeled_statement1810);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           429:4: 'default' ':' statement*/
          {
          	this.matchSymbol(this.input,
          	    69,FOLLOW_69_in_labeled_statement1815); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    46,FOLLOW_46_in_labeled_statement1817); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_labeled_statement1819);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 60, labeled_statement_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "labeled_statement"


  // $ANTLR start "compound_statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   432:1: compound_statement : '{' ( declaration )* ( statement_list )? '}' ;*/
  void compound_statement() {
    this.Symbols_stack.add(new _Symbols_scope());

    int compound_statement_StartIndex = this.input.index;


      this.Symbols_stack.last().types = new HashSet();

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 61)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       437:2: ( '{' ( declaration )* ( statement_list )? '}' )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       437:4: '{' ( declaration )* ( statement_list )? '}'*/
      {
      	this.matchSymbol(this.input,
      	    95,FOLLOW_95_in_compound_statement1841); 
      	if(this.state.failed) 
      	  return ;

      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 437:8: ( declaration )**/
      	loop64:
      	do {
      	  int alt64 = 2;
      	  alt64 = this.dfas["dfa64"].predict(this.input);
      	  switch (alt64) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   437:8: declaration*/
      			  {
      			  	this.pushFollow(FOLLOW_declaration_in_compound_statement1843);
      			  	this.declaration();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    break loop64;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 437:21: ( statement_list )?*/
      	int alt65 = 2;
      	int LA65_0 = this.input.LA(1);

      	if((LA65_0 == 4/*CHARACTER_LITERAL*/
      	  || LA65_0 == 6/*DECIMAL_LITERAL*/
      	  || LA65_0 == 9/*FLOATING_POINT_LITERAL*/
      	  || LA65_0 == 11/*HEX_LITERAL*/
      	  || LA65_0 == 13/*IDENTIFIER*/
      	  || LA65_0 == 18/*OCTAL_LITERAL*/
      	  || LA65_0 == 20/*STRING_LITERAL*/
      	  || LA65_0 == 23/*23*/
      	  || LA65_0 == 28/*28*/
      	  || LA65_0 == 30/*30*/
      	  || LA65_0 == 32/*32*/
      	  || (LA65_0 >= 34 && LA65_0 <= 35)
      	  || (LA65_0 >= 38 && LA65_0 <= 39)
      	  || LA65_0 == 47/*47*/
      	  || (LA65_0 >= 64 && LA65_0 <= 65)
      	  || (LA65_0 >= 68 && LA65_0 <= 70)
      	  || (LA65_0 >= 76 && LA65_0 <= 78)
      	  || LA65_0 == 82/*82*/
      	  || LA65_0 == 85/*85*/
      	  || LA65_0 == 88/*88*/
      	  || (LA65_0 >= 94 && LA65_0 <= 95)
      	  || LA65_0 == 100/*100*/)) {
      	  alt65 = 1;
      	}
      	switch (alt65) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
      	     437:21: statement_list*/
      	    {
      	    	this.pushFollow(FOLLOW_statement_list_in_compound_statement1846);
      	    	this.statement_list();

      	    	this.state.fsp--;
      	    	if(this.state.failed) 
      	    	  return ;

      	    }
      	    break;

      	}


      	this.matchSymbol(this.input,
      	    99,FOLLOW_99_in_compound_statement1849); 
      	if(this.state.failed) 
      	  return ;

      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 61, compound_statement_StartIndex); 
      }

      this.Symbols_stack.removeLast();

  	}
  	return ;
  }
  // $ANTLR end "compound_statement"


  // $ANTLR start "statement_list"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   440:1: statement_list : ( statement )+ ;*/
  void statement_list() {
    int statement_list_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 62)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       441:2: ( ( statement )+ )*/
      /* ../runtime/dart/tests/grammars/t033backtracking.g:
       441:4: ( statement )+*/
      {
      	/* ../runtime/dart/tests/grammars/t033backtracking.g:
      	 441:4: ( statement )+*/
      	int cnt66 = 0;
      	loop66:
      	do {
      	  int alt66 = 2;
      	  int LA66_0 = this.input.LA(1);

      	  if((LA66_0 == 4/*CHARACTER_LITERAL*/
      	    || LA66_0 == 6/*DECIMAL_LITERAL*/
      	    || LA66_0 == 9/*FLOATING_POINT_LITERAL*/
      	    || LA66_0 == 11/*HEX_LITERAL*/
      	    || LA66_0 == 13/*IDENTIFIER*/
      	    || LA66_0 == 18/*OCTAL_LITERAL*/
      	    || LA66_0 == 20/*STRING_LITERAL*/
      	    || LA66_0 == 23/*23*/
      	    || LA66_0 == 28/*28*/
      	    || LA66_0 == 30/*30*/
      	    || LA66_0 == 32/*32*/
      	    || (LA66_0 >= 34 && LA66_0 <= 35)
      	    || (LA66_0 >= 38 && LA66_0 <= 39)
      	    || LA66_0 == 47/*47*/
      	    || (LA66_0 >= 64 && LA66_0 <= 65)
      	    || (LA66_0 >= 68 && LA66_0 <= 70)
      	    || (LA66_0 >= 76 && LA66_0 <= 78)
      	    || LA66_0 == 82/*82*/
      	    || LA66_0 == 85/*85*/
      	    || LA66_0 == 88/*88*/
      	    || (LA66_0 >= 94 && LA66_0 <= 95)
      	    || LA66_0 == 100/*100*/)) {
      	    alt66 = 1;
      	  }


      	  switch (alt66) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
      			   441:4: statement*/
      			  {
      			  	this.pushFollow(FOLLOW_statement_in_statement_list1860);
      			  	this.statement();

      			  	this.state.fsp--;
      			  	if(this.state.failed) 
      			  	  return ;

      			  }
      			  break;

      			default :
      		    if(cnt66 >= 1) break loop66;
      		      if(this.state.backtracking > 0) {
      		        this.state.failed = true; 
      		        return ;
      		      }
      	        EarlyExitException eee = new EarlyExitException(66, this.input);
      	        throw eee;
      	  }
      	  cnt66++;
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 62, statement_list_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "statement_list"


  // $ANTLR start "expression_statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   444:1: expression_statement : ( ';' | expression ';' );*/
  void expression_statement() {
    int expression_statement_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 63)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       445:2: ( ';' | expression ';' )*/
      int alt67 = 2;
      int LA67_0 = this.input.LA(1);

      if((LA67_0 == 47/*47*/)) {
        alt67 = 1;
      }
      else if((LA67_0 == 4/*CHARACTER_LITERAL*/
        || LA67_0 == 6/*DECIMAL_LITERAL*/
        || LA67_0 == 9/*FLOATING_POINT_LITERAL*/
        || LA67_0 == 11/*HEX_LITERAL*/
        || LA67_0 == 13/*IDENTIFIER*/
        || LA67_0 == 18/*OCTAL_LITERAL*/
        || LA67_0 == 20/*STRING_LITERAL*/
        || LA67_0 == 23/*23*/
        || LA67_0 == 28/*28*/
        || LA67_0 == 30/*30*/
        || LA67_0 == 32/*32*/
        || (LA67_0 >= 34 && LA67_0 <= 35)
        || (LA67_0 >= 38 && LA67_0 <= 39)
        || LA67_0 == 85/*85*/
        || LA67_0 == 100/*100*/)) {
        alt67 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 67, 0, this.input);

        throw nvae;

      }
      switch (alt67) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           445:4: ';'*/
          {
          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_expression_statement1872); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           446:4: expression ';'*/
          {
          	this.pushFollow(FOLLOW_expression_in_expression_statement1877);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_expression_statement1879); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 63, expression_statement_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "expression_statement"


  // $ANTLR start "selection_statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   449:1: selection_statement : ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 
   'switch' '(' expression ')' statement );*/
  void selection_statement() {
    int selection_statement_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 64)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       450:2: ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 
       'switch' '(' expression ')' statement )*/
      int alt69 = 2;
      int LA69_0 = this.input.LA(1);

      if((LA69_0 == 78/*78*/)) {
        alt69 = 1;
      }
      else if((LA69_0 == 88/*88*/)) {
        alt69 = 2;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 69, 0, this.input);

        throw nvae;

      }
      switch (alt69) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           450:4: 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )?*/
          {
          	this.matchSymbol(this.input,
          	    78,FOLLOW_78_in_selection_statement1890); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_selection_statement1892); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_in_selection_statement1894);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_selection_statement1896); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_selection_statement1898);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 450:38: ( options {k=1; backtrack=false; } : 'else' statement )?*/
          	int alt68 = 2;
          	int LA68_0 = this.input.LA(1);

          	if((LA68_0 == 72/*72*/)) {
          	  int LA68_1 = this.input.LA(2);

          	  if((true)) {
          	    alt68 = 1;
          	  }
          	}
          	switch (alt68) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     450:71: 'else' statement*/
          	    {
          	    	this.matchSymbol(this.input,
          	    	    72,FOLLOW_72_in_selection_statement1913); 
          	    	if(this.state.failed) 
          	    	  return ;

          	    	this.pushFollow(FOLLOW_statement_in_selection_statement1915);
          	    	this.statement();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           451:4: 'switch' '(' expression ')' statement*/
          {
          	this.matchSymbol(this.input,
          	    88,FOLLOW_88_in_selection_statement1922); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_selection_statement1924); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_in_selection_statement1926);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_selection_statement1928); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_selection_statement1930);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 64, selection_statement_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "selection_statement"


  // $ANTLR start "iteration_statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   454:1: iteration_statement : ( 'while' '(' expression ')' statement | 
   'do' statement 'while' '(' expression ')' ';' | 'for' '(' expression_statement expression_statement ( expression )? ')' statement ); */
  void iteration_statement() {
    int iteration_statement_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 65)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       455:2: ( 'while' '(' expression ')' statement | 'do' statement 'while' '(' expression ')' ';' | 
       'for' '(' expression_statement expression_statement ( expression )? ')' statement ) */
      int alt71 = 3;
      switch(this.input.LA(1)) {
      case 94:
        {
        alt71 = 1;
        }
        break;
      case 70:
        {
        alt71 = 2;
        }
        break;
      case 76:
        {
        alt71 = 3;
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 71, 0, this.input);

        throw nvae;

      }

      switch (alt71) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           455:4: 'while' '(' expression ')' statement*/
          {
          	this.matchSymbol(this.input,
          	    94,FOLLOW_94_in_iteration_statement1941); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_iteration_statement1943); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_in_iteration_statement1945);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_iteration_statement1947); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_iteration_statement1949);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           456:4: 'do' statement 'while' '(' expression ')' ';'*/
          {
          	this.matchSymbol(this.input,
          	    70,FOLLOW_70_in_iteration_statement1954); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_iteration_statement1956);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    94,FOLLOW_94_in_iteration_statement1958); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_iteration_statement1960); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_in_iteration_statement1962);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_iteration_statement1964); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_iteration_statement1966); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           457:4: 'for' '(' expression_statement expression_statement ( expression )? ')' statement*/
          {
          	this.matchSymbol(this.input,
          	    76,FOLLOW_76_in_iteration_statement1971); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    30,FOLLOW_30_in_iteration_statement1973); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_statement_in_iteration_statement1975);
          	this.expression_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_statement_in_iteration_statement1977);
          	this.expression_statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	/* ../runtime/dart/tests/grammars/t033backtracking.g:
          	 457:56: ( expression )?*/
          	int alt70 = 2;
          	int LA70_0 = this.input.LA(1);

          	if((LA70_0 == 4/*CHARACTER_LITERAL*/
          	  || LA70_0 == 6/*DECIMAL_LITERAL*/
          	  || LA70_0 == 9/*FLOATING_POINT_LITERAL*/
          	  || LA70_0 == 11/*HEX_LITERAL*/
          	  || LA70_0 == 13/*IDENTIFIER*/
          	  || LA70_0 == 18/*OCTAL_LITERAL*/
          	  || LA70_0 == 20/*STRING_LITERAL*/
          	  || LA70_0 == 23/*23*/
          	  || LA70_0 == 28/*28*/
          	  || LA70_0 == 30/*30*/
          	  || LA70_0 == 32/*32*/
          	  || (LA70_0 >= 34 && LA70_0 <= 35)
          	  || (LA70_0 >= 38 && LA70_0 <= 39)
          	  || LA70_0 == 85/*85*/
          	  || LA70_0 == 100/*100*/)) {
          	  alt70 = 1;
          	}
          	switch (alt70) {
          	  case 1 :
          	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
          	     457:56: expression*/
          	    {
          	    	this.pushFollow(FOLLOW_expression_in_iteration_statement1979);
          	    	this.expression();

          	    	this.state.fsp--;
          	    	if(this.state.failed) 
          	    	  return ;

          	    }
          	    break;

          	}


          	this.matchSymbol(this.input,
          	    31,FOLLOW_31_in_iteration_statement1982); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_statement_in_iteration_statement1984);
          	this.statement();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 65, iteration_statement_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "iteration_statement"


  // $ANTLR start "jump_statement"
  /* ../runtime/dart/tests/grammars/t033backtracking.g:
   460:1: jump_statement : ( 'goto' IDENTIFIER ';' | 'continue' ';' | 
   'break' ';' | 'return' ';' | 'return' expression ';' );*/
  void jump_statement() {
    int jump_statement_StartIndex = this.input.index;

    try {
      if(this.state.backtracking > 0 && 
               this.alreadyParsedRule(this.input, 66)) { 
        return ; 
      }

      /* ../runtime/dart/tests/grammars/t033backtracking.g: 
       461:2: ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 
       'return' ';' | 'return' expression ';' )*/
      int alt72 = 5;
      switch(this.input.LA(1)) {
      case 77:
        {
        alt72 = 1;
        }
        break;
      case 68:
        {
        alt72 = 2;
        }
        break;
      case 64:
        {
        alt72 = 3;
        }
        break;
      case 82:
        {
        int LA72_4 = this.input.LA(2);

        if((LA72_4 == 47/*47*/)) {
          alt72 = 4;
        }
        else if((LA72_4 == 4/*CHARACTER_LITERAL*/
          || LA72_4 == 6/*DECIMAL_LITERAL*/
          || LA72_4 == 9/*FLOATING_POINT_LITERAL*/
          || LA72_4 == 11/*HEX_LITERAL*/
          || LA72_4 == 13/*IDENTIFIER*/
          || LA72_4 == 18/*OCTAL_LITERAL*/
          || LA72_4 == 20/*STRING_LITERAL*/
          || LA72_4 == 23/*23*/
          || LA72_4 == 28/*28*/
          || LA72_4 == 30/*30*/
          || LA72_4 == 32/*32*/
          || (LA72_4 >= 34 && LA72_4 <= 35)
          || (LA72_4 >= 38 && LA72_4 <= 39)
          || LA72_4 == 85/*85*/
          || LA72_4 == 100/*100*/)) {
          alt72 = 5;
        }
        else {
          if(this.state.backtracking > 0) {
            this.state.failed = true; 
            return ;
          }
          NoViableAltException nvae =
              new NoViableAltException("", 72, 4, this.input);

          throw nvae;

        }
        }
        break;
      default:
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 72, 0, this.input);

        throw nvae;

      }

      switch (alt72) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           461:4: 'goto' IDENTIFIER ';'*/
          {
          	this.matchSymbol(this.input,
          	    77,FOLLOW_77_in_jump_statement1995); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    IDENTIFIER,FOLLOW_IDENTIFIER_in_jump_statement1997); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_jump_statement1999); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           462:4: 'continue' ';'*/
          {
          	this.matchSymbol(this.input,
          	    68,FOLLOW_68_in_jump_statement2004); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_jump_statement2006); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           463:4: 'break' ';'*/
          {
          	this.matchSymbol(this.input,
          	    64,FOLLOW_64_in_jump_statement2011); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_jump_statement2013); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           464:4: 'return' ';'*/
          {
          	this.matchSymbol(this.input,
          	    82,FOLLOW_82_in_jump_statement2018); 
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_jump_statement2020); 
          	if(this.state.failed) 
          	  return ;

          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t033backtracking.g:
           465:4: 'return' expression ';'*/
          {
          	this.matchSymbol(this.input,
          	    82,FOLLOW_82_in_jump_statement2025); 
          	if(this.state.failed) 
          	  return ;

          	this.pushFollow(FOLLOW_expression_in_jump_statement2027);
          	this.expression();

          	this.state.fsp--;
          	if(this.state.failed) 
          	  return ;

          	this.matchSymbol(this.input,
          	    47,FOLLOW_47_in_jump_statement2029); 
          	if(this.state.failed) 
          	  return ;

          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      if(this.state.backtracking > 0) { 
        this.memoize(this.input, 66, jump_statement_StartIndex); 
      }

  	}
  	return ;
  }
  // $ANTLR end "jump_statement"

  // $ANTLR start synpred2_t033backtracking
  void synpred2_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     81:6: ( declaration_specifiers )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     81:6: declaration_specifiers*/
    {
    	this.pushFollow(FOLLOW_declaration_specifiers_in_synpred2_t033backtracking100);
    	this.declaration_specifiers();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred2_t033backtracking

  // $ANTLR start synpred4_t033backtracking
  void synpred4_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     81:4: ( ( declaration_specifiers )? declarator ( declaration )* '{' )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     81:6: ( declaration_specifiers )? declarator ( declaration )* '{'*/
    {
    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
    	 81:6: ( declaration_specifiers )?*/
    	int alt73 = 2;
    	int LA73_0 = this.input.LA(1);

    	if((LA73_0 == 63/*63*/
    	  || (LA73_0 >= 66 && LA73_0 <= 67)
    	  || LA73_0 == 71/*71*/
    	  || (LA73_0 >= 73 && LA73_0 <= 75)
    	  || (LA73_0 >= 79 && LA73_0 <= 81)
    	  || (LA73_0 >= 83 && LA73_0 <= 84)
    	  || (LA73_0 >= 86 && LA73_0 <= 87)
    	  || (LA73_0 >= 90 && LA73_0 <= 93))) {
    	  alt73 = 1;
    	}
    	else if((LA73_0 == 13/*IDENTIFIER*/)) {
    	  switch(this.input.LA(2)) {
    	    case 32:
    	      {
    	      alt73 = 1;
    	      }
    	      break;
    	    case IDENTIFIER:
    	      {
    	      int LA73_18 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 30:
    	      {
    	      int LA73_19 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 63:
    	    case 74:
    	    case 81:
    	    case 86:
    	      {
    	      int LA73_20 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 92:
    	      {
    	      int LA73_21 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 66:
    	      {
    	      int LA73_22 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 83:
    	      {
    	      int LA73_23 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 79:
    	      {
    	      int LA73_24 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 80:
    	      {
    	      int LA73_25 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 75:
    	      {
    	      int LA73_26 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 71:
    	      {
    	      int LA73_27 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 84:
    	      {
    	      int LA73_28 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 91:
    	      {
    	      int LA73_29 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 87:
    	    case 90:
    	      {
    	      int LA73_30 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 73:
    	      {
    	      int LA73_31 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	    case 67:
    	    case 93:
    	      {
    	      int LA73_32 = this.input.LA(3);

    	      if(((((isTypeName(input.LT(1).text))&&(isTypeName(input.LT(1).text)))&&synpred2_t033backtracking()))) {
    	        alt73 = 1;
    	      }
    	      }
    	      break;
    	  }

    	}
    	switch (alt73) {
    	  case 1 :
    	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
    	     81:6: declaration_specifiers*/
    	    {
    	    	this.pushFollow(FOLLOW_declaration_specifiers_in_synpred4_t033backtracking100);
    	    	this.declaration_specifiers();

    	    	this.state.fsp--;
    	    	if(this.state.failed) 
    	    	  return ;

    	    }
    	    break;

    	}


    	this.pushFollow(FOLLOW_declarator_in_synpred4_t033backtracking103);
    	this.declarator();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
    	 81:41: ( declaration )**/
    	loop74:
    	do {
    	  int alt74 = 2;
    	  int LA74_0 = this.input.LA(1);

    	  if((LA74_0 == 13/*IDENTIFIER*/
    	    || LA74_0 == 63/*63*/
    	    || (LA74_0 >= 66 && LA74_0 <= 67)
    	    || LA74_0 == 71/*71*/
    	    || (LA74_0 >= 73 && LA74_0 <= 75)
    	    || (LA74_0 >= 79 && LA74_0 <= 81)
    	    || (LA74_0 >= 83 && LA74_0 <= 84)
    	    || (LA74_0 >= 86 && LA74_0 <= 87)
    	    || (LA74_0 >= 89 && LA74_0 <= 93))) {
    	    alt74 = 1;
    	  }


    	  switch (alt74) {
    			case 1 :
    			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
    			   81:41: declaration*/
    			  {
    			  	this.pushFollow(FOLLOW_declaration_in_synpred4_t033backtracking105);
    			  	this.declaration();

    			  	this.state.fsp--;
    			  	if(this.state.failed) 
    			  	  return ;

    			  }
    			  break;

    			default :
    		    break loop74;
    	  }
    	} while(true);


    	this.matchSymbol(this.input,
    	    95,FOLLOW_95_in_synpred4_t033backtracking108); 
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred4_t033backtracking

  // $ANTLR start synpred5_t033backtracking
  void synpred5_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     90:4: ( declaration_specifiers )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     90:4: declaration_specifiers*/
    {
    	this.pushFollow(FOLLOW_declaration_specifiers_in_synpred5_t033backtracking140);
    	this.declaration_specifiers();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred5_t033backtracking

  // $ANTLR start synpred8_t033backtracking
  void synpred8_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     103:14: ( declaration_specifiers )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     103:14: declaration_specifiers*/
    {
    	this.pushFollow(FOLLOW_declaration_specifiers_in_synpred8_t033backtracking189);
    	this.declaration_specifiers();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred8_t033backtracking

  // $ANTLR start synpred12_t033backtracking
  void synpred12_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     110:7: ( type_specifier )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     110:7: type_specifier*/
    {
    	this.pushFollow(FOLLOW_type_specifier_in_synpred12_t033backtracking235);
    	this.type_specifier();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred12_t033backtracking

  // $ANTLR start synpred35_t033backtracking
  void synpred35_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     174:23: ( type_specifier )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     174:23: type_specifier*/
    {
    	this.pushFollow(FOLLOW_type_specifier_in_synpred35_t033backtracking515);
    	this.type_specifier();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred35_t033backtracking

  // $ANTLR start synpred45_t033backtracking
  void synpred45_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     207:4: ( ( pointer )? direct_declarator )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     207:4: ( pointer )? direct_declarator*/
    {
    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
    	 207:4: ( pointer )?*/
    	int alt79 = 2;
    	int LA79_0 = this.input.LA(1);

    	if((LA79_0 == 32/*32*/)) {
    	  alt79 = 1;
    	}
    	switch (alt79) {
    	  case 1 :
    	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
    	     207:4: pointer*/
    	    {
    	    	this.pushFollow(FOLLOW_pointer_in_synpred45_t033backtracking668);
    	    	this.pointer();

    	    	this.state.fsp--;
    	    	if(this.state.failed) 
    	    	  return ;

    	    }
    	    break;

    	}


    	this.pushFollow(FOLLOW_direct_declarator_in_synpred45_t033backtracking671);
    	this.direct_declarator();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred45_t033backtracking

  // $ANTLR start synpred47_t033backtracking
  void synpred47_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     221:9: ( declarator_suffix )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     221:9: declarator_suffix*/
    {
    	this.pushFollow(FOLLOW_declarator_suffix_in_synpred47_t033backtracking720);
    	this.declarator_suffix();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred47_t033backtracking

  // $ANTLR start synpred50_t033backtracking
  void synpred50_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     227:9: ( '(' parameter_type_list ')' )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     227:9: '(' parameter_type_list ')'*/
    {
    	this.matchSymbol(this.input,
    	    30,FOLLOW_30_in_synpred50_t033backtracking760); 
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_parameter_type_list_in_synpred50_t033backtracking762);
    	this.parameter_type_list();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    	this.matchSymbol(this.input,
    	    31,FOLLOW_31_in_synpred50_t033backtracking764); 
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred50_t033backtracking

  // $ANTLR start synpred51_t033backtracking
  void synpred51_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     228:9: ( '(' identifier_list ')' )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     228:9: '(' identifier_list ')'*/
    {
    	this.matchSymbol(this.input,
    	    30,FOLLOW_30_in_synpred51_t033backtracking774); 
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_identifier_list_in_synpred51_t033backtracking776);
    	this.identifier_list();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    	this.matchSymbol(this.input,
    	    31,FOLLOW_31_in_synpred51_t033backtracking778); 
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred51_t033backtracking

  // $ANTLR start synpred52_t033backtracking
  void synpred52_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     233:8: ( type_qualifier )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     233:8: type_qualifier*/
    {
    	this.pushFollow(FOLLOW_type_qualifier_in_synpred52_t033backtracking803);
    	this.type_qualifier();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred52_t033backtracking

  // $ANTLR start synpred53_t033backtracking
  void synpred53_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     233:24: ( pointer )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     233:24: pointer*/
    {
    	this.pushFollow(FOLLOW_pointer_in_synpred53_t033backtracking806);
    	this.pointer();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred53_t033backtracking

  // $ANTLR start synpred54_t033backtracking
  void synpred54_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     233:4: ( '*' ( type_qualifier )+ ( pointer )? )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     233:4: '*' ( type_qualifier )+ ( pointer )?*/
    {
    	this.matchSymbol(this.input,
    	    32,FOLLOW_32_in_synpred54_t033backtracking801); 
    	if(this.state.failed) 
    	  return ;

    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
    	 233:8: ( type_qualifier )+*/
    	int cnt80 = 0;
    	loop80:
    	do {
    	  int alt80 = 2;
    	  int LA80_0 = this.input.LA(1);

    	  if((LA80_0 == 67/*67*/
    	    || LA80_0 == 93/*93*/)) {
    	    alt80 = 1;
    	  }


    	  switch (alt80) {
    			case 1 :
    			  /* ../runtime/dart/tests/grammars/t033backtracking.g:
    			   233:8: type_qualifier*/
    			  {
    			  	this.pushFollow(FOLLOW_type_qualifier_in_synpred54_t033backtracking803);
    			  	this.type_qualifier();

    			  	this.state.fsp--;
    			  	if(this.state.failed) 
    			  	  return ;

    			  }
    			  break;

    			default :
    		    if(cnt80 >= 1) break loop80;
    		      if(this.state.backtracking > 0) {
    		        this.state.failed = true; 
    		        return ;
    		      }
    	        EarlyExitException eee = new EarlyExitException(80, this.input);
    	        throw eee;
    	  }
    	  cnt80++;
    	} while(true);


    	/* ../runtime/dart/tests/grammars/t033backtracking.g:
    	 233:24: ( pointer )?*/
    	int alt81 = 2;
    	int LA81_0 = this.input.LA(1);

    	if((LA81_0 == 32/*32*/)) {
    	  alt81 = 1;
    	}
    	switch (alt81) {
    	  case 1 :
    	    /* ../runtime/dart/tests/grammars/t033backtracking.g:
    	     233:24: pointer*/
    	    {
    	    	this.pushFollow(FOLLOW_pointer_in_synpred54_t033backtracking806);
    	    	this.pointer();

    	    	this.state.fsp--;
    	    	if(this.state.failed) 
    	    	  return ;

    	    }
    	    break;

    	}


    }

  }
  // $ANTLR end synpred54_t033backtracking

  // $ANTLR start synpred55_t033backtracking
  void synpred55_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     234:4: ( '*' pointer )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     234:4: '*' pointer*/
    {
    	this.matchSymbol(this.input,
    	    32,FOLLOW_32_in_synpred55_t033backtracking812); 
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_pointer_in_synpred55_t033backtracking814);
    	this.pointer();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred55_t033backtracking

  // $ANTLR start synpred58_t033backtracking
  void synpred58_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     247:28: ( declarator )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     247:28: declarator*/
    {
    	this.pushFollow(FOLLOW_declarator_in_synpred58_t033backtracking869);
    	this.declarator();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred58_t033backtracking

  // $ANTLR start synpred59_t033backtracking
  void synpred59_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     247:39: ( abstract_declarator )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     247:39: abstract_declarator*/
    {
    	this.pushFollow(FOLLOW_abstract_declarator_in_synpred59_t033backtracking871);
    	this.abstract_declarator();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred59_t033backtracking

  // $ANTLR start synpred62_t033backtracking
  void synpred62_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     259:12: ( direct_abstract_declarator )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     259:12: direct_abstract_declarator*/
    {
    	this.pushFollow(FOLLOW_direct_abstract_declarator_in_synpred62_t033backtracking918);
    	this.direct_abstract_declarator();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred62_t033backtracking

  // $ANTLR start synpred65_t033backtracking
  void synpred65_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     264:65: ( abstract_declarator_suffix )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     264:65: abstract_declarator_suffix*/
    {
    	this.pushFollow(FOLLOW_abstract_declarator_suffix_in_synpred65_t033backtracking949);
    	this.abstract_declarator_suffix();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred65_t033backtracking

  // $ANTLR start synpred78_t033backtracking
  void synpred78_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     298:4: ( '(' type_name ')' cast_expression )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     298:4: '(' type_name ')' cast_expression*/
    {
    	this.matchSymbol(this.input,
    	    30,FOLLOW_30_in_synpred78_t033backtracking1121); 
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_type_name_in_synpred78_t033backtracking1123);
    	this.type_name();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    	this.matchSymbol(this.input,
    	    31,FOLLOW_31_in_synpred78_t033backtracking1125); 
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_cast_expression_in_synpred78_t033backtracking1127);
    	this.cast_expression();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred78_t033backtracking

  // $ANTLR start synpred83_t033backtracking
  void synpred83_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     307:4: ( 'sizeof' unary_expression )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     307:4: 'sizeof' unary_expression*/
    {
    	this.matchSymbol(this.input,
    	    85,FOLLOW_85_in_synpred83_t033backtracking1169); 
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_unary_expression_in_synpred83_t033backtracking1171);
    	this.unary_expression();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred83_t033backtracking

  // $ANTLR start synpred104_t033backtracking
  void synpred104_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     358:4: ( lvalue assignment_operator assignment_expression )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     358:4: lvalue assignment_operator assignment_expression*/
    {
    	this.pushFollow(FOLLOW_lvalue_in_synpred104_t033backtracking1483);
    	this.lvalue();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_assignment_operator_in_synpred104_t033backtracking1485);
    	this.assignment_operator();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    	this.pushFollow(FOLLOW_assignment_expression_in_synpred104_t033backtracking1487);
    	this.assignment_expression();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred104_t033backtracking

  // $ANTLR start synpred136_t033backtracking
  void synpred136_t033backtracking_fragment() {
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     437:8: ( declaration )*/
    /* ../runtime/dart/tests/grammars/t033backtracking.g:
     437:8: declaration*/
    {
    	this.pushFollow(FOLLOW_declaration_in_synpred136_t033backtracking1843);
    	this.declaration();

    	this.state.fsp--;
    	if(this.state.failed) 
    	  return ;

    }

  }
  // $ANTLR end synpred136_t033backtracking


  bool synpred5_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred5_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred58_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred58_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred53_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred53_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred136_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred136_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred104_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred104_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred78_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred78_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred52_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred52_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred59_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred59_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred54_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred54_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred4_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred4_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred45_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred45_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred51_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred51_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred50_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred50_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred62_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred62_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred35_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred35_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred8_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred8_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred65_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred65_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred2_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred2_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred83_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred83_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred55_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred55_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred47_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred47_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred12_t033backtracking() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred12_t033backtracking_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


  static final String DFA52_eotS =
      "\u006f\uffff";
  static final String DFA52_eofS =
      "\u0001\uffff\u0002\u000f\u006c\uffff";
  static final String DFA52_minS =
      "\u0001\u0004\u0002\u0018\u0005\u0004\u0006\u0000\u0016\uffff\u0006"
      "\u0000\u0016\uffff\u0007\u0000\u000c\uffff\u001c\u0000";
  static final String DFA52_maxS =
      "\u0001\u0064\u0002\u0063\u0005\u0064\u0006\u0000\u0016\uffff\u0006"
      "\u0000\u0016\uffff\u0007\u0000\u000c\uffff\u001c\u0000";
  static final String DFA52_acceptS =
      "\u000e\uffff\u0001\u0001\u0001\u0002\u005f\uffff";
  static final String DFA52_specialS =
      "\u0008\uffff\u0001\u0000\u0001\u0001\u0001\u0002\u0001\u0003\u0001"
      "\u0004\u0001\u0005\u0016\uffff\u0001\u0006\u0001\u0007\u0001\u0008"
      "\u0001\u0009\u0001\u000a\u0001\u000b\u0016\uffff\u0001\u000c\u0001"
      "\u000d\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012"
      "\u000c\uffff\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001"
      "\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u001c"
      "\u0001\u001d\u0001\u001e\u0001\u001f\u0001\u0020\u0001\u0021\u0001"
      "\u0022\u0001\u0023\u0001\u0024\u0001\u0025\u0001\u0026\u0001\u0027"
      "\u0001\u0028\u0001\u0029\u0001\u002a\u0001\u002b\u0001\u002c\u0001"
      "\u002d\u0001\u002e";
  static final List<String> DFA52_transitionS = const [
      "\u0001\u0002\u0001\uffff\u0001\u0002\u0002\uffff\u0001\u0002\u0001"
      "\uffff\u0001\u0002\u0001\uffff\u0001\u0001\u0004\uffff\u0001\u0002"
      "\u0001\uffff\u0001\u0002\u0002\uffff\u0001\u0006\u0004\uffff\u0001"
      "\u0006\u0001\uffff\u0001\u0003\u0001\uffff\u0001\u0006\u0001\uffff"
      "\u0001\u0006\u0001\u0004\u0002\uffff\u0001\u0006\u0001\u0005\u002d"
      "\uffff\u0001\u0007\u000e\uffff\u0001\u0006",
      "\u0002\u000f\u0001\u000e\u0002\u000f\u0001\u000e\u0001\u0009\u0002"
      "\u000f\u0001\u000e\u0001\u000f\u0001\u000c\u0001\u000e\u0002\u000f"
      "\u0001\u000d\u0001\u000e\u0001\u000b\u0001\u000a\u0001\uffff\u0001"
      "\u000f\u0001\u000e\u0004\u000f\u0001\u000e\u0001\u000f\u0001\u000e"
      "\u0004\u000f\u0001\u000e\u0001\u000f\u0001\u0008\u0002\u000f\u0001"
      "\u000e\u0021\uffff\u0001\u000f\u0001\u000e\u0002\u000f",
      "\u0002\u000f\u0001\u000e\u0002\u000f\u0001\u000e\u0001\u0025\u0002"
      "\u000f\u0001\u000e\u0001\u000f\u0001\u0028\u0001\u000e\u0002\u000f"
      "\u0001\u0029\u0001\u000e\u0001\u0027\u0001\u0026\u0001\uffff\u0001"
      "\u000f\u0001\u000e\u0004\u000f\u0001\u000e\u0001\u000f\u0001\u000e"
      "\u0004\u000f\u0001\u000e\u0001\u000f\u0001\u0024\u0002\u000f\u0001"
      "\u000e\u0021\uffff\u0001\u000f\u0001\u000e\u0002\u000f",
      "\u0001\u0041\u0001\uffff\u0001\u0041\u0002\uffff\u0001\u0041\u0001"
      "\uffff\u0001\u0041\u0001\uffff\u0001\u0040\u0004\uffff\u0001\u0041"
      "\u0001\uffff\u0001\u0041\u0002\uffff\u0001\u0045\u0004\uffff\u0001"
      "\u0045\u0001\uffff\u0001\u0042\u0001\uffff\u0001\u0045\u0001\uffff"
      "\u0001\u0045\u0001\u0043\u0002\uffff\u0001\u0045\u0001\u0044\u001a"
      "\uffff\u0002\u000f\u0003\uffff\u0001\u000f\u0001\uffff\u0001\u000f"
      "\u0001\uffff\u0001\u000f\u0003\uffff\u0002\u000f\u0002\uffff\u0002"
      "\u000f\u0001\u0046\u0001\uffff\u0001\u000f\u0002\uffff\u0004\u000f"
      "\u0006\uffff\u0001\u0045",
      "\u0001\u0054\u0001\uffff\u0001\u0054\u0002\uffff\u0001\u0054\u0001"
      "\uffff\u0001\u0054\u0001\uffff\u0001\u0053\u0004\uffff\u0001\u0054"
      "\u0001\uffff\u0001\u0054\u0002\uffff\u0001\u0058\u0004\uffff\u0001"
      "\u0058\u0001\uffff\u0001\u0055\u0001\uffff\u0001\u0058\u0001\uffff"
      "\u0001\u0058\u0001\u0056\u0002\uffff\u0001\u0058\u0001\u0057\u002d"
      "\uffff\u0001\u0059\u000e\uffff\u0001\u0058",
      "\u0001\u005b\u0001\uffff\u0001\u005b\u0002\uffff\u0001\u005b\u0001"
      "\uffff\u0001\u005b\u0001\uffff\u0001\u005a\u0004\uffff\u0001\u005b"
      "\u0001\uffff\u0001\u005b\u0002\uffff\u0001\u005f\u0004\uffff\u0001"
      "\u005f\u0001\uffff\u0001\u005c\u0001\uffff\u0001\u005f\u0001\uffff"
      "\u0001\u005f\u0001\u005d\u0002\uffff\u0001\u005f\u0001\u005e\u002d"
      "\uffff\u0001\u0060\u000e\uffff\u0001\u005f",
      "\u0001\u0063\u0001\uffff\u0001\u0063\u0002\uffff\u0001\u0063\u0001"
      "\uffff\u0001\u0063\u0001\uffff\u0001\u0062\u0004\uffff\u0001\u0063"
      "\u0001\uffff\u0001\u0063\u0002\uffff\u0001\u0066\u0004\uffff\u0001"
      "\u0066\u0001\uffff\u0001\u0061\u0001\uffff\u0001\u0066\u0001\uffff"
      "\u0001\u0066\u0001\u0064\u0002\uffff\u0001\u0066\u0001\u0065\u002d"
      "\uffff\u0001\u0067\u000e\uffff\u0001\u0066",
      "\u0001\u006a\u0001\uffff\u0001\u006a\u0002\uffff\u0001\u006a\u0001"
      "\uffff\u0001\u006a\u0001\uffff\u0001\u0069\u0004\uffff\u0001\u006a"
      "\u0001\uffff\u0001\u006a\u0002\uffff\u0001\u006d\u0004\uffff\u0001"
      "\u006d\u0001\uffff\u0001\u0068\u0001\uffff\u0001\u006d\u0001\uffff"
      "\u0001\u006d\u0001\u006b\u0002\uffff\u0001\u006d\u0001\u006c\u002d"
      "\uffff\u0001\u006e\u000e\uffff\u0001\u006d",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
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
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
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
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
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
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff",
      "\u0001\uffff"
  ];

  static List<int> _DFA52_eot = null; 
  static List<int> get DFA52_eot() {
    if(_DFA52_eot == null)
      _DFA52_eot = 
        DFA.unpackEncodedString(DFA52_eotS);
    return _DFA52_eot;
  }

  static List<int> _DFA52_eof = null;
  static List<int> get DFA52_eof() {
    if(_DFA52_eof == null)
      _DFA52_eof = 
        DFA.unpackEncodedString(DFA52_eofS);
    return _DFA52_eof;
  }

  static List<int> _DFA52_min = null;
  static List<int> get DFA52_min() {
    if(_DFA52_min == null)
      _DFA52_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA52_minS);
    return _DFA52_min;
  }

  static List<int> _DFA52_max = null;
  static List<int> get DFA52_max() {
    if(_DFA52_max == null)
      _DFA52_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA52_maxS);
    return _DFA52_max;
  }

  static List<int> _DFA52_accept = null;
  static List<int> get DFA52_accept() {
    if(_DFA52_accept == null)
      _DFA52_accept = 
        DFA.unpackEncodedString(DFA52_acceptS);
    return _DFA52_accept;
  }

  static List<int> _DFA52_special = null;
  static List<int> get DFA52_special() {
    if(_DFA52_special == null)
      _DFA52_special = 
        DFA.unpackEncodedString(DFA52_specialS);
    return _DFA52_special;
  }

  static List<List<int>> _DFA52_transition = null;
  static List<List<int>> get DFA52_transition() {
    if(_DFA52_transition == null) {
      int numStates = DFA52_transitionS.length;
      _DFA52_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA52_transition[i] = 
            DFA.unpackEncodedString(DFA52_transitionS[i]);
    }
    return _DFA52_transition;
  }static final String DFA64_eotS =
      "\u004a\uffff";
  static final String DFA64_eofS =
      "\u004a\uffff";
  static final String DFA64_minS =
      "\u0001\u0004\u0001\u000d\u0024\uffff\u0001\u0000\u0005\uffff\u0001"
      "\u0000\u000e\uffff\u0001\u0000\u000e\uffff";
  static final String DFA64_maxS =
      "\u0001\u0064\u0001\u0062\u0024\uffff\u0001\u0000\u0005\uffff\u0001"
      "\u0000\u000e\uffff\u0001\u0000\u000e\uffff";
  static final String DFA64_acceptS =
      "\u0002\uffff\u0001\u0002\u0013\uffff\u0001\u0001\u0033\uffff";
  static final String DFA64_specialS =
      "\u0026\uffff\u0001\u0000\u0005\uffff\u0001\u0001\u000e\uffff\u0001"
      "\u0002\u000e\uffff";
  static final List<String> DFA64_transitionS = const [
      "\u0001\u0002\u0001\uffff\u0001\u0002\u0002\uffff\u0001\u0002\u0001"
      "\uffff\u0001\u0002\u0001\uffff\u0001\u0001\u0004\uffff\u0001\u0002"
      "\u0001\uffff\u0001\u0002\u0002\uffff\u0001\u0002\u0004\uffff\u0001"
      "\u0002\u0001\uffff\u0001\u0002\u0001\uffff\u0001\u0002\u0001\uffff"
      "\u0002\u0002\u0002\uffff\u0002\u0002\u0007\uffff\u0001\u0002\u000f"
      "\uffff\u0001\u0016\u0002\u0002\u0002\u0016\u0003\u0002\u0001\u0016"
      "\u0001\uffff\u0003\u0016\u0003\u0002\u0003\u0016\u0001\u0002\u0002"
      "\u0016\u0001\u0002\u0002\u0016\u0001\u0002\u0005\u0016\u0002\u0002"
      "\u0003\uffff\u0002\u0002",
      "\u0001\u0016\u000a\uffff\u0006\u0002\u0001\u0026\u0001\uffff\u0001"
      "\u002c\u000a\u0002\u0001\uffff\u0003\u0002\u0001\u003b\u000c\u0002"
      "\u0001\uffff\u0002\u0002\u0001\u0016\u0002\uffff\u0002\u0016\u0003"
      "\uffff\u0001\u0016\u0001\uffff\u0003\u0016\u0003\uffff\u0003\u0016"
      "\u0001\uffff\u0002\u0016\u0001\uffff\u0002\u0016\u0002\uffff\u0004"
      "\u0016\u0002\uffff\u0003\u0002",
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
      "\u0001\uffff",
      "",
      "",
      "",
      "",
      "",
      "\u0001\uffff",
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
      "\u0001\uffff",
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
      ""
  ];

  static List<int> _DFA64_eot = null; 
  static List<int> get DFA64_eot() {
    if(_DFA64_eot == null)
      _DFA64_eot = 
        DFA.unpackEncodedString(DFA64_eotS);
    return _DFA64_eot;
  }

  static List<int> _DFA64_eof = null;
  static List<int> get DFA64_eof() {
    if(_DFA64_eof == null)
      _DFA64_eof = 
        DFA.unpackEncodedString(DFA64_eofS);
    return _DFA64_eof;
  }

  static List<int> _DFA64_min = null;
  static List<int> get DFA64_min() {
    if(_DFA64_min == null)
      _DFA64_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA64_minS);
    return _DFA64_min;
  }

  static List<int> _DFA64_max = null;
  static List<int> get DFA64_max() {
    if(_DFA64_max == null)
      _DFA64_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA64_maxS);
    return _DFA64_max;
  }

  static List<int> _DFA64_accept = null;
  static List<int> get DFA64_accept() {
    if(_DFA64_accept == null)
      _DFA64_accept = 
        DFA.unpackEncodedString(DFA64_acceptS);
    return _DFA64_accept;
  }

  static List<int> _DFA64_special = null;
  static List<int> get DFA64_special() {
    if(_DFA64_special == null)
      _DFA64_special = 
        DFA.unpackEncodedString(DFA64_specialS);
    return _DFA64_special;
  }

  static List<List<int>> _DFA64_transition = null;
  static List<List<int>> get DFA64_transition() {
    if(_DFA64_transition == null) {
      int numStates = DFA64_transitionS.length;
      _DFA64_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA64_transition[i] = 
            DFA.unpackEncodedString(DFA64_transitionS[i]);
    }
    return _DFA64_transition;
  } 

  static BitSet _FOLLOW_external_declaration_in_translation_unit77 = null;
  static BitSet get FOLLOW_external_declaration_in_translation_unit77() {
    if(_FOLLOW_external_declaration_in_translation_unit77 == null) 
      _FOLLOW_external_declaration_in_translation_unit77 = 
        new BitSet.fromList([0x8000000140002002,0x000000003EDB8E8C]);
    return _FOLLOW_external_declaration_in_translation_unit77;
  }

  static BitSet _FOLLOW_function_definition_in_external_declaration113 = null;
  static BitSet get FOLLOW_function_definition_in_external_declaration113() {
    if(_FOLLOW_function_definition_in_external_declaration113 == null) 
      _FOLLOW_function_definition_in_external_declaration113 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_function_definition_in_external_declaration113;
  }

  static BitSet _FOLLOW_declaration_in_external_declaration118 = null;
  static BitSet get FOLLOW_declaration_in_external_declaration118() {
    if(_FOLLOW_declaration_in_external_declaration118 == null) 
      _FOLLOW_declaration_in_external_declaration118 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declaration_in_external_declaration118;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_function_definition140 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_function_definition140() {
    if(_FOLLOW_declaration_specifiers_in_function_definition140 == null) 
      _FOLLOW_declaration_specifiers_in_function_definition140 = 
        new BitSet.fromList([0x0000000140002000]);
    return _FOLLOW_declaration_specifiers_in_function_definition140;
  }

  static BitSet _FOLLOW_declarator_in_function_definition143 = null;
  static BitSet get FOLLOW_declarator_in_function_definition143() {
    if(_FOLLOW_declarator_in_function_definition143 == null) 
      _FOLLOW_declarator_in_function_definition143 = 
        new BitSet.fromList([0x8000000000002000,0x00000000BEDB8E8C]);
    return _FOLLOW_declarator_in_function_definition143;
  }

  static BitSet _FOLLOW_declaration_in_function_definition149 = null;
  static BitSet get FOLLOW_declaration_in_function_definition149() {
    if(_FOLLOW_declaration_in_function_definition149 == null) 
      _FOLLOW_declaration_in_function_definition149 = 
        new BitSet.fromList([0x8000000000002000,0x00000000BEDB8E8C]);
    return _FOLLOW_declaration_in_function_definition149;
  }

  static BitSet _FOLLOW_compound_statement_in_function_definition152 = null;
  static BitSet get FOLLOW_compound_statement_in_function_definition152() {
    if(_FOLLOW_compound_statement_in_function_definition152 == null) 
      _FOLLOW_compound_statement_in_function_definition152 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_compound_statement_in_function_definition152;
  }

  static BitSet _FOLLOW_compound_statement_in_function_definition159 = null;
  static BitSet get FOLLOW_compound_statement_in_function_definition159() {
    if(_FOLLOW_compound_statement_in_function_definition159 == null) 
      _FOLLOW_compound_statement_in_function_definition159 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_compound_statement_in_function_definition159;
  }

  static BitSet _FOLLOW_89_in_declaration187 = null;
  static BitSet get FOLLOW_89_in_declaration187() {
    if(_FOLLOW_89_in_declaration187 == null) 
      _FOLLOW_89_in_declaration187 = 
        new BitSet.fromList([0x8000000140002000,0x000000003CDB8E8C]);
    return _FOLLOW_89_in_declaration187;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_declaration189 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_declaration189() {
    if(_FOLLOW_declaration_specifiers_in_declaration189 == null) 
      _FOLLOW_declaration_specifiers_in_declaration189 = 
        new BitSet.fromList([0x0000000140002000]);
    return _FOLLOW_declaration_specifiers_in_declaration189;
  }

  static BitSet _FOLLOW_init_declarator_list_in_declaration197 = null;
  static BitSet get FOLLOW_init_declarator_list_in_declaration197() {
    if(_FOLLOW_init_declarator_list_in_declaration197 == null) 
      _FOLLOW_init_declarator_list_in_declaration197 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_init_declarator_list_in_declaration197;
  }

  static BitSet _FOLLOW_47_in_declaration199 = null;
  static BitSet get FOLLOW_47_in_declaration199() {
    if(_FOLLOW_47_in_declaration199 == null) 
      _FOLLOW_47_in_declaration199 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_declaration199;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_declaration205 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_declaration205() {
    if(_FOLLOW_declaration_specifiers_in_declaration205 == null) 
      _FOLLOW_declaration_specifiers_in_declaration205 = 
        new BitSet.fromList([0x0000800140002000]);
    return _FOLLOW_declaration_specifiers_in_declaration205;
  }

  static BitSet _FOLLOW_init_declarator_list_in_declaration207 = null;
  static BitSet get FOLLOW_init_declarator_list_in_declaration207() {
    if(_FOLLOW_init_declarator_list_in_declaration207 == null) 
      _FOLLOW_init_declarator_list_in_declaration207 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_init_declarator_list_in_declaration207;
  }

  static BitSet _FOLLOW_47_in_declaration210 = null;
  static BitSet get FOLLOW_47_in_declaration210() {
    if(_FOLLOW_47_in_declaration210 == null) 
      _FOLLOW_47_in_declaration210 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_declaration210;
  }

  static BitSet _FOLLOW_storage_class_specifier_in_declaration_specifiers227 = null;
  static BitSet get FOLLOW_storage_class_specifier_in_declaration_specifiers227() {
    if(_FOLLOW_storage_class_specifier_in_declaration_specifiers227 == null) 
      _FOLLOW_storage_class_specifier_in_declaration_specifiers227 = 
        new BitSet.fromList([0x8000000000002002,0x000000003CDB8E8C]);
    return _FOLLOW_storage_class_specifier_in_declaration_specifiers227;
  }

  static BitSet _FOLLOW_type_specifier_in_declaration_specifiers235 = null;
  static BitSet get FOLLOW_type_specifier_in_declaration_specifiers235() {
    if(_FOLLOW_type_specifier_in_declaration_specifiers235 == null) 
      _FOLLOW_type_specifier_in_declaration_specifiers235 = 
        new BitSet.fromList([0x8000000000002002,0x000000003CDB8E8C]);
    return _FOLLOW_type_specifier_in_declaration_specifiers235;
  }

  static BitSet _FOLLOW_type_qualifier_in_declaration_specifiers249 = null;
  static BitSet get FOLLOW_type_qualifier_in_declaration_specifiers249() {
    if(_FOLLOW_type_qualifier_in_declaration_specifiers249 == null) 
      _FOLLOW_type_qualifier_in_declaration_specifiers249 = 
        new BitSet.fromList([0x8000000000002002,0x000000003CDB8E8C]);
    return _FOLLOW_type_qualifier_in_declaration_specifiers249;
  }

  static BitSet _FOLLOW_init_declarator_in_init_declarator_list271 = null;
  static BitSet get FOLLOW_init_declarator_in_init_declarator_list271() {
    if(_FOLLOW_init_declarator_in_init_declarator_list271 == null) 
      _FOLLOW_init_declarator_in_init_declarator_list271 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_init_declarator_in_init_declarator_list271;
  }

  static BitSet _FOLLOW_37_in_init_declarator_list274 = null;
  static BitSet get FOLLOW_37_in_init_declarator_list274() {
    if(_FOLLOW_37_in_init_declarator_list274 == null) 
      _FOLLOW_37_in_init_declarator_list274 = 
        new BitSet.fromList([0x0000000140002000]);
    return _FOLLOW_37_in_init_declarator_list274;
  }

  static BitSet _FOLLOW_init_declarator_in_init_declarator_list276 = null;
  static BitSet get FOLLOW_init_declarator_in_init_declarator_list276() {
    if(_FOLLOW_init_declarator_in_init_declarator_list276 == null) 
      _FOLLOW_init_declarator_in_init_declarator_list276 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_init_declarator_in_init_declarator_list276;
  }

  static BitSet _FOLLOW_declarator_in_init_declarator289 = null;
  static BitSet get FOLLOW_declarator_in_init_declarator289() {
    if(_FOLLOW_declarator_in_init_declarator289 == null) 
      _FOLLOW_declarator_in_init_declarator289 = 
        new BitSet.fromList([0x0010000000000002]);
    return _FOLLOW_declarator_in_init_declarator289;
  }

  static BitSet _FOLLOW_52_in_init_declarator292 = null;
  static BitSet get FOLLOW_52_in_init_declarator292() {
    if(_FOLLOW_52_in_init_declarator292 == null) 
      _FOLLOW_52_in_init_declarator292 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001080200000]);
    return _FOLLOW_52_in_init_declarator292;
  }

  static BitSet _FOLLOW_initializer_in_init_declarator294 = null;
  static BitSet get FOLLOW_initializer_in_init_declarator294() {
    if(_FOLLOW_initializer_in_init_declarator294 == null) 
      _FOLLOW_initializer_in_init_declarator294 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_initializer_in_init_declarator294;
  }

  static BitSet _FOLLOW_92_in_type_specifier333 = null;
  static BitSet get FOLLOW_92_in_type_specifier333() {
    if(_FOLLOW_92_in_type_specifier333 == null) 
      _FOLLOW_92_in_type_specifier333 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_92_in_type_specifier333;
  }

  static BitSet _FOLLOW_66_in_type_specifier338 = null;
  static BitSet get FOLLOW_66_in_type_specifier338() {
    if(_FOLLOW_66_in_type_specifier338 == null) 
      _FOLLOW_66_in_type_specifier338 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_66_in_type_specifier338;
  }

  static BitSet _FOLLOW_83_in_type_specifier343 = null;
  static BitSet get FOLLOW_83_in_type_specifier343() {
    if(_FOLLOW_83_in_type_specifier343 == null) 
      _FOLLOW_83_in_type_specifier343 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_83_in_type_specifier343;
  }

  static BitSet _FOLLOW_79_in_type_specifier348 = null;
  static BitSet get FOLLOW_79_in_type_specifier348() {
    if(_FOLLOW_79_in_type_specifier348 == null) 
      _FOLLOW_79_in_type_specifier348 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_79_in_type_specifier348;
  }

  static BitSet _FOLLOW_80_in_type_specifier353 = null;
  static BitSet get FOLLOW_80_in_type_specifier353() {
    if(_FOLLOW_80_in_type_specifier353 == null) 
      _FOLLOW_80_in_type_specifier353 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_80_in_type_specifier353;
  }

  static BitSet _FOLLOW_75_in_type_specifier358 = null;
  static BitSet get FOLLOW_75_in_type_specifier358() {
    if(_FOLLOW_75_in_type_specifier358 == null) 
      _FOLLOW_75_in_type_specifier358 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_75_in_type_specifier358;
  }

  static BitSet _FOLLOW_71_in_type_specifier363 = null;
  static BitSet get FOLLOW_71_in_type_specifier363() {
    if(_FOLLOW_71_in_type_specifier363 == null) 
      _FOLLOW_71_in_type_specifier363 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_71_in_type_specifier363;
  }

  static BitSet _FOLLOW_84_in_type_specifier368 = null;
  static BitSet get FOLLOW_84_in_type_specifier368() {
    if(_FOLLOW_84_in_type_specifier368 == null) 
      _FOLLOW_84_in_type_specifier368 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_84_in_type_specifier368;
  }

  static BitSet _FOLLOW_91_in_type_specifier373 = null;
  static BitSet get FOLLOW_91_in_type_specifier373() {
    if(_FOLLOW_91_in_type_specifier373 == null) 
      _FOLLOW_91_in_type_specifier373 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_91_in_type_specifier373;
  }

  static BitSet _FOLLOW_struct_or_union_specifier_in_type_specifier378 = null;
  static BitSet get FOLLOW_struct_or_union_specifier_in_type_specifier378() {
    if(_FOLLOW_struct_or_union_specifier_in_type_specifier378 == null) 
      _FOLLOW_struct_or_union_specifier_in_type_specifier378 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_struct_or_union_specifier_in_type_specifier378;
  }

  static BitSet _FOLLOW_enum_specifier_in_type_specifier383 = null;
  static BitSet get FOLLOW_enum_specifier_in_type_specifier383() {
    if(_FOLLOW_enum_specifier_in_type_specifier383 == null) 
      _FOLLOW_enum_specifier_in_type_specifier383 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_enum_specifier_in_type_specifier383;
  }

  static BitSet _FOLLOW_type_id_in_type_specifier388 = null;
  static BitSet get FOLLOW_type_id_in_type_specifier388() {
    if(_FOLLOW_type_id_in_type_specifier388 == null) 
      _FOLLOW_type_id_in_type_specifier388 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_type_id_in_type_specifier388;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_type_id406 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_type_id406() {
    if(_FOLLOW_IDENTIFIER_in_type_id406 == null) 
      _FOLLOW_IDENTIFIER_in_type_id406 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_IDENTIFIER_in_type_id406;
  }

  static BitSet _FOLLOW_struct_or_union_in_struct_or_union_specifier439 = null;
  static BitSet get FOLLOW_struct_or_union_in_struct_or_union_specifier439() {
    if(_FOLLOW_struct_or_union_in_struct_or_union_specifier439 == null) 
      _FOLLOW_struct_or_union_in_struct_or_union_specifier439 = 
        new BitSet.fromList([0x0000000000002000,0x0000000080000000]);
    return _FOLLOW_struct_or_union_in_struct_or_union_specifier439;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_struct_or_union_specifier441 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_struct_or_union_specifier441() {
    if(_FOLLOW_IDENTIFIER_in_struct_or_union_specifier441 == null) 
      _FOLLOW_IDENTIFIER_in_struct_or_union_specifier441 = 
        new BitSet.fromList([0x0000000000000000,0x0000000080000000]);
    return _FOLLOW_IDENTIFIER_in_struct_or_union_specifier441;
  }

  static BitSet _FOLLOW_95_in_struct_or_union_specifier444 = null;
  static BitSet get FOLLOW_95_in_struct_or_union_specifier444() {
    if(_FOLLOW_95_in_struct_or_union_specifier444 == null) 
      _FOLLOW_95_in_struct_or_union_specifier444 = 
        new BitSet.fromList([0x0000000000002000,0x000000003C998A8C]);
    return _FOLLOW_95_in_struct_or_union_specifier444;
  }

  static BitSet _FOLLOW_struct_declaration_list_in_struct_or_union_specifier446 = null;
  static BitSet get FOLLOW_struct_declaration_list_in_struct_or_union_specifier446() {
    if(_FOLLOW_struct_declaration_list_in_struct_or_union_specifier446 == null) 
      _FOLLOW_struct_declaration_list_in_struct_or_union_specifier446 = 
        new BitSet.fromList([0x0000000000000000,0x0000000800000000]);
    return _FOLLOW_struct_declaration_list_in_struct_or_union_specifier446;
  }

  static BitSet _FOLLOW_99_in_struct_or_union_specifier448 = null;
  static BitSet get FOLLOW_99_in_struct_or_union_specifier448() {
    if(_FOLLOW_99_in_struct_or_union_specifier448 == null) 
      _FOLLOW_99_in_struct_or_union_specifier448 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_99_in_struct_or_union_specifier448;
  }

  static BitSet _FOLLOW_struct_or_union_in_struct_or_union_specifier453 = null;
  static BitSet get FOLLOW_struct_or_union_in_struct_or_union_specifier453() {
    if(_FOLLOW_struct_or_union_in_struct_or_union_specifier453 == null) 
      _FOLLOW_struct_or_union_in_struct_or_union_specifier453 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_struct_or_union_in_struct_or_union_specifier453;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_struct_or_union_specifier455 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_struct_or_union_specifier455() {
    if(_FOLLOW_IDENTIFIER_in_struct_or_union_specifier455 == null) 
      _FOLLOW_IDENTIFIER_in_struct_or_union_specifier455 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_IDENTIFIER_in_struct_or_union_specifier455;
  }

  static BitSet _FOLLOW_struct_declaration_in_struct_declaration_list482 = null;
  static BitSet get FOLLOW_struct_declaration_in_struct_declaration_list482() {
    if(_FOLLOW_struct_declaration_in_struct_declaration_list482 == null) 
      _FOLLOW_struct_declaration_in_struct_declaration_list482 = 
        new BitSet.fromList([0x0000000000002002,0x000000003C998A8C]);
    return _FOLLOW_struct_declaration_in_struct_declaration_list482;
  }

  static BitSet _FOLLOW_specifier_qualifier_list_in_struct_declaration494 = null;
  static BitSet get FOLLOW_specifier_qualifier_list_in_struct_declaration494() {
    if(_FOLLOW_specifier_qualifier_list_in_struct_declaration494 == null) 
      _FOLLOW_specifier_qualifier_list_in_struct_declaration494 = 
        new BitSet.fromList([0x0000400140002000]);
    return _FOLLOW_specifier_qualifier_list_in_struct_declaration494;
  }

  static BitSet _FOLLOW_struct_declarator_list_in_struct_declaration496 = null;
  static BitSet get FOLLOW_struct_declarator_list_in_struct_declaration496() {
    if(_FOLLOW_struct_declarator_list_in_struct_declaration496 == null) 
      _FOLLOW_struct_declarator_list_in_struct_declaration496 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_struct_declarator_list_in_struct_declaration496;
  }

  static BitSet _FOLLOW_47_in_struct_declaration498 = null;
  static BitSet get FOLLOW_47_in_struct_declaration498() {
    if(_FOLLOW_47_in_struct_declaration498 == null) 
      _FOLLOW_47_in_struct_declaration498 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_struct_declaration498;
  }

  static BitSet _FOLLOW_type_qualifier_in_specifier_qualifier_list511 = null;
  static BitSet get FOLLOW_type_qualifier_in_specifier_qualifier_list511() {
    if(_FOLLOW_type_qualifier_in_specifier_qualifier_list511 == null) 
      _FOLLOW_type_qualifier_in_specifier_qualifier_list511 = 
        new BitSet.fromList([0x0000000000002002,0x000000003C998A8C]);
    return _FOLLOW_type_qualifier_in_specifier_qualifier_list511;
  }

  static BitSet _FOLLOW_type_specifier_in_specifier_qualifier_list515 = null;
  static BitSet get FOLLOW_type_specifier_in_specifier_qualifier_list515() {
    if(_FOLLOW_type_specifier_in_specifier_qualifier_list515 == null) 
      _FOLLOW_type_specifier_in_specifier_qualifier_list515 = 
        new BitSet.fromList([0x0000000000002002,0x000000003C998A8C]);
    return _FOLLOW_type_specifier_in_specifier_qualifier_list515;
  }

  static BitSet _FOLLOW_struct_declarator_in_struct_declarator_list529 = null;
  static BitSet get FOLLOW_struct_declarator_in_struct_declarator_list529() {
    if(_FOLLOW_struct_declarator_in_struct_declarator_list529 == null) 
      _FOLLOW_struct_declarator_in_struct_declarator_list529 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_struct_declarator_in_struct_declarator_list529;
  }

  static BitSet _FOLLOW_37_in_struct_declarator_list532 = null;
  static BitSet get FOLLOW_37_in_struct_declarator_list532() {
    if(_FOLLOW_37_in_struct_declarator_list532 == null) 
      _FOLLOW_37_in_struct_declarator_list532 = 
        new BitSet.fromList([0x0000400140002000]);
    return _FOLLOW_37_in_struct_declarator_list532;
  }

  static BitSet _FOLLOW_struct_declarator_in_struct_declarator_list534 = null;
  static BitSet get FOLLOW_struct_declarator_in_struct_declarator_list534() {
    if(_FOLLOW_struct_declarator_in_struct_declarator_list534 == null) 
      _FOLLOW_struct_declarator_in_struct_declarator_list534 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_struct_declarator_in_struct_declarator_list534;
  }

  static BitSet _FOLLOW_declarator_in_struct_declarator547 = null;
  static BitSet get FOLLOW_declarator_in_struct_declarator547() {
    if(_FOLLOW_declarator_in_struct_declarator547 == null) 
      _FOLLOW_declarator_in_struct_declarator547 = 
        new BitSet.fromList([0x0000400000000002]);
    return _FOLLOW_declarator_in_struct_declarator547;
  }

  static BitSet _FOLLOW_46_in_struct_declarator550 = null;
  static BitSet get FOLLOW_46_in_struct_declarator550() {
    if(_FOLLOW_46_in_struct_declarator550 == null) 
      _FOLLOW_46_in_struct_declarator550 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_46_in_struct_declarator550;
  }

  static BitSet _FOLLOW_constant_expression_in_struct_declarator552 = null;
  static BitSet get FOLLOW_constant_expression_in_struct_declarator552() {
    if(_FOLLOW_constant_expression_in_struct_declarator552 == null) 
      _FOLLOW_constant_expression_in_struct_declarator552 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_constant_expression_in_struct_declarator552;
  }

  static BitSet _FOLLOW_46_in_struct_declarator559 = null;
  static BitSet get FOLLOW_46_in_struct_declarator559() {
    if(_FOLLOW_46_in_struct_declarator559 == null) 
      _FOLLOW_46_in_struct_declarator559 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_46_in_struct_declarator559;
  }

  static BitSet _FOLLOW_constant_expression_in_struct_declarator561 = null;
  static BitSet get FOLLOW_constant_expression_in_struct_declarator561() {
    if(_FOLLOW_constant_expression_in_struct_declarator561 == null) 
      _FOLLOW_constant_expression_in_struct_declarator561 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_constant_expression_in_struct_declarator561;
  }

  static BitSet _FOLLOW_73_in_enum_specifier579 = null;
  static BitSet get FOLLOW_73_in_enum_specifier579() {
    if(_FOLLOW_73_in_enum_specifier579 == null) 
      _FOLLOW_73_in_enum_specifier579 = 
        new BitSet.fromList([0x0000000000000000,0x0000000080000000]);
    return _FOLLOW_73_in_enum_specifier579;
  }

  static BitSet _FOLLOW_95_in_enum_specifier581 = null;
  static BitSet get FOLLOW_95_in_enum_specifier581() {
    if(_FOLLOW_95_in_enum_specifier581 == null) 
      _FOLLOW_95_in_enum_specifier581 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_95_in_enum_specifier581;
  }

  static BitSet _FOLLOW_enumerator_list_in_enum_specifier583 = null;
  static BitSet get FOLLOW_enumerator_list_in_enum_specifier583() {
    if(_FOLLOW_enumerator_list_in_enum_specifier583 == null) 
      _FOLLOW_enumerator_list_in_enum_specifier583 = 
        new BitSet.fromList([0x0000000000000000,0x0000000800000000]);
    return _FOLLOW_enumerator_list_in_enum_specifier583;
  }

  static BitSet _FOLLOW_99_in_enum_specifier585 = null;
  static BitSet get FOLLOW_99_in_enum_specifier585() {
    if(_FOLLOW_99_in_enum_specifier585 == null) 
      _FOLLOW_99_in_enum_specifier585 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_99_in_enum_specifier585;
  }

  static BitSet _FOLLOW_73_in_enum_specifier590 = null;
  static BitSet get FOLLOW_73_in_enum_specifier590() {
    if(_FOLLOW_73_in_enum_specifier590 == null) 
      _FOLLOW_73_in_enum_specifier590 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_73_in_enum_specifier590;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_enum_specifier592 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_enum_specifier592() {
    if(_FOLLOW_IDENTIFIER_in_enum_specifier592 == null) 
      _FOLLOW_IDENTIFIER_in_enum_specifier592 = 
        new BitSet.fromList([0x0000000000000000,0x0000000080000000]);
    return _FOLLOW_IDENTIFIER_in_enum_specifier592;
  }

  static BitSet _FOLLOW_95_in_enum_specifier594 = null;
  static BitSet get FOLLOW_95_in_enum_specifier594() {
    if(_FOLLOW_95_in_enum_specifier594 == null) 
      _FOLLOW_95_in_enum_specifier594 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_95_in_enum_specifier594;
  }

  static BitSet _FOLLOW_enumerator_list_in_enum_specifier596 = null;
  static BitSet get FOLLOW_enumerator_list_in_enum_specifier596() {
    if(_FOLLOW_enumerator_list_in_enum_specifier596 == null) 
      _FOLLOW_enumerator_list_in_enum_specifier596 = 
        new BitSet.fromList([0x0000000000000000,0x0000000800000000]);
    return _FOLLOW_enumerator_list_in_enum_specifier596;
  }

  static BitSet _FOLLOW_99_in_enum_specifier598 = null;
  static BitSet get FOLLOW_99_in_enum_specifier598() {
    if(_FOLLOW_99_in_enum_specifier598 == null) 
      _FOLLOW_99_in_enum_specifier598 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_99_in_enum_specifier598;
  }

  static BitSet _FOLLOW_73_in_enum_specifier603 = null;
  static BitSet get FOLLOW_73_in_enum_specifier603() {
    if(_FOLLOW_73_in_enum_specifier603 == null) 
      _FOLLOW_73_in_enum_specifier603 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_73_in_enum_specifier603;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_enum_specifier605 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_enum_specifier605() {
    if(_FOLLOW_IDENTIFIER_in_enum_specifier605 == null) 
      _FOLLOW_IDENTIFIER_in_enum_specifier605 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_IDENTIFIER_in_enum_specifier605;
  }

  static BitSet _FOLLOW_enumerator_in_enumerator_list616 = null;
  static BitSet get FOLLOW_enumerator_in_enumerator_list616() {
    if(_FOLLOW_enumerator_in_enumerator_list616 == null) 
      _FOLLOW_enumerator_in_enumerator_list616 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_enumerator_in_enumerator_list616;
  }

  static BitSet _FOLLOW_37_in_enumerator_list619 = null;
  static BitSet get FOLLOW_37_in_enumerator_list619() {
    if(_FOLLOW_37_in_enumerator_list619 == null) 
      _FOLLOW_37_in_enumerator_list619 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_37_in_enumerator_list619;
  }

  static BitSet _FOLLOW_enumerator_in_enumerator_list621 = null;
  static BitSet get FOLLOW_enumerator_in_enumerator_list621() {
    if(_FOLLOW_enumerator_in_enumerator_list621 == null) 
      _FOLLOW_enumerator_in_enumerator_list621 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_enumerator_in_enumerator_list621;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_enumerator634 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_enumerator634() {
    if(_FOLLOW_IDENTIFIER_in_enumerator634 == null) 
      _FOLLOW_IDENTIFIER_in_enumerator634 = 
        new BitSet.fromList([0x0010000000000002]);
    return _FOLLOW_IDENTIFIER_in_enumerator634;
  }

  static BitSet _FOLLOW_52_in_enumerator637 = null;
  static BitSet get FOLLOW_52_in_enumerator637() {
    if(_FOLLOW_52_in_enumerator637 == null) 
      _FOLLOW_52_in_enumerator637 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_52_in_enumerator637;
  }

  static BitSet _FOLLOW_constant_expression_in_enumerator639 = null;
  static BitSet get FOLLOW_constant_expression_in_enumerator639() {
    if(_FOLLOW_constant_expression_in_enumerator639 == null) 
      _FOLLOW_constant_expression_in_enumerator639 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_constant_expression_in_enumerator639;
  }

  static BitSet _FOLLOW_pointer_in_declarator668 = null;
  static BitSet get FOLLOW_pointer_in_declarator668() {
    if(_FOLLOW_pointer_in_declarator668 == null) 
      _FOLLOW_pointer_in_declarator668 = 
        new BitSet.fromList([0x0000000040002000]);
    return _FOLLOW_pointer_in_declarator668;
  }

  static BitSet _FOLLOW_direct_declarator_in_declarator671 = null;
  static BitSet get FOLLOW_direct_declarator_in_declarator671() {
    if(_FOLLOW_direct_declarator_in_declarator671 == null) 
      _FOLLOW_direct_declarator_in_declarator671 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_direct_declarator_in_declarator671;
  }

  static BitSet _FOLLOW_pointer_in_declarator676 = null;
  static BitSet get FOLLOW_pointer_in_declarator676() {
    if(_FOLLOW_pointer_in_declarator676 == null) 
      _FOLLOW_pointer_in_declarator676 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_pointer_in_declarator676;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_direct_declarator691 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_direct_declarator691() {
    if(_FOLLOW_IDENTIFIER_in_direct_declarator691 == null) 
      _FOLLOW_IDENTIFIER_in_direct_declarator691 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_IDENTIFIER_in_direct_declarator691;
  }

  static BitSet _FOLLOW_30_in_direct_declarator702 = null;
  static BitSet get FOLLOW_30_in_direct_declarator702() {
    if(_FOLLOW_30_in_direct_declarator702 == null) 
      _FOLLOW_30_in_direct_declarator702 = 
        new BitSet.fromList([0x0000000140002000]);
    return _FOLLOW_30_in_direct_declarator702;
  }

  static BitSet _FOLLOW_declarator_in_direct_declarator704 = null;
  static BitSet get FOLLOW_declarator_in_direct_declarator704() {
    if(_FOLLOW_declarator_in_direct_declarator704 == null) 
      _FOLLOW_declarator_in_direct_declarator704 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_declarator_in_direct_declarator704;
  }

  static BitSet _FOLLOW_31_in_direct_declarator706 = null;
  static BitSet get FOLLOW_31_in_direct_declarator706() {
    if(_FOLLOW_31_in_direct_declarator706 == null) 
      _FOLLOW_31_in_direct_declarator706 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_31_in_direct_declarator706;
  }

  static BitSet _FOLLOW_declarator_suffix_in_direct_declarator720 = null;
  static BitSet get FOLLOW_declarator_suffix_in_direct_declarator720() {
    if(_FOLLOW_declarator_suffix_in_direct_declarator720 == null) 
      _FOLLOW_declarator_suffix_in_direct_declarator720 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_declarator_suffix_in_direct_declarator720;
  }

  static BitSet _FOLLOW_59_in_declarator_suffix734 = null;
  static BitSet get FOLLOW_59_in_declarator_suffix734() {
    if(_FOLLOW_59_in_declarator_suffix734 == null) 
      _FOLLOW_59_in_declarator_suffix734 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_59_in_declarator_suffix734;
  }

  static BitSet _FOLLOW_constant_expression_in_declarator_suffix736 = null;
  static BitSet get FOLLOW_constant_expression_in_declarator_suffix736() {
    if(_FOLLOW_constant_expression_in_declarator_suffix736 == null) 
      _FOLLOW_constant_expression_in_declarator_suffix736 = 
        new BitSet.fromList([0x1000000000000000]);
    return _FOLLOW_constant_expression_in_declarator_suffix736;
  }

  static BitSet _FOLLOW_60_in_declarator_suffix738 = null;
  static BitSet get FOLLOW_60_in_declarator_suffix738() {
    if(_FOLLOW_60_in_declarator_suffix738 == null) 
      _FOLLOW_60_in_declarator_suffix738 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_60_in_declarator_suffix738;
  }

  static BitSet _FOLLOW_59_in_declarator_suffix748 = null;
  static BitSet get FOLLOW_59_in_declarator_suffix748() {
    if(_FOLLOW_59_in_declarator_suffix748 == null) 
      _FOLLOW_59_in_declarator_suffix748 = 
        new BitSet.fromList([0x1000000000000000]);
    return _FOLLOW_59_in_declarator_suffix748;
  }

  static BitSet _FOLLOW_60_in_declarator_suffix750 = null;
  static BitSet get FOLLOW_60_in_declarator_suffix750() {
    if(_FOLLOW_60_in_declarator_suffix750 == null) 
      _FOLLOW_60_in_declarator_suffix750 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_60_in_declarator_suffix750;
  }

  static BitSet _FOLLOW_30_in_declarator_suffix760 = null;
  static BitSet get FOLLOW_30_in_declarator_suffix760() {
    if(_FOLLOW_30_in_declarator_suffix760 == null) 
      _FOLLOW_30_in_declarator_suffix760 = 
        new BitSet.fromList([0x8000000000002000,0x000000003CDB8E8C]);
    return _FOLLOW_30_in_declarator_suffix760;
  }

  static BitSet _FOLLOW_parameter_type_list_in_declarator_suffix762 = null;
  static BitSet get FOLLOW_parameter_type_list_in_declarator_suffix762() {
    if(_FOLLOW_parameter_type_list_in_declarator_suffix762 == null) 
      _FOLLOW_parameter_type_list_in_declarator_suffix762 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_parameter_type_list_in_declarator_suffix762;
  }

  static BitSet _FOLLOW_31_in_declarator_suffix764 = null;
  static BitSet get FOLLOW_31_in_declarator_suffix764() {
    if(_FOLLOW_31_in_declarator_suffix764 == null) 
      _FOLLOW_31_in_declarator_suffix764 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_declarator_suffix764;
  }

  static BitSet _FOLLOW_30_in_declarator_suffix774 = null;
  static BitSet get FOLLOW_30_in_declarator_suffix774() {
    if(_FOLLOW_30_in_declarator_suffix774 == null) 
      _FOLLOW_30_in_declarator_suffix774 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_30_in_declarator_suffix774;
  }

  static BitSet _FOLLOW_identifier_list_in_declarator_suffix776 = null;
  static BitSet get FOLLOW_identifier_list_in_declarator_suffix776() {
    if(_FOLLOW_identifier_list_in_declarator_suffix776 == null) 
      _FOLLOW_identifier_list_in_declarator_suffix776 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_identifier_list_in_declarator_suffix776;
  }

  static BitSet _FOLLOW_31_in_declarator_suffix778 = null;
  static BitSet get FOLLOW_31_in_declarator_suffix778() {
    if(_FOLLOW_31_in_declarator_suffix778 == null) 
      _FOLLOW_31_in_declarator_suffix778 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_declarator_suffix778;
  }

  static BitSet _FOLLOW_30_in_declarator_suffix788 = null;
  static BitSet get FOLLOW_30_in_declarator_suffix788() {
    if(_FOLLOW_30_in_declarator_suffix788 == null) 
      _FOLLOW_30_in_declarator_suffix788 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_30_in_declarator_suffix788;
  }

  static BitSet _FOLLOW_31_in_declarator_suffix790 = null;
  static BitSet get FOLLOW_31_in_declarator_suffix790() {
    if(_FOLLOW_31_in_declarator_suffix790 == null) 
      _FOLLOW_31_in_declarator_suffix790 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_declarator_suffix790;
  }

  static BitSet _FOLLOW_32_in_pointer801 = null;
  static BitSet get FOLLOW_32_in_pointer801() {
    if(_FOLLOW_32_in_pointer801 == null) 
      _FOLLOW_32_in_pointer801 = 
        new BitSet.fromList([0x0000000000000000,0x0000000020000008]);
    return _FOLLOW_32_in_pointer801;
  }

  static BitSet _FOLLOW_type_qualifier_in_pointer803 = null;
  static BitSet get FOLLOW_type_qualifier_in_pointer803() {
    if(_FOLLOW_type_qualifier_in_pointer803 == null) 
      _FOLLOW_type_qualifier_in_pointer803 = 
        new BitSet.fromList([0x0000000100000002,0x0000000020000008]);
    return _FOLLOW_type_qualifier_in_pointer803;
  }

  static BitSet _FOLLOW_pointer_in_pointer806 = null;
  static BitSet get FOLLOW_pointer_in_pointer806() {
    if(_FOLLOW_pointer_in_pointer806 == null) 
      _FOLLOW_pointer_in_pointer806 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_pointer_in_pointer806;
  }

  static BitSet _FOLLOW_32_in_pointer812 = null;
  static BitSet get FOLLOW_32_in_pointer812() {
    if(_FOLLOW_32_in_pointer812 == null) 
      _FOLLOW_32_in_pointer812 = 
        new BitSet.fromList([0x0000000100000000]);
    return _FOLLOW_32_in_pointer812;
  }

  static BitSet _FOLLOW_pointer_in_pointer814 = null;
  static BitSet get FOLLOW_pointer_in_pointer814() {
    if(_FOLLOW_pointer_in_pointer814 == null) 
      _FOLLOW_pointer_in_pointer814 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_pointer_in_pointer814;
  }

  static BitSet _FOLLOW_32_in_pointer819 = null;
  static BitSet get FOLLOW_32_in_pointer819() {
    if(_FOLLOW_32_in_pointer819 == null) 
      _FOLLOW_32_in_pointer819 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_32_in_pointer819;
  }

  static BitSet _FOLLOW_parameter_list_in_parameter_type_list830 = null;
  static BitSet get FOLLOW_parameter_list_in_parameter_type_list830() {
    if(_FOLLOW_parameter_list_in_parameter_type_list830 == null) 
      _FOLLOW_parameter_list_in_parameter_type_list830 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_parameter_list_in_parameter_type_list830;
  }

  static BitSet _FOLLOW_37_in_parameter_type_list833 = null;
  static BitSet get FOLLOW_37_in_parameter_type_list833() {
    if(_FOLLOW_37_in_parameter_type_list833 == null) 
      _FOLLOW_37_in_parameter_type_list833 = 
        new BitSet.fromList([0x0000080000000000]);
    return _FOLLOW_37_in_parameter_type_list833;
  }

  static BitSet _FOLLOW_43_in_parameter_type_list835 = null;
  static BitSet get FOLLOW_43_in_parameter_type_list835() {
    if(_FOLLOW_43_in_parameter_type_list835 == null) 
      _FOLLOW_43_in_parameter_type_list835 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_43_in_parameter_type_list835;
  }

  static BitSet _FOLLOW_parameter_declaration_in_parameter_list848 = null;
  static BitSet get FOLLOW_parameter_declaration_in_parameter_list848() {
    if(_FOLLOW_parameter_declaration_in_parameter_list848 == null) 
      _FOLLOW_parameter_declaration_in_parameter_list848 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_parameter_declaration_in_parameter_list848;
  }

  static BitSet _FOLLOW_37_in_parameter_list851 = null;
  static BitSet get FOLLOW_37_in_parameter_list851() {
    if(_FOLLOW_37_in_parameter_list851 == null) 
      _FOLLOW_37_in_parameter_list851 = 
        new BitSet.fromList([0x8000000000002000,0x000000003CDB8E8C]);
    return _FOLLOW_37_in_parameter_list851;
  }

  static BitSet _FOLLOW_parameter_declaration_in_parameter_list853 = null;
  static BitSet get FOLLOW_parameter_declaration_in_parameter_list853() {
    if(_FOLLOW_parameter_declaration_in_parameter_list853 == null) 
      _FOLLOW_parameter_declaration_in_parameter_list853 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_parameter_declaration_in_parameter_list853;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_parameter_declaration866 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_parameter_declaration866() {
    if(_FOLLOW_declaration_specifiers_in_parameter_declaration866 == null) 
      _FOLLOW_declaration_specifiers_in_parameter_declaration866 = 
        new BitSet.fromList([0x0800000140002002]);
    return _FOLLOW_declaration_specifiers_in_parameter_declaration866;
  }

  static BitSet _FOLLOW_declarator_in_parameter_declaration869 = null;
  static BitSet get FOLLOW_declarator_in_parameter_declaration869() {
    if(_FOLLOW_declarator_in_parameter_declaration869 == null) 
      _FOLLOW_declarator_in_parameter_declaration869 = 
        new BitSet.fromList([0x0800000140002002]);
    return _FOLLOW_declarator_in_parameter_declaration869;
  }

  static BitSet _FOLLOW_abstract_declarator_in_parameter_declaration871 = null;
  static BitSet get FOLLOW_abstract_declarator_in_parameter_declaration871() {
    if(_FOLLOW_abstract_declarator_in_parameter_declaration871 == null) 
      _FOLLOW_abstract_declarator_in_parameter_declaration871 = 
        new BitSet.fromList([0x0800000140002002]);
    return _FOLLOW_abstract_declarator_in_parameter_declaration871;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_identifier_list884 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_identifier_list884() {
    if(_FOLLOW_IDENTIFIER_in_identifier_list884 == null) 
      _FOLLOW_IDENTIFIER_in_identifier_list884 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_IDENTIFIER_in_identifier_list884;
  }

  static BitSet _FOLLOW_37_in_identifier_list887 = null;
  static BitSet get FOLLOW_37_in_identifier_list887() {
    if(_FOLLOW_37_in_identifier_list887 == null) 
      _FOLLOW_37_in_identifier_list887 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_37_in_identifier_list887;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_identifier_list889 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_identifier_list889() {
    if(_FOLLOW_IDENTIFIER_in_identifier_list889 == null) 
      _FOLLOW_IDENTIFIER_in_identifier_list889 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_IDENTIFIER_in_identifier_list889;
  }

  static BitSet _FOLLOW_specifier_qualifier_list_in_type_name902 = null;
  static BitSet get FOLLOW_specifier_qualifier_list_in_type_name902() {
    if(_FOLLOW_specifier_qualifier_list_in_type_name902 == null) 
      _FOLLOW_specifier_qualifier_list_in_type_name902 = 
        new BitSet.fromList([0x0800000140000002]);
    return _FOLLOW_specifier_qualifier_list_in_type_name902;
  }

  static BitSet _FOLLOW_abstract_declarator_in_type_name904 = null;
  static BitSet get FOLLOW_abstract_declarator_in_type_name904() {
    if(_FOLLOW_abstract_declarator_in_type_name904 == null) 
      _FOLLOW_abstract_declarator_in_type_name904 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_abstract_declarator_in_type_name904;
  }

  static BitSet _FOLLOW_pointer_in_abstract_declarator916 = null;
  static BitSet get FOLLOW_pointer_in_abstract_declarator916() {
    if(_FOLLOW_pointer_in_abstract_declarator916 == null) 
      _FOLLOW_pointer_in_abstract_declarator916 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_pointer_in_abstract_declarator916;
  }

  static BitSet _FOLLOW_direct_abstract_declarator_in_abstract_declarator918 = null;
  static BitSet get FOLLOW_direct_abstract_declarator_in_abstract_declarator918() {
    if(_FOLLOW_direct_abstract_declarator_in_abstract_declarator918 == null) 
      _FOLLOW_direct_abstract_declarator_in_abstract_declarator918 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_direct_abstract_declarator_in_abstract_declarator918;
  }

  static BitSet _FOLLOW_direct_abstract_declarator_in_abstract_declarator924 = null;
  static BitSet get FOLLOW_direct_abstract_declarator_in_abstract_declarator924() {
    if(_FOLLOW_direct_abstract_declarator_in_abstract_declarator924 == null) 
      _FOLLOW_direct_abstract_declarator_in_abstract_declarator924 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_direct_abstract_declarator_in_abstract_declarator924;
  }

  static BitSet _FOLLOW_30_in_direct_abstract_declarator937 = null;
  static BitSet get FOLLOW_30_in_direct_abstract_declarator937() {
    if(_FOLLOW_30_in_direct_abstract_declarator937 == null) 
      _FOLLOW_30_in_direct_abstract_declarator937 = 
        new BitSet.fromList([0x0800000140000000]);
    return _FOLLOW_30_in_direct_abstract_declarator937;
  }

  static BitSet _FOLLOW_abstract_declarator_in_direct_abstract_declarator939 = null;
  static BitSet get FOLLOW_abstract_declarator_in_direct_abstract_declarator939() {
    if(_FOLLOW_abstract_declarator_in_direct_abstract_declarator939 == null) 
      _FOLLOW_abstract_declarator_in_direct_abstract_declarator939 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_abstract_declarator_in_direct_abstract_declarator939;
  }

  static BitSet _FOLLOW_31_in_direct_abstract_declarator941 = null;
  static BitSet get FOLLOW_31_in_direct_abstract_declarator941() {
    if(_FOLLOW_31_in_direct_abstract_declarator941 == null) 
      _FOLLOW_31_in_direct_abstract_declarator941 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_31_in_direct_abstract_declarator941;
  }

  static BitSet _FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator945 = null;
  static BitSet get FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator945() {
    if(_FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator945 == null) 
      _FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator945 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator945;
  }

  static BitSet _FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator949 = null;
  static BitSet get FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator949() {
    if(_FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator949 == null) 
      _FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator949 = 
        new BitSet.fromList([0x0800000040000002]);
    return _FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator949;
  }

  static BitSet _FOLLOW_59_in_abstract_declarator_suffix961 = null;
  static BitSet get FOLLOW_59_in_abstract_declarator_suffix961() {
    if(_FOLLOW_59_in_abstract_declarator_suffix961 == null) 
      _FOLLOW_59_in_abstract_declarator_suffix961 = 
        new BitSet.fromList([0x1000000000000000]);
    return _FOLLOW_59_in_abstract_declarator_suffix961;
  }

  static BitSet _FOLLOW_60_in_abstract_declarator_suffix963 = null;
  static BitSet get FOLLOW_60_in_abstract_declarator_suffix963() {
    if(_FOLLOW_60_in_abstract_declarator_suffix963 == null) 
      _FOLLOW_60_in_abstract_declarator_suffix963 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_60_in_abstract_declarator_suffix963;
  }

  static BitSet _FOLLOW_59_in_abstract_declarator_suffix968 = null;
  static BitSet get FOLLOW_59_in_abstract_declarator_suffix968() {
    if(_FOLLOW_59_in_abstract_declarator_suffix968 == null) 
      _FOLLOW_59_in_abstract_declarator_suffix968 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_59_in_abstract_declarator_suffix968;
  }

  static BitSet _FOLLOW_constant_expression_in_abstract_declarator_suffix970 = null;
  static BitSet get FOLLOW_constant_expression_in_abstract_declarator_suffix970() {
    if(_FOLLOW_constant_expression_in_abstract_declarator_suffix970 == null) 
      _FOLLOW_constant_expression_in_abstract_declarator_suffix970 = 
        new BitSet.fromList([0x1000000000000000]);
    return _FOLLOW_constant_expression_in_abstract_declarator_suffix970;
  }

  static BitSet _FOLLOW_60_in_abstract_declarator_suffix972 = null;
  static BitSet get FOLLOW_60_in_abstract_declarator_suffix972() {
    if(_FOLLOW_60_in_abstract_declarator_suffix972 == null) 
      _FOLLOW_60_in_abstract_declarator_suffix972 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_60_in_abstract_declarator_suffix972;
  }

  static BitSet _FOLLOW_30_in_abstract_declarator_suffix977 = null;
  static BitSet get FOLLOW_30_in_abstract_declarator_suffix977() {
    if(_FOLLOW_30_in_abstract_declarator_suffix977 == null) 
      _FOLLOW_30_in_abstract_declarator_suffix977 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_30_in_abstract_declarator_suffix977;
  }

  static BitSet _FOLLOW_31_in_abstract_declarator_suffix979 = null;
  static BitSet get FOLLOW_31_in_abstract_declarator_suffix979() {
    if(_FOLLOW_31_in_abstract_declarator_suffix979 == null) 
      _FOLLOW_31_in_abstract_declarator_suffix979 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_abstract_declarator_suffix979;
  }

  static BitSet _FOLLOW_30_in_abstract_declarator_suffix984 = null;
  static BitSet get FOLLOW_30_in_abstract_declarator_suffix984() {
    if(_FOLLOW_30_in_abstract_declarator_suffix984 == null) 
      _FOLLOW_30_in_abstract_declarator_suffix984 = 
        new BitSet.fromList([0x8000000000002000,0x000000003CDB8E8C]);
    return _FOLLOW_30_in_abstract_declarator_suffix984;
  }

  static BitSet _FOLLOW_parameter_type_list_in_abstract_declarator_suffix986 = null;
  static BitSet get FOLLOW_parameter_type_list_in_abstract_declarator_suffix986() {
    if(_FOLLOW_parameter_type_list_in_abstract_declarator_suffix986 == null) 
      _FOLLOW_parameter_type_list_in_abstract_declarator_suffix986 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_parameter_type_list_in_abstract_declarator_suffix986;
  }

  static BitSet _FOLLOW_31_in_abstract_declarator_suffix988 = null;
  static BitSet get FOLLOW_31_in_abstract_declarator_suffix988() {
    if(_FOLLOW_31_in_abstract_declarator_suffix988 == null) 
      _FOLLOW_31_in_abstract_declarator_suffix988 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_abstract_declarator_suffix988;
  }

  static BitSet _FOLLOW_assignment_expression_in_initializer1000 = null;
  static BitSet get FOLLOW_assignment_expression_in_initializer1000() {
    if(_FOLLOW_assignment_expression_in_initializer1000 == null) 
      _FOLLOW_assignment_expression_in_initializer1000 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_assignment_expression_in_initializer1000;
  }

  static BitSet _FOLLOW_95_in_initializer1005 = null;
  static BitSet get FOLLOW_95_in_initializer1005() {
    if(_FOLLOW_95_in_initializer1005 == null) 
      _FOLLOW_95_in_initializer1005 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001080200000]);
    return _FOLLOW_95_in_initializer1005;
  }

  static BitSet _FOLLOW_initializer_list_in_initializer1007 = null;
  static BitSet get FOLLOW_initializer_list_in_initializer1007() {
    if(_FOLLOW_initializer_list_in_initializer1007 == null) 
      _FOLLOW_initializer_list_in_initializer1007 = 
        new BitSet.fromList([0x0000002000000000,0x0000000800000000]);
    return _FOLLOW_initializer_list_in_initializer1007;
  }

  static BitSet _FOLLOW_37_in_initializer1009 = null;
  static BitSet get FOLLOW_37_in_initializer1009() {
    if(_FOLLOW_37_in_initializer1009 == null) 
      _FOLLOW_37_in_initializer1009 = 
        new BitSet.fromList([0x0000000000000000,0x0000000800000000]);
    return _FOLLOW_37_in_initializer1009;
  }

  static BitSet _FOLLOW_99_in_initializer1012 = null;
  static BitSet get FOLLOW_99_in_initializer1012() {
    if(_FOLLOW_99_in_initializer1012 == null) 
      _FOLLOW_99_in_initializer1012 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_99_in_initializer1012;
  }

  static BitSet _FOLLOW_initializer_in_initializer_list1023 = null;
  static BitSet get FOLLOW_initializer_in_initializer_list1023() {
    if(_FOLLOW_initializer_in_initializer_list1023 == null) 
      _FOLLOW_initializer_in_initializer_list1023 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_initializer_in_initializer_list1023;
  }

  static BitSet _FOLLOW_37_in_initializer_list1026 = null;
  static BitSet get FOLLOW_37_in_initializer_list1026() {
    if(_FOLLOW_37_in_initializer_list1026 == null) 
      _FOLLOW_37_in_initializer_list1026 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001080200000]);
    return _FOLLOW_37_in_initializer_list1026;
  }

  static BitSet _FOLLOW_initializer_in_initializer_list1028 = null;
  static BitSet get FOLLOW_initializer_in_initializer_list1028() {
    if(_FOLLOW_initializer_in_initializer_list1028 == null) 
      _FOLLOW_initializer_in_initializer_list1028 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_initializer_in_initializer_list1028;
  }

  static BitSet _FOLLOW_assignment_expression_in_argument_expression_list1045 = null;
  static BitSet get FOLLOW_assignment_expression_in_argument_expression_list1045() {
    if(_FOLLOW_assignment_expression_in_argument_expression_list1045 == null) 
      _FOLLOW_assignment_expression_in_argument_expression_list1045 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_assignment_expression_in_argument_expression_list1045;
  }

  static BitSet _FOLLOW_37_in_argument_expression_list1048 = null;
  static BitSet get FOLLOW_37_in_argument_expression_list1048() {
    if(_FOLLOW_37_in_argument_expression_list1048 == null) 
      _FOLLOW_37_in_argument_expression_list1048 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_37_in_argument_expression_list1048;
  }

  static BitSet _FOLLOW_assignment_expression_in_argument_expression_list1050 = null;
  static BitSet get FOLLOW_assignment_expression_in_argument_expression_list1050() {
    if(_FOLLOW_assignment_expression_in_argument_expression_list1050 == null) 
      _FOLLOW_assignment_expression_in_argument_expression_list1050 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_assignment_expression_in_argument_expression_list1050;
  }

  static BitSet _FOLLOW_multiplicative_expression_in_additive_expression1064 = null;
  static BitSet get FOLLOW_multiplicative_expression_in_additive_expression1064() {
    if(_FOLLOW_multiplicative_expression_in_additive_expression1064 == null) 
      _FOLLOW_multiplicative_expression_in_additive_expression1064 = 
        new BitSet.fromList([0x0000004400000002]);
    return _FOLLOW_multiplicative_expression_in_additive_expression1064;
  }

  static BitSet _FOLLOW_34_in_additive_expression1068 = null;
  static BitSet get FOLLOW_34_in_additive_expression1068() {
    if(_FOLLOW_34_in_additive_expression1068 == null) 
      _FOLLOW_34_in_additive_expression1068 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_34_in_additive_expression1068;
  }

  static BitSet _FOLLOW_multiplicative_expression_in_additive_expression1070 = null;
  static BitSet get FOLLOW_multiplicative_expression_in_additive_expression1070() {
    if(_FOLLOW_multiplicative_expression_in_additive_expression1070 == null) 
      _FOLLOW_multiplicative_expression_in_additive_expression1070 = 
        new BitSet.fromList([0x0000004400000002]);
    return _FOLLOW_multiplicative_expression_in_additive_expression1070;
  }

  static BitSet _FOLLOW_38_in_additive_expression1074 = null;
  static BitSet get FOLLOW_38_in_additive_expression1074() {
    if(_FOLLOW_38_in_additive_expression1074 == null) 
      _FOLLOW_38_in_additive_expression1074 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_38_in_additive_expression1074;
  }

  static BitSet _FOLLOW_multiplicative_expression_in_additive_expression1076 = null;
  static BitSet get FOLLOW_multiplicative_expression_in_additive_expression1076() {
    if(_FOLLOW_multiplicative_expression_in_additive_expression1076 == null) 
      _FOLLOW_multiplicative_expression_in_additive_expression1076 = 
        new BitSet.fromList([0x0000004400000002]);
    return _FOLLOW_multiplicative_expression_in_additive_expression1076;
  }

  static BitSet _FOLLOW_cast_expression_in_multiplicative_expression1090 = null;
  static BitSet get FOLLOW_cast_expression_in_multiplicative_expression1090() {
    if(_FOLLOW_cast_expression_in_multiplicative_expression1090 == null) 
      _FOLLOW_cast_expression_in_multiplicative_expression1090 = 
        new BitSet.fromList([0x0000100102000002]);
    return _FOLLOW_cast_expression_in_multiplicative_expression1090;
  }

  static BitSet _FOLLOW_32_in_multiplicative_expression1094 = null;
  static BitSet get FOLLOW_32_in_multiplicative_expression1094() {
    if(_FOLLOW_32_in_multiplicative_expression1094 == null) 
      _FOLLOW_32_in_multiplicative_expression1094 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_32_in_multiplicative_expression1094;
  }

  static BitSet _FOLLOW_cast_expression_in_multiplicative_expression1096 = null;
  static BitSet get FOLLOW_cast_expression_in_multiplicative_expression1096() {
    if(_FOLLOW_cast_expression_in_multiplicative_expression1096 == null) 
      _FOLLOW_cast_expression_in_multiplicative_expression1096 = 
        new BitSet.fromList([0x0000100102000002]);
    return _FOLLOW_cast_expression_in_multiplicative_expression1096;
  }

  static BitSet _FOLLOW_44_in_multiplicative_expression1100 = null;
  static BitSet get FOLLOW_44_in_multiplicative_expression1100() {
    if(_FOLLOW_44_in_multiplicative_expression1100 == null) 
      _FOLLOW_44_in_multiplicative_expression1100 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_44_in_multiplicative_expression1100;
  }

  static BitSet _FOLLOW_cast_expression_in_multiplicative_expression1102 = null;
  static BitSet get FOLLOW_cast_expression_in_multiplicative_expression1102() {
    if(_FOLLOW_cast_expression_in_multiplicative_expression1102 == null) 
      _FOLLOW_cast_expression_in_multiplicative_expression1102 = 
        new BitSet.fromList([0x0000100102000002]);
    return _FOLLOW_cast_expression_in_multiplicative_expression1102;
  }

  static BitSet _FOLLOW_25_in_multiplicative_expression1106 = null;
  static BitSet get FOLLOW_25_in_multiplicative_expression1106() {
    if(_FOLLOW_25_in_multiplicative_expression1106 == null) 
      _FOLLOW_25_in_multiplicative_expression1106 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_25_in_multiplicative_expression1106;
  }

  static BitSet _FOLLOW_cast_expression_in_multiplicative_expression1108 = null;
  static BitSet get FOLLOW_cast_expression_in_multiplicative_expression1108() {
    if(_FOLLOW_cast_expression_in_multiplicative_expression1108 == null) 
      _FOLLOW_cast_expression_in_multiplicative_expression1108 = 
        new BitSet.fromList([0x0000100102000002]);
    return _FOLLOW_cast_expression_in_multiplicative_expression1108;
  }

  static BitSet _FOLLOW_30_in_cast_expression1121 = null;
  static BitSet get FOLLOW_30_in_cast_expression1121() {
    if(_FOLLOW_30_in_cast_expression1121 == null) 
      _FOLLOW_30_in_cast_expression1121 = 
        new BitSet.fromList([0x0000000000002000,0x000000003C998A8C]);
    return _FOLLOW_30_in_cast_expression1121;
  }

  static BitSet _FOLLOW_type_name_in_cast_expression1123 = null;
  static BitSet get FOLLOW_type_name_in_cast_expression1123() {
    if(_FOLLOW_type_name_in_cast_expression1123 == null) 
      _FOLLOW_type_name_in_cast_expression1123 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_type_name_in_cast_expression1123;
  }

  static BitSet _FOLLOW_31_in_cast_expression1125 = null;
  static BitSet get FOLLOW_31_in_cast_expression1125() {
    if(_FOLLOW_31_in_cast_expression1125 == null) 
      _FOLLOW_31_in_cast_expression1125 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_31_in_cast_expression1125;
  }

  static BitSet _FOLLOW_cast_expression_in_cast_expression1127 = null;
  static BitSet get FOLLOW_cast_expression_in_cast_expression1127() {
    if(_FOLLOW_cast_expression_in_cast_expression1127 == null) 
      _FOLLOW_cast_expression_in_cast_expression1127 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_cast_expression_in_cast_expression1127;
  }

  static BitSet _FOLLOW_unary_expression_in_cast_expression1132 = null;
  static BitSet get FOLLOW_unary_expression_in_cast_expression1132() {
    if(_FOLLOW_unary_expression_in_cast_expression1132 == null) 
      _FOLLOW_unary_expression_in_cast_expression1132 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_unary_expression_in_cast_expression1132;
  }

  static BitSet _FOLLOW_postfix_expression_in_unary_expression1143 = null;
  static BitSet get FOLLOW_postfix_expression_in_unary_expression1143() {
    if(_FOLLOW_postfix_expression_in_unary_expression1143 == null) 
      _FOLLOW_postfix_expression_in_unary_expression1143 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_postfix_expression_in_unary_expression1143;
  }

  static BitSet _FOLLOW_35_in_unary_expression1148 = null;
  static BitSet get FOLLOW_35_in_unary_expression1148() {
    if(_FOLLOW_35_in_unary_expression1148 == null) 
      _FOLLOW_35_in_unary_expression1148 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_35_in_unary_expression1148;
  }

  static BitSet _FOLLOW_unary_expression_in_unary_expression1150 = null;
  static BitSet get FOLLOW_unary_expression_in_unary_expression1150() {
    if(_FOLLOW_unary_expression_in_unary_expression1150 == null) 
      _FOLLOW_unary_expression_in_unary_expression1150 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_unary_expression_in_unary_expression1150;
  }

  static BitSet _FOLLOW_39_in_unary_expression1155 = null;
  static BitSet get FOLLOW_39_in_unary_expression1155() {
    if(_FOLLOW_39_in_unary_expression1155 == null) 
      _FOLLOW_39_in_unary_expression1155 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_39_in_unary_expression1155;
  }

  static BitSet _FOLLOW_unary_expression_in_unary_expression1157 = null;
  static BitSet get FOLLOW_unary_expression_in_unary_expression1157() {
    if(_FOLLOW_unary_expression_in_unary_expression1157 == null) 
      _FOLLOW_unary_expression_in_unary_expression1157 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_unary_expression_in_unary_expression1157;
  }

  static BitSet _FOLLOW_unary_operator_in_unary_expression1162 = null;
  static BitSet get FOLLOW_unary_operator_in_unary_expression1162() {
    if(_FOLLOW_unary_operator_in_unary_expression1162 == null) 
      _FOLLOW_unary_operator_in_unary_expression1162 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_unary_operator_in_unary_expression1162;
  }

  static BitSet _FOLLOW_cast_expression_in_unary_expression1164 = null;
  static BitSet get FOLLOW_cast_expression_in_unary_expression1164() {
    if(_FOLLOW_cast_expression_in_unary_expression1164 == null) 
      _FOLLOW_cast_expression_in_unary_expression1164 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_cast_expression_in_unary_expression1164;
  }

  static BitSet _FOLLOW_85_in_unary_expression1169 = null;
  static BitSet get FOLLOW_85_in_unary_expression1169() {
    if(_FOLLOW_85_in_unary_expression1169 == null) 
      _FOLLOW_85_in_unary_expression1169 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_85_in_unary_expression1169;
  }

  static BitSet _FOLLOW_unary_expression_in_unary_expression1171 = null;
  static BitSet get FOLLOW_unary_expression_in_unary_expression1171() {
    if(_FOLLOW_unary_expression_in_unary_expression1171 == null) 
      _FOLLOW_unary_expression_in_unary_expression1171 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_unary_expression_in_unary_expression1171;
  }

  static BitSet _FOLLOW_85_in_unary_expression1176 = null;
  static BitSet get FOLLOW_85_in_unary_expression1176() {
    if(_FOLLOW_85_in_unary_expression1176 == null) 
      _FOLLOW_85_in_unary_expression1176 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_85_in_unary_expression1176;
  }

  static BitSet _FOLLOW_30_in_unary_expression1178 = null;
  static BitSet get FOLLOW_30_in_unary_expression1178() {
    if(_FOLLOW_30_in_unary_expression1178 == null) 
      _FOLLOW_30_in_unary_expression1178 = 
        new BitSet.fromList([0x0000000000002000,0x000000003C998A8C]);
    return _FOLLOW_30_in_unary_expression1178;
  }

  static BitSet _FOLLOW_type_name_in_unary_expression1180 = null;
  static BitSet get FOLLOW_type_name_in_unary_expression1180() {
    if(_FOLLOW_type_name_in_unary_expression1180 == null) 
      _FOLLOW_type_name_in_unary_expression1180 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_type_name_in_unary_expression1180;
  }

  static BitSet _FOLLOW_31_in_unary_expression1182 = null;
  static BitSet get FOLLOW_31_in_unary_expression1182() {
    if(_FOLLOW_31_in_unary_expression1182 == null) 
      _FOLLOW_31_in_unary_expression1182 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_unary_expression1182;
  }

  static BitSet _FOLLOW_primary_expression_in_postfix_expression1195 = null;
  static BitSet get FOLLOW_primary_expression_in_postfix_expression1195() {
    if(_FOLLOW_primary_expression_in_postfix_expression1195 == null) 
      _FOLLOW_primary_expression_in_postfix_expression1195 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_primary_expression_in_postfix_expression1195;
  }

  static BitSet _FOLLOW_59_in_postfix_expression1209 = null;
  static BitSet get FOLLOW_59_in_postfix_expression1209() {
    if(_FOLLOW_59_in_postfix_expression1209 == null) 
      _FOLLOW_59_in_postfix_expression1209 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_59_in_postfix_expression1209;
  }

  static BitSet _FOLLOW_expression_in_postfix_expression1211 = null;
  static BitSet get FOLLOW_expression_in_postfix_expression1211() {
    if(_FOLLOW_expression_in_postfix_expression1211 == null) 
      _FOLLOW_expression_in_postfix_expression1211 = 
        new BitSet.fromList([0x1000000000000000]);
    return _FOLLOW_expression_in_postfix_expression1211;
  }

  static BitSet _FOLLOW_60_in_postfix_expression1213 = null;
  static BitSet get FOLLOW_60_in_postfix_expression1213() {
    if(_FOLLOW_60_in_postfix_expression1213 == null) 
      _FOLLOW_60_in_postfix_expression1213 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_60_in_postfix_expression1213;
  }

  static BitSet _FOLLOW_30_in_postfix_expression1227 = null;
  static BitSet get FOLLOW_30_in_postfix_expression1227() {
    if(_FOLLOW_30_in_postfix_expression1227 == null) 
      _FOLLOW_30_in_postfix_expression1227 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_30_in_postfix_expression1227;
  }

  static BitSet _FOLLOW_31_in_postfix_expression1229 = null;
  static BitSet get FOLLOW_31_in_postfix_expression1229() {
    if(_FOLLOW_31_in_postfix_expression1229 == null) 
      _FOLLOW_31_in_postfix_expression1229 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_31_in_postfix_expression1229;
  }

  static BitSet _FOLLOW_30_in_postfix_expression1243 = null;
  static BitSet get FOLLOW_30_in_postfix_expression1243() {
    if(_FOLLOW_30_in_postfix_expression1243 == null) 
      _FOLLOW_30_in_postfix_expression1243 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_postfix_expression1243;
  }

  static BitSet _FOLLOW_argument_expression_list_in_postfix_expression1245 = null;
  static BitSet get FOLLOW_argument_expression_list_in_postfix_expression1245() {
    if(_FOLLOW_argument_expression_list_in_postfix_expression1245 == null) 
      _FOLLOW_argument_expression_list_in_postfix_expression1245 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_argument_expression_list_in_postfix_expression1245;
  }

  static BitSet _FOLLOW_31_in_postfix_expression1247 = null;
  static BitSet get FOLLOW_31_in_postfix_expression1247() {
    if(_FOLLOW_31_in_postfix_expression1247 == null) 
      _FOLLOW_31_in_postfix_expression1247 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_31_in_postfix_expression1247;
  }

  static BitSet _FOLLOW_42_in_postfix_expression1261 = null;
  static BitSet get FOLLOW_42_in_postfix_expression1261() {
    if(_FOLLOW_42_in_postfix_expression1261 == null) 
      _FOLLOW_42_in_postfix_expression1261 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_42_in_postfix_expression1261;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_postfix_expression1263 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_postfix_expression1263() {
    if(_FOLLOW_IDENTIFIER_in_postfix_expression1263 == null) 
      _FOLLOW_IDENTIFIER_in_postfix_expression1263 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_IDENTIFIER_in_postfix_expression1263;
  }

  static BitSet _FOLLOW_41_in_postfix_expression1277 = null;
  static BitSet get FOLLOW_41_in_postfix_expression1277() {
    if(_FOLLOW_41_in_postfix_expression1277 == null) 
      _FOLLOW_41_in_postfix_expression1277 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_41_in_postfix_expression1277;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_postfix_expression1279 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_postfix_expression1279() {
    if(_FOLLOW_IDENTIFIER_in_postfix_expression1279 == null) 
      _FOLLOW_IDENTIFIER_in_postfix_expression1279 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_IDENTIFIER_in_postfix_expression1279;
  }

  static BitSet _FOLLOW_35_in_postfix_expression1293 = null;
  static BitSet get FOLLOW_35_in_postfix_expression1293() {
    if(_FOLLOW_35_in_postfix_expression1293 == null) 
      _FOLLOW_35_in_postfix_expression1293 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_35_in_postfix_expression1293;
  }

  static BitSet _FOLLOW_39_in_postfix_expression1307 = null;
  static BitSet get FOLLOW_39_in_postfix_expression1307() {
    if(_FOLLOW_39_in_postfix_expression1307 == null) 
      _FOLLOW_39_in_postfix_expression1307 = 
        new BitSet.fromList([0x0800068840000002]);
    return _FOLLOW_39_in_postfix_expression1307;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_primary_expression1365 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_primary_expression1365() {
    if(_FOLLOW_IDENTIFIER_in_primary_expression1365 == null) 
      _FOLLOW_IDENTIFIER_in_primary_expression1365 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_IDENTIFIER_in_primary_expression1365;
  }

  static BitSet _FOLLOW_constant_in_primary_expression1370 = null;
  static BitSet get FOLLOW_constant_in_primary_expression1370() {
    if(_FOLLOW_constant_in_primary_expression1370 == null) 
      _FOLLOW_constant_in_primary_expression1370 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_constant_in_primary_expression1370;
  }

  static BitSet _FOLLOW_30_in_primary_expression1375 = null;
  static BitSet get FOLLOW_30_in_primary_expression1375() {
    if(_FOLLOW_30_in_primary_expression1375 == null) 
      _FOLLOW_30_in_primary_expression1375 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_primary_expression1375;
  }

  static BitSet _FOLLOW_expression_in_primary_expression1377 = null;
  static BitSet get FOLLOW_expression_in_primary_expression1377() {
    if(_FOLLOW_expression_in_primary_expression1377 == null) 
      _FOLLOW_expression_in_primary_expression1377 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_expression_in_primary_expression1377;
  }

  static BitSet _FOLLOW_31_in_primary_expression1379 = null;
  static BitSet get FOLLOW_31_in_primary_expression1379() {
    if(_FOLLOW_31_in_primary_expression1379 == null) 
      _FOLLOW_31_in_primary_expression1379 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_primary_expression1379;
  }

  static BitSet _FOLLOW_assignment_expression_in_expression1454 = null;
  static BitSet get FOLLOW_assignment_expression_in_expression1454() {
    if(_FOLLOW_assignment_expression_in_expression1454 == null) 
      _FOLLOW_assignment_expression_in_expression1454 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_assignment_expression_in_expression1454;
  }

  static BitSet _FOLLOW_37_in_expression1457 = null;
  static BitSet get FOLLOW_37_in_expression1457() {
    if(_FOLLOW_37_in_expression1457 == null) 
      _FOLLOW_37_in_expression1457 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_37_in_expression1457;
  }

  static BitSet _FOLLOW_assignment_expression_in_expression1459 = null;
  static BitSet get FOLLOW_assignment_expression_in_expression1459() {
    if(_FOLLOW_assignment_expression_in_expression1459 == null) 
      _FOLLOW_assignment_expression_in_expression1459 = 
        new BitSet.fromList([0x0000002000000002]);
    return _FOLLOW_assignment_expression_in_expression1459;
  }

  static BitSet _FOLLOW_conditional_expression_in_constant_expression1472 = null;
  static BitSet get FOLLOW_conditional_expression_in_constant_expression1472() {
    if(_FOLLOW_conditional_expression_in_constant_expression1472 == null) 
      _FOLLOW_conditional_expression_in_constant_expression1472 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_conditional_expression_in_constant_expression1472;
  }

  static BitSet _FOLLOW_lvalue_in_assignment_expression1483 = null;
  static BitSet get FOLLOW_lvalue_in_assignment_expression1483() {
    if(_FOLLOW_lvalue_in_assignment_expression1483 == null) 
      _FOLLOW_lvalue_in_assignment_expression1483 = 
        new BitSet.fromList([0x4214211224000000,0x0000000200000000]);
    return _FOLLOW_lvalue_in_assignment_expression1483;
  }

  static BitSet _FOLLOW_assignment_operator_in_assignment_expression1485 = null;
  static BitSet get FOLLOW_assignment_operator_in_assignment_expression1485() {
    if(_FOLLOW_assignment_operator_in_assignment_expression1485 == null) 
      _FOLLOW_assignment_operator_in_assignment_expression1485 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_assignment_operator_in_assignment_expression1485;
  }

  static BitSet _FOLLOW_assignment_expression_in_assignment_expression1487 = null;
  static BitSet get FOLLOW_assignment_expression_in_assignment_expression1487() {
    if(_FOLLOW_assignment_expression_in_assignment_expression1487 == null) 
      _FOLLOW_assignment_expression_in_assignment_expression1487 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_assignment_expression_in_assignment_expression1487;
  }

  static BitSet _FOLLOW_conditional_expression_in_assignment_expression1492 = null;
  static BitSet get FOLLOW_conditional_expression_in_assignment_expression1492() {
    if(_FOLLOW_conditional_expression_in_assignment_expression1492 == null) 
      _FOLLOW_conditional_expression_in_assignment_expression1492 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_conditional_expression_in_assignment_expression1492;
  }

  static BitSet _FOLLOW_unary_expression_in_lvalue1504 = null;
  static BitSet get FOLLOW_unary_expression_in_lvalue1504() {
    if(_FOLLOW_unary_expression_in_lvalue1504 == null) 
      _FOLLOW_unary_expression_in_lvalue1504 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_unary_expression_in_lvalue1504;
  }

  static BitSet _FOLLOW_logical_or_expression_in_conditional_expression1576 = null;
  static BitSet get FOLLOW_logical_or_expression_in_conditional_expression1576() {
    if(_FOLLOW_logical_or_expression_in_conditional_expression1576 == null) 
      _FOLLOW_logical_or_expression_in_conditional_expression1576 = 
        new BitSet.fromList([0x0400000000000002]);
    return _FOLLOW_logical_or_expression_in_conditional_expression1576;
  }

  static BitSet _FOLLOW_58_in_conditional_expression1579 = null;
  static BitSet get FOLLOW_58_in_conditional_expression1579() {
    if(_FOLLOW_58_in_conditional_expression1579 == null) 
      _FOLLOW_58_in_conditional_expression1579 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_58_in_conditional_expression1579;
  }

  static BitSet _FOLLOW_expression_in_conditional_expression1581 = null;
  static BitSet get FOLLOW_expression_in_conditional_expression1581() {
    if(_FOLLOW_expression_in_conditional_expression1581 == null) 
      _FOLLOW_expression_in_conditional_expression1581 = 
        new BitSet.fromList([0x0000400000000000]);
    return _FOLLOW_expression_in_conditional_expression1581;
  }

  static BitSet _FOLLOW_46_in_conditional_expression1583 = null;
  static BitSet get FOLLOW_46_in_conditional_expression1583() {
    if(_FOLLOW_46_in_conditional_expression1583 == null) 
      _FOLLOW_46_in_conditional_expression1583 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_46_in_conditional_expression1583;
  }

  static BitSet _FOLLOW_conditional_expression_in_conditional_expression1585 = null;
  static BitSet get FOLLOW_conditional_expression_in_conditional_expression1585() {
    if(_FOLLOW_conditional_expression_in_conditional_expression1585 == null) 
      _FOLLOW_conditional_expression_in_conditional_expression1585 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_conditional_expression_in_conditional_expression1585;
  }

  static BitSet _FOLLOW_logical_and_expression_in_logical_or_expression1598 = null;
  static BitSet get FOLLOW_logical_and_expression_in_logical_or_expression1598() {
    if(_FOLLOW_logical_and_expression_in_logical_or_expression1598 == null) 
      _FOLLOW_logical_and_expression_in_logical_or_expression1598 = 
        new BitSet.fromList([0x0000000000000002,0x0000000400000000]);
    return _FOLLOW_logical_and_expression_in_logical_or_expression1598;
  }

  static BitSet _FOLLOW_98_in_logical_or_expression1601 = null;
  static BitSet get FOLLOW_98_in_logical_or_expression1601() {
    if(_FOLLOW_98_in_logical_or_expression1601 == null) 
      _FOLLOW_98_in_logical_or_expression1601 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_98_in_logical_or_expression1601;
  }

  static BitSet _FOLLOW_logical_and_expression_in_logical_or_expression1603 = null;
  static BitSet get FOLLOW_logical_and_expression_in_logical_or_expression1603() {
    if(_FOLLOW_logical_and_expression_in_logical_or_expression1603 == null) 
      _FOLLOW_logical_and_expression_in_logical_or_expression1603 = 
        new BitSet.fromList([0x0000000000000002,0x0000000400000000]);
    return _FOLLOW_logical_and_expression_in_logical_or_expression1603;
  }

  static BitSet _FOLLOW_inclusive_or_expression_in_logical_and_expression1616 = null;
  static BitSet get FOLLOW_inclusive_or_expression_in_logical_and_expression1616() {
    if(_FOLLOW_inclusive_or_expression_in_logical_and_expression1616 == null) 
      _FOLLOW_inclusive_or_expression_in_logical_and_expression1616 = 
        new BitSet.fromList([0x0000000008000002]);
    return _FOLLOW_inclusive_or_expression_in_logical_and_expression1616;
  }

  static BitSet _FOLLOW_27_in_logical_and_expression1619 = null;
  static BitSet get FOLLOW_27_in_logical_and_expression1619() {
    if(_FOLLOW_27_in_logical_and_expression1619 == null) 
      _FOLLOW_27_in_logical_and_expression1619 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_27_in_logical_and_expression1619;
  }

  static BitSet _FOLLOW_inclusive_or_expression_in_logical_and_expression1621 = null;
  static BitSet get FOLLOW_inclusive_or_expression_in_logical_and_expression1621() {
    if(_FOLLOW_inclusive_or_expression_in_logical_and_expression1621 == null) 
      _FOLLOW_inclusive_or_expression_in_logical_and_expression1621 = 
        new BitSet.fromList([0x0000000008000002]);
    return _FOLLOW_inclusive_or_expression_in_logical_and_expression1621;
  }

  static BitSet _FOLLOW_exclusive_or_expression_in_inclusive_or_expression1634 = null;
  static BitSet get FOLLOW_exclusive_or_expression_in_inclusive_or_expression1634() {
    if(_FOLLOW_exclusive_or_expression_in_inclusive_or_expression1634 == null) 
      _FOLLOW_exclusive_or_expression_in_inclusive_or_expression1634 = 
        new BitSet.fromList([0x0000000000000002,0x0000000100000000]);
    return _FOLLOW_exclusive_or_expression_in_inclusive_or_expression1634;
  }

  static BitSet _FOLLOW_96_in_inclusive_or_expression1637 = null;
  static BitSet get FOLLOW_96_in_inclusive_or_expression1637() {
    if(_FOLLOW_96_in_inclusive_or_expression1637 == null) 
      _FOLLOW_96_in_inclusive_or_expression1637 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_96_in_inclusive_or_expression1637;
  }

  static BitSet _FOLLOW_exclusive_or_expression_in_inclusive_or_expression1639 = null;
  static BitSet get FOLLOW_exclusive_or_expression_in_inclusive_or_expression1639() {
    if(_FOLLOW_exclusive_or_expression_in_inclusive_or_expression1639 == null) 
      _FOLLOW_exclusive_or_expression_in_inclusive_or_expression1639 = 
        new BitSet.fromList([0x0000000000000002,0x0000000100000000]);
    return _FOLLOW_exclusive_or_expression_in_inclusive_or_expression1639;
  }

  static BitSet _FOLLOW_and_expression_in_exclusive_or_expression1652 = null;
  static BitSet get FOLLOW_and_expression_in_exclusive_or_expression1652() {
    if(_FOLLOW_and_expression_in_exclusive_or_expression1652 == null) 
      _FOLLOW_and_expression_in_exclusive_or_expression1652 = 
        new BitSet.fromList([0x2000000000000002]);
    return _FOLLOW_and_expression_in_exclusive_or_expression1652;
  }

  static BitSet _FOLLOW_61_in_exclusive_or_expression1655 = null;
  static BitSet get FOLLOW_61_in_exclusive_or_expression1655() {
    if(_FOLLOW_61_in_exclusive_or_expression1655 == null) 
      _FOLLOW_61_in_exclusive_or_expression1655 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_61_in_exclusive_or_expression1655;
  }

  static BitSet _FOLLOW_and_expression_in_exclusive_or_expression1657 = null;
  static BitSet get FOLLOW_and_expression_in_exclusive_or_expression1657() {
    if(_FOLLOW_and_expression_in_exclusive_or_expression1657 == null) 
      _FOLLOW_and_expression_in_exclusive_or_expression1657 = 
        new BitSet.fromList([0x2000000000000002]);
    return _FOLLOW_and_expression_in_exclusive_or_expression1657;
  }

  static BitSet _FOLLOW_equality_expression_in_and_expression1670 = null;
  static BitSet get FOLLOW_equality_expression_in_and_expression1670() {
    if(_FOLLOW_equality_expression_in_and_expression1670 == null) 
      _FOLLOW_equality_expression_in_and_expression1670 = 
        new BitSet.fromList([0x0000000010000002]);
    return _FOLLOW_equality_expression_in_and_expression1670;
  }

  static BitSet _FOLLOW_28_in_and_expression1673 = null;
  static BitSet get FOLLOW_28_in_and_expression1673() {
    if(_FOLLOW_28_in_and_expression1673 == null) 
      _FOLLOW_28_in_and_expression1673 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_28_in_and_expression1673;
  }

  static BitSet _FOLLOW_equality_expression_in_and_expression1675 = null;
  static BitSet get FOLLOW_equality_expression_in_and_expression1675() {
    if(_FOLLOW_equality_expression_in_and_expression1675 == null) 
      _FOLLOW_equality_expression_in_and_expression1675 = 
        new BitSet.fromList([0x0000000010000002]);
    return _FOLLOW_equality_expression_in_and_expression1675;
  }

  static BitSet _FOLLOW_relational_expression_in_equality_expression1687 = null;
  static BitSet get FOLLOW_relational_expression_in_equality_expression1687() {
    if(_FOLLOW_relational_expression_in_equality_expression1687 == null) 
      _FOLLOW_relational_expression_in_equality_expression1687 = 
        new BitSet.fromList([0x0020000001000002]);
    return _FOLLOW_relational_expression_in_equality_expression1687;
  }

  static BitSet _FOLLOW_set_in_equality_expression1690 = null;
  static BitSet get FOLLOW_set_in_equality_expression1690() {
    if(_FOLLOW_set_in_equality_expression1690 == null) 
      _FOLLOW_set_in_equality_expression1690 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_set_in_equality_expression1690;
  }

  static BitSet _FOLLOW_relational_expression_in_equality_expression1696 = null;
  static BitSet get FOLLOW_relational_expression_in_equality_expression1696() {
    if(_FOLLOW_relational_expression_in_equality_expression1696 == null) 
      _FOLLOW_relational_expression_in_equality_expression1696 = 
        new BitSet.fromList([0x0020000001000002]);
    return _FOLLOW_relational_expression_in_equality_expression1696;
  }

  static BitSet _FOLLOW_shift_expression_in_relational_expression1709 = null;
  static BitSet get FOLLOW_shift_expression_in_relational_expression1709() {
    if(_FOLLOW_shift_expression_in_relational_expression1709 == null) 
      _FOLLOW_shift_expression_in_relational_expression1709 = 
        new BitSet.fromList([0x00C9000000000002]);
    return _FOLLOW_shift_expression_in_relational_expression1709;
  }

  static BitSet _FOLLOW_set_in_relational_expression1712 = null;
  static BitSet get FOLLOW_set_in_relational_expression1712() {
    if(_FOLLOW_set_in_relational_expression1712 == null) 
      _FOLLOW_set_in_relational_expression1712 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_set_in_relational_expression1712;
  }

  static BitSet _FOLLOW_shift_expression_in_relational_expression1722 = null;
  static BitSet get FOLLOW_shift_expression_in_relational_expression1722() {
    if(_FOLLOW_shift_expression_in_relational_expression1722 == null) 
      _FOLLOW_shift_expression_in_relational_expression1722 = 
        new BitSet.fromList([0x00C9000000000002]);
    return _FOLLOW_shift_expression_in_relational_expression1722;
  }

  static BitSet _FOLLOW_additive_expression_in_shift_expression1735 = null;
  static BitSet get FOLLOW_additive_expression_in_shift_expression1735() {
    if(_FOLLOW_additive_expression_in_shift_expression1735 == null) 
      _FOLLOW_additive_expression_in_shift_expression1735 = 
        new BitSet.fromList([0x0102000000000002]);
    return _FOLLOW_additive_expression_in_shift_expression1735;
  }

  static BitSet _FOLLOW_set_in_shift_expression1738 = null;
  static BitSet get FOLLOW_set_in_shift_expression1738() {
    if(_FOLLOW_set_in_shift_expression1738 == null) 
      _FOLLOW_set_in_shift_expression1738 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_set_in_shift_expression1738;
  }

  static BitSet _FOLLOW_additive_expression_in_shift_expression1744 = null;
  static BitSet get FOLLOW_additive_expression_in_shift_expression1744() {
    if(_FOLLOW_additive_expression_in_shift_expression1744 == null) 
      _FOLLOW_additive_expression_in_shift_expression1744 = 
        new BitSet.fromList([0x0102000000000002]);
    return _FOLLOW_additive_expression_in_shift_expression1744;
  }

  static BitSet _FOLLOW_labeled_statement_in_statement1759 = null;
  static BitSet get FOLLOW_labeled_statement_in_statement1759() {
    if(_FOLLOW_labeled_statement_in_statement1759 == null) 
      _FOLLOW_labeled_statement_in_statement1759 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_labeled_statement_in_statement1759;
  }

  static BitSet _FOLLOW_compound_statement_in_statement1764 = null;
  static BitSet get FOLLOW_compound_statement_in_statement1764() {
    if(_FOLLOW_compound_statement_in_statement1764 == null) 
      _FOLLOW_compound_statement_in_statement1764 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_compound_statement_in_statement1764;
  }

  static BitSet _FOLLOW_expression_statement_in_statement1769 = null;
  static BitSet get FOLLOW_expression_statement_in_statement1769() {
    if(_FOLLOW_expression_statement_in_statement1769 == null) 
      _FOLLOW_expression_statement_in_statement1769 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_statement_in_statement1769;
  }

  static BitSet _FOLLOW_selection_statement_in_statement1774 = null;
  static BitSet get FOLLOW_selection_statement_in_statement1774() {
    if(_FOLLOW_selection_statement_in_statement1774 == null) 
      _FOLLOW_selection_statement_in_statement1774 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_selection_statement_in_statement1774;
  }

  static BitSet _FOLLOW_iteration_statement_in_statement1779 = null;
  static BitSet get FOLLOW_iteration_statement_in_statement1779() {
    if(_FOLLOW_iteration_statement_in_statement1779 == null) 
      _FOLLOW_iteration_statement_in_statement1779 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_iteration_statement_in_statement1779;
  }

  static BitSet _FOLLOW_jump_statement_in_statement1784 = null;
  static BitSet get FOLLOW_jump_statement_in_statement1784() {
    if(_FOLLOW_jump_statement_in_statement1784 == null) 
      _FOLLOW_jump_statement_in_statement1784 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_jump_statement_in_statement1784;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_labeled_statement1795 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_labeled_statement1795() {
    if(_FOLLOW_IDENTIFIER_in_labeled_statement1795 == null) 
      _FOLLOW_IDENTIFIER_in_labeled_statement1795 = 
        new BitSet.fromList([0x0000400000000000]);
    return _FOLLOW_IDENTIFIER_in_labeled_statement1795;
  }

  static BitSet _FOLLOW_46_in_labeled_statement1797 = null;
  static BitSet get FOLLOW_46_in_labeled_statement1797() {
    if(_FOLLOW_46_in_labeled_statement1797 == null) 
      _FOLLOW_46_in_labeled_statement1797 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_46_in_labeled_statement1797;
  }

  static BitSet _FOLLOW_statement_in_labeled_statement1799 = null;
  static BitSet get FOLLOW_statement_in_labeled_statement1799() {
    if(_FOLLOW_statement_in_labeled_statement1799 == null) 
      _FOLLOW_statement_in_labeled_statement1799 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_labeled_statement1799;
  }

  static BitSet _FOLLOW_65_in_labeled_statement1804 = null;
  static BitSet get FOLLOW_65_in_labeled_statement1804() {
    if(_FOLLOW_65_in_labeled_statement1804 == null) 
      _FOLLOW_65_in_labeled_statement1804 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_65_in_labeled_statement1804;
  }

  static BitSet _FOLLOW_constant_expression_in_labeled_statement1806 = null;
  static BitSet get FOLLOW_constant_expression_in_labeled_statement1806() {
    if(_FOLLOW_constant_expression_in_labeled_statement1806 == null) 
      _FOLLOW_constant_expression_in_labeled_statement1806 = 
        new BitSet.fromList([0x0000400000000000]);
    return _FOLLOW_constant_expression_in_labeled_statement1806;
  }

  static BitSet _FOLLOW_46_in_labeled_statement1808 = null;
  static BitSet get FOLLOW_46_in_labeled_statement1808() {
    if(_FOLLOW_46_in_labeled_statement1808 == null) 
      _FOLLOW_46_in_labeled_statement1808 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_46_in_labeled_statement1808;
  }

  static BitSet _FOLLOW_statement_in_labeled_statement1810 = null;
  static BitSet get FOLLOW_statement_in_labeled_statement1810() {
    if(_FOLLOW_statement_in_labeled_statement1810 == null) 
      _FOLLOW_statement_in_labeled_statement1810 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_labeled_statement1810;
  }

  static BitSet _FOLLOW_69_in_labeled_statement1815 = null;
  static BitSet get FOLLOW_69_in_labeled_statement1815() {
    if(_FOLLOW_69_in_labeled_statement1815 == null) 
      _FOLLOW_69_in_labeled_statement1815 = 
        new BitSet.fromList([0x0000400000000000]);
    return _FOLLOW_69_in_labeled_statement1815;
  }

  static BitSet _FOLLOW_46_in_labeled_statement1817 = null;
  static BitSet get FOLLOW_46_in_labeled_statement1817() {
    if(_FOLLOW_46_in_labeled_statement1817 == null) 
      _FOLLOW_46_in_labeled_statement1817 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_46_in_labeled_statement1817;
  }

  static BitSet _FOLLOW_statement_in_labeled_statement1819 = null;
  static BitSet get FOLLOW_statement_in_labeled_statement1819() {
    if(_FOLLOW_statement_in_labeled_statement1819 == null) 
      _FOLLOW_statement_in_labeled_statement1819 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_labeled_statement1819;
  }

  static BitSet _FOLLOW_95_in_compound_statement1841 = null;
  static BitSet get FOLLOW_95_in_compound_statement1841() {
    if(_FOLLOW_95_in_compound_statement1841 == null) 
      _FOLLOW_95_in_compound_statement1841 = 
        new BitSet.fromList([0x800080CD50942A50,0x00000018FFFFFEFF]);
    return _FOLLOW_95_in_compound_statement1841;
  }

  static BitSet _FOLLOW_declaration_in_compound_statement1843 = null;
  static BitSet get FOLLOW_declaration_in_compound_statement1843() {
    if(_FOLLOW_declaration_in_compound_statement1843 == null) 
      _FOLLOW_declaration_in_compound_statement1843 = 
        new BitSet.fromList([0x800080CD50942A50,0x00000018FFFFFEFF]);
    return _FOLLOW_declaration_in_compound_statement1843;
  }

  static BitSet _FOLLOW_statement_list_in_compound_statement1846 = null;
  static BitSet get FOLLOW_statement_list_in_compound_statement1846() {
    if(_FOLLOW_statement_list_in_compound_statement1846 == null) 
      _FOLLOW_statement_list_in_compound_statement1846 = 
        new BitSet.fromList([0x0000000000000000,0x0000000800000000]);
    return _FOLLOW_statement_list_in_compound_statement1846;
  }

  static BitSet _FOLLOW_99_in_compound_statement1849 = null;
  static BitSet get FOLLOW_99_in_compound_statement1849() {
    if(_FOLLOW_99_in_compound_statement1849 == null) 
      _FOLLOW_99_in_compound_statement1849 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_99_in_compound_statement1849;
  }

  static BitSet _FOLLOW_statement_in_statement_list1860 = null;
  static BitSet get FOLLOW_statement_in_statement_list1860() {
    if(_FOLLOW_statement_in_statement_list1860 == null) 
      _FOLLOW_statement_in_statement_list1860 = 
        new BitSet.fromList([0x000080CD50942A52,0x00000010C1247073]);
    return _FOLLOW_statement_in_statement_list1860;
  }

  static BitSet _FOLLOW_47_in_expression_statement1872 = null;
  static BitSet get FOLLOW_47_in_expression_statement1872() {
    if(_FOLLOW_47_in_expression_statement1872 == null) 
      _FOLLOW_47_in_expression_statement1872 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_expression_statement1872;
  }

  static BitSet _FOLLOW_expression_in_expression_statement1877 = null;
  static BitSet get FOLLOW_expression_in_expression_statement1877() {
    if(_FOLLOW_expression_in_expression_statement1877 == null) 
      _FOLLOW_expression_in_expression_statement1877 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_expression_in_expression_statement1877;
  }

  static BitSet _FOLLOW_47_in_expression_statement1879 = null;
  static BitSet get FOLLOW_47_in_expression_statement1879() {
    if(_FOLLOW_47_in_expression_statement1879 == null) 
      _FOLLOW_47_in_expression_statement1879 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_expression_statement1879;
  }

  static BitSet _FOLLOW_78_in_selection_statement1890 = null;
  static BitSet get FOLLOW_78_in_selection_statement1890() {
    if(_FOLLOW_78_in_selection_statement1890 == null) 
      _FOLLOW_78_in_selection_statement1890 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_78_in_selection_statement1890;
  }

  static BitSet _FOLLOW_30_in_selection_statement1892 = null;
  static BitSet get FOLLOW_30_in_selection_statement1892() {
    if(_FOLLOW_30_in_selection_statement1892 == null) 
      _FOLLOW_30_in_selection_statement1892 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_selection_statement1892;
  }

  static BitSet _FOLLOW_expression_in_selection_statement1894 = null;
  static BitSet get FOLLOW_expression_in_selection_statement1894() {
    if(_FOLLOW_expression_in_selection_statement1894 == null) 
      _FOLLOW_expression_in_selection_statement1894 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_expression_in_selection_statement1894;
  }

  static BitSet _FOLLOW_31_in_selection_statement1896 = null;
  static BitSet get FOLLOW_31_in_selection_statement1896() {
    if(_FOLLOW_31_in_selection_statement1896 == null) 
      _FOLLOW_31_in_selection_statement1896 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_31_in_selection_statement1896;
  }

  static BitSet _FOLLOW_statement_in_selection_statement1898 = null;
  static BitSet get FOLLOW_statement_in_selection_statement1898() {
    if(_FOLLOW_statement_in_selection_statement1898 == null) 
      _FOLLOW_statement_in_selection_statement1898 = 
        new BitSet.fromList([0x0000000000000002,0x0000000000000100]);
    return _FOLLOW_statement_in_selection_statement1898;
  }

  static BitSet _FOLLOW_72_in_selection_statement1913 = null;
  static BitSet get FOLLOW_72_in_selection_statement1913() {
    if(_FOLLOW_72_in_selection_statement1913 == null) 
      _FOLLOW_72_in_selection_statement1913 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_72_in_selection_statement1913;
  }

  static BitSet _FOLLOW_statement_in_selection_statement1915 = null;
  static BitSet get FOLLOW_statement_in_selection_statement1915() {
    if(_FOLLOW_statement_in_selection_statement1915 == null) 
      _FOLLOW_statement_in_selection_statement1915 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_selection_statement1915;
  }

  static BitSet _FOLLOW_88_in_selection_statement1922 = null;
  static BitSet get FOLLOW_88_in_selection_statement1922() {
    if(_FOLLOW_88_in_selection_statement1922 == null) 
      _FOLLOW_88_in_selection_statement1922 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_88_in_selection_statement1922;
  }

  static BitSet _FOLLOW_30_in_selection_statement1924 = null;
  static BitSet get FOLLOW_30_in_selection_statement1924() {
    if(_FOLLOW_30_in_selection_statement1924 == null) 
      _FOLLOW_30_in_selection_statement1924 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_selection_statement1924;
  }

  static BitSet _FOLLOW_expression_in_selection_statement1926 = null;
  static BitSet get FOLLOW_expression_in_selection_statement1926() {
    if(_FOLLOW_expression_in_selection_statement1926 == null) 
      _FOLLOW_expression_in_selection_statement1926 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_expression_in_selection_statement1926;
  }

  static BitSet _FOLLOW_31_in_selection_statement1928 = null;
  static BitSet get FOLLOW_31_in_selection_statement1928() {
    if(_FOLLOW_31_in_selection_statement1928 == null) 
      _FOLLOW_31_in_selection_statement1928 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_31_in_selection_statement1928;
  }

  static BitSet _FOLLOW_statement_in_selection_statement1930 = null;
  static BitSet get FOLLOW_statement_in_selection_statement1930() {
    if(_FOLLOW_statement_in_selection_statement1930 == null) 
      _FOLLOW_statement_in_selection_statement1930 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_selection_statement1930;
  }

  static BitSet _FOLLOW_94_in_iteration_statement1941 = null;
  static BitSet get FOLLOW_94_in_iteration_statement1941() {
    if(_FOLLOW_94_in_iteration_statement1941 == null) 
      _FOLLOW_94_in_iteration_statement1941 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_94_in_iteration_statement1941;
  }

  static BitSet _FOLLOW_30_in_iteration_statement1943 = null;
  static BitSet get FOLLOW_30_in_iteration_statement1943() {
    if(_FOLLOW_30_in_iteration_statement1943 == null) 
      _FOLLOW_30_in_iteration_statement1943 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_iteration_statement1943;
  }

  static BitSet _FOLLOW_expression_in_iteration_statement1945 = null;
  static BitSet get FOLLOW_expression_in_iteration_statement1945() {
    if(_FOLLOW_expression_in_iteration_statement1945 == null) 
      _FOLLOW_expression_in_iteration_statement1945 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_expression_in_iteration_statement1945;
  }

  static BitSet _FOLLOW_31_in_iteration_statement1947 = null;
  static BitSet get FOLLOW_31_in_iteration_statement1947() {
    if(_FOLLOW_31_in_iteration_statement1947 == null) 
      _FOLLOW_31_in_iteration_statement1947 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_31_in_iteration_statement1947;
  }

  static BitSet _FOLLOW_statement_in_iteration_statement1949 = null;
  static BitSet get FOLLOW_statement_in_iteration_statement1949() {
    if(_FOLLOW_statement_in_iteration_statement1949 == null) 
      _FOLLOW_statement_in_iteration_statement1949 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_iteration_statement1949;
  }

  static BitSet _FOLLOW_70_in_iteration_statement1954 = null;
  static BitSet get FOLLOW_70_in_iteration_statement1954() {
    if(_FOLLOW_70_in_iteration_statement1954 == null) 
      _FOLLOW_70_in_iteration_statement1954 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_70_in_iteration_statement1954;
  }

  static BitSet _FOLLOW_statement_in_iteration_statement1956 = null;
  static BitSet get FOLLOW_statement_in_iteration_statement1956() {
    if(_FOLLOW_statement_in_iteration_statement1956 == null) 
      _FOLLOW_statement_in_iteration_statement1956 = 
        new BitSet.fromList([0x0000000000000000,0x0000000040000000]);
    return _FOLLOW_statement_in_iteration_statement1956;
  }

  static BitSet _FOLLOW_94_in_iteration_statement1958 = null;
  static BitSet get FOLLOW_94_in_iteration_statement1958() {
    if(_FOLLOW_94_in_iteration_statement1958 == null) 
      _FOLLOW_94_in_iteration_statement1958 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_94_in_iteration_statement1958;
  }

  static BitSet _FOLLOW_30_in_iteration_statement1960 = null;
  static BitSet get FOLLOW_30_in_iteration_statement1960() {
    if(_FOLLOW_30_in_iteration_statement1960 == null) 
      _FOLLOW_30_in_iteration_statement1960 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_iteration_statement1960;
  }

  static BitSet _FOLLOW_expression_in_iteration_statement1962 = null;
  static BitSet get FOLLOW_expression_in_iteration_statement1962() {
    if(_FOLLOW_expression_in_iteration_statement1962 == null) 
      _FOLLOW_expression_in_iteration_statement1962 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_expression_in_iteration_statement1962;
  }

  static BitSet _FOLLOW_31_in_iteration_statement1964 = null;
  static BitSet get FOLLOW_31_in_iteration_statement1964() {
    if(_FOLLOW_31_in_iteration_statement1964 == null) 
      _FOLLOW_31_in_iteration_statement1964 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_31_in_iteration_statement1964;
  }

  static BitSet _FOLLOW_47_in_iteration_statement1966 = null;
  static BitSet get FOLLOW_47_in_iteration_statement1966() {
    if(_FOLLOW_47_in_iteration_statement1966 == null) 
      _FOLLOW_47_in_iteration_statement1966 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_iteration_statement1966;
  }

  static BitSet _FOLLOW_76_in_iteration_statement1971 = null;
  static BitSet get FOLLOW_76_in_iteration_statement1971() {
    if(_FOLLOW_76_in_iteration_statement1971 == null) 
      _FOLLOW_76_in_iteration_statement1971 = 
        new BitSet.fromList([0x0000000040000000]);
    return _FOLLOW_76_in_iteration_statement1971;
  }

  static BitSet _FOLLOW_30_in_iteration_statement1973 = null;
  static BitSet get FOLLOW_30_in_iteration_statement1973() {
    if(_FOLLOW_30_in_iteration_statement1973 == null) 
      _FOLLOW_30_in_iteration_statement1973 = 
        new BitSet.fromList([0x000080CD50942A50,0x0000001000200000]);
    return _FOLLOW_30_in_iteration_statement1973;
  }

  static BitSet _FOLLOW_expression_statement_in_iteration_statement1975 = null;
  static BitSet get FOLLOW_expression_statement_in_iteration_statement1975() {
    if(_FOLLOW_expression_statement_in_iteration_statement1975 == null) 
      _FOLLOW_expression_statement_in_iteration_statement1975 = 
        new BitSet.fromList([0x000080CD50942A50,0x0000001000200000]);
    return _FOLLOW_expression_statement_in_iteration_statement1975;
  }

  static BitSet _FOLLOW_expression_statement_in_iteration_statement1977 = null;
  static BitSet get FOLLOW_expression_statement_in_iteration_statement1977() {
    if(_FOLLOW_expression_statement_in_iteration_statement1977 == null) 
      _FOLLOW_expression_statement_in_iteration_statement1977 = 
        new BitSet.fromList([0x000000CDD0942A50,0x0000001000200000]);
    return _FOLLOW_expression_statement_in_iteration_statement1977;
  }

  static BitSet _FOLLOW_expression_in_iteration_statement1979 = null;
  static BitSet get FOLLOW_expression_in_iteration_statement1979() {
    if(_FOLLOW_expression_in_iteration_statement1979 == null) 
      _FOLLOW_expression_in_iteration_statement1979 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_expression_in_iteration_statement1979;
  }

  static BitSet _FOLLOW_31_in_iteration_statement1982 = null;
  static BitSet get FOLLOW_31_in_iteration_statement1982() {
    if(_FOLLOW_31_in_iteration_statement1982 == null) 
      _FOLLOW_31_in_iteration_statement1982 = 
        new BitSet.fromList([0x000080CD50942A50,0x00000010C1247073]);
    return _FOLLOW_31_in_iteration_statement1982;
  }

  static BitSet _FOLLOW_statement_in_iteration_statement1984 = null;
  static BitSet get FOLLOW_statement_in_iteration_statement1984() {
    if(_FOLLOW_statement_in_iteration_statement1984 == null) 
      _FOLLOW_statement_in_iteration_statement1984 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_statement_in_iteration_statement1984;
  }

  static BitSet _FOLLOW_77_in_jump_statement1995 = null;
  static BitSet get FOLLOW_77_in_jump_statement1995() {
    if(_FOLLOW_77_in_jump_statement1995 == null) 
      _FOLLOW_77_in_jump_statement1995 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_77_in_jump_statement1995;
  }

  static BitSet _FOLLOW_IDENTIFIER_in_jump_statement1997 = null;
  static BitSet get FOLLOW_IDENTIFIER_in_jump_statement1997() {
    if(_FOLLOW_IDENTIFIER_in_jump_statement1997 == null) 
      _FOLLOW_IDENTIFIER_in_jump_statement1997 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_IDENTIFIER_in_jump_statement1997;
  }

  static BitSet _FOLLOW_47_in_jump_statement1999 = null;
  static BitSet get FOLLOW_47_in_jump_statement1999() {
    if(_FOLLOW_47_in_jump_statement1999 == null) 
      _FOLLOW_47_in_jump_statement1999 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_jump_statement1999;
  }

  static BitSet _FOLLOW_68_in_jump_statement2004 = null;
  static BitSet get FOLLOW_68_in_jump_statement2004() {
    if(_FOLLOW_68_in_jump_statement2004 == null) 
      _FOLLOW_68_in_jump_statement2004 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_68_in_jump_statement2004;
  }

  static BitSet _FOLLOW_47_in_jump_statement2006 = null;
  static BitSet get FOLLOW_47_in_jump_statement2006() {
    if(_FOLLOW_47_in_jump_statement2006 == null) 
      _FOLLOW_47_in_jump_statement2006 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_jump_statement2006;
  }

  static BitSet _FOLLOW_64_in_jump_statement2011 = null;
  static BitSet get FOLLOW_64_in_jump_statement2011() {
    if(_FOLLOW_64_in_jump_statement2011 == null) 
      _FOLLOW_64_in_jump_statement2011 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_64_in_jump_statement2011;
  }

  static BitSet _FOLLOW_47_in_jump_statement2013 = null;
  static BitSet get FOLLOW_47_in_jump_statement2013() {
    if(_FOLLOW_47_in_jump_statement2013 == null) 
      _FOLLOW_47_in_jump_statement2013 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_jump_statement2013;
  }

  static BitSet _FOLLOW_82_in_jump_statement2018 = null;
  static BitSet get FOLLOW_82_in_jump_statement2018() {
    if(_FOLLOW_82_in_jump_statement2018 == null) 
      _FOLLOW_82_in_jump_statement2018 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_82_in_jump_statement2018;
  }

  static BitSet _FOLLOW_47_in_jump_statement2020 = null;
  static BitSet get FOLLOW_47_in_jump_statement2020() {
    if(_FOLLOW_47_in_jump_statement2020 == null) 
      _FOLLOW_47_in_jump_statement2020 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_jump_statement2020;
  }

  static BitSet _FOLLOW_82_in_jump_statement2025 = null;
  static BitSet get FOLLOW_82_in_jump_statement2025() {
    if(_FOLLOW_82_in_jump_statement2025 == null) 
      _FOLLOW_82_in_jump_statement2025 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_82_in_jump_statement2025;
  }

  static BitSet _FOLLOW_expression_in_jump_statement2027 = null;
  static BitSet get FOLLOW_expression_in_jump_statement2027() {
    if(_FOLLOW_expression_in_jump_statement2027 == null) 
      _FOLLOW_expression_in_jump_statement2027 = 
        new BitSet.fromList([0x0000800000000000]);
    return _FOLLOW_expression_in_jump_statement2027;
  }

  static BitSet _FOLLOW_47_in_jump_statement2029 = null;
  static BitSet get FOLLOW_47_in_jump_statement2029() {
    if(_FOLLOW_47_in_jump_statement2029 == null) 
      _FOLLOW_47_in_jump_statement2029 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_47_in_jump_statement2029;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_synpred2_t033backtracking100 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_synpred2_t033backtracking100() {
    if(_FOLLOW_declaration_specifiers_in_synpred2_t033backtracking100 == null) 
      _FOLLOW_declaration_specifiers_in_synpred2_t033backtracking100 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declaration_specifiers_in_synpred2_t033backtracking100;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_synpred4_t033backtracking100 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_synpred4_t033backtracking100() {
    if(_FOLLOW_declaration_specifiers_in_synpred4_t033backtracking100 == null) 
      _FOLLOW_declaration_specifiers_in_synpred4_t033backtracking100 = 
        new BitSet.fromList([0x0000000140002000]);
    return _FOLLOW_declaration_specifiers_in_synpred4_t033backtracking100;
  }

  static BitSet _FOLLOW_declarator_in_synpred4_t033backtracking103 = null;
  static BitSet get FOLLOW_declarator_in_synpred4_t033backtracking103() {
    if(_FOLLOW_declarator_in_synpred4_t033backtracking103 == null) 
      _FOLLOW_declarator_in_synpred4_t033backtracking103 = 
        new BitSet.fromList([0x8000000000002000,0x00000000BEDB8E8C]);
    return _FOLLOW_declarator_in_synpred4_t033backtracking103;
  }

  static BitSet _FOLLOW_declaration_in_synpred4_t033backtracking105 = null;
  static BitSet get FOLLOW_declaration_in_synpred4_t033backtracking105() {
    if(_FOLLOW_declaration_in_synpred4_t033backtracking105 == null) 
      _FOLLOW_declaration_in_synpred4_t033backtracking105 = 
        new BitSet.fromList([0x8000000000002000,0x00000000BEDB8E8C]);
    return _FOLLOW_declaration_in_synpred4_t033backtracking105;
  }

  static BitSet _FOLLOW_95_in_synpred4_t033backtracking108 = null;
  static BitSet get FOLLOW_95_in_synpred4_t033backtracking108() {
    if(_FOLLOW_95_in_synpred4_t033backtracking108 == null) 
      _FOLLOW_95_in_synpred4_t033backtracking108 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_95_in_synpred4_t033backtracking108;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_synpred5_t033backtracking140 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_synpred5_t033backtracking140() {
    if(_FOLLOW_declaration_specifiers_in_synpred5_t033backtracking140 == null) 
      _FOLLOW_declaration_specifiers_in_synpred5_t033backtracking140 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declaration_specifiers_in_synpred5_t033backtracking140;
  }

  static BitSet _FOLLOW_declaration_specifiers_in_synpred8_t033backtracking189 = null;
  static BitSet get FOLLOW_declaration_specifiers_in_synpred8_t033backtracking189() {
    if(_FOLLOW_declaration_specifiers_in_synpred8_t033backtracking189 == null) 
      _FOLLOW_declaration_specifiers_in_synpred8_t033backtracking189 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declaration_specifiers_in_synpred8_t033backtracking189;
  }

  static BitSet _FOLLOW_type_specifier_in_synpred12_t033backtracking235 = null;
  static BitSet get FOLLOW_type_specifier_in_synpred12_t033backtracking235() {
    if(_FOLLOW_type_specifier_in_synpred12_t033backtracking235 == null) 
      _FOLLOW_type_specifier_in_synpred12_t033backtracking235 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_type_specifier_in_synpred12_t033backtracking235;
  }

  static BitSet _FOLLOW_type_specifier_in_synpred35_t033backtracking515 = null;
  static BitSet get FOLLOW_type_specifier_in_synpred35_t033backtracking515() {
    if(_FOLLOW_type_specifier_in_synpred35_t033backtracking515 == null) 
      _FOLLOW_type_specifier_in_synpred35_t033backtracking515 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_type_specifier_in_synpred35_t033backtracking515;
  }

  static BitSet _FOLLOW_pointer_in_synpred45_t033backtracking668 = null;
  static BitSet get FOLLOW_pointer_in_synpred45_t033backtracking668() {
    if(_FOLLOW_pointer_in_synpred45_t033backtracking668 == null) 
      _FOLLOW_pointer_in_synpred45_t033backtracking668 = 
        new BitSet.fromList([0x0000000040002000]);
    return _FOLLOW_pointer_in_synpred45_t033backtracking668;
  }

  static BitSet _FOLLOW_direct_declarator_in_synpred45_t033backtracking671 = null;
  static BitSet get FOLLOW_direct_declarator_in_synpred45_t033backtracking671() {
    if(_FOLLOW_direct_declarator_in_synpred45_t033backtracking671 == null) 
      _FOLLOW_direct_declarator_in_synpred45_t033backtracking671 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_direct_declarator_in_synpred45_t033backtracking671;
  }

  static BitSet _FOLLOW_declarator_suffix_in_synpred47_t033backtracking720 = null;
  static BitSet get FOLLOW_declarator_suffix_in_synpred47_t033backtracking720() {
    if(_FOLLOW_declarator_suffix_in_synpred47_t033backtracking720 == null) 
      _FOLLOW_declarator_suffix_in_synpred47_t033backtracking720 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declarator_suffix_in_synpred47_t033backtracking720;
  }

  static BitSet _FOLLOW_30_in_synpred50_t033backtracking760 = null;
  static BitSet get FOLLOW_30_in_synpred50_t033backtracking760() {
    if(_FOLLOW_30_in_synpred50_t033backtracking760 == null) 
      _FOLLOW_30_in_synpred50_t033backtracking760 = 
        new BitSet.fromList([0x8000000000002000,0x000000003CDB8E8C]);
    return _FOLLOW_30_in_synpred50_t033backtracking760;
  }

  static BitSet _FOLLOW_parameter_type_list_in_synpred50_t033backtracking762 = null;
  static BitSet get FOLLOW_parameter_type_list_in_synpred50_t033backtracking762() {
    if(_FOLLOW_parameter_type_list_in_synpred50_t033backtracking762 == null) 
      _FOLLOW_parameter_type_list_in_synpred50_t033backtracking762 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_parameter_type_list_in_synpred50_t033backtracking762;
  }

  static BitSet _FOLLOW_31_in_synpred50_t033backtracking764 = null;
  static BitSet get FOLLOW_31_in_synpred50_t033backtracking764() {
    if(_FOLLOW_31_in_synpred50_t033backtracking764 == null) 
      _FOLLOW_31_in_synpred50_t033backtracking764 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_synpred50_t033backtracking764;
  }

  static BitSet _FOLLOW_30_in_synpred51_t033backtracking774 = null;
  static BitSet get FOLLOW_30_in_synpred51_t033backtracking774() {
    if(_FOLLOW_30_in_synpred51_t033backtracking774 == null) 
      _FOLLOW_30_in_synpred51_t033backtracking774 = 
        new BitSet.fromList([0x0000000000002000]);
    return _FOLLOW_30_in_synpred51_t033backtracking774;
  }

  static BitSet _FOLLOW_identifier_list_in_synpred51_t033backtracking776 = null;
  static BitSet get FOLLOW_identifier_list_in_synpred51_t033backtracking776() {
    if(_FOLLOW_identifier_list_in_synpred51_t033backtracking776 == null) 
      _FOLLOW_identifier_list_in_synpred51_t033backtracking776 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_identifier_list_in_synpred51_t033backtracking776;
  }

  static BitSet _FOLLOW_31_in_synpred51_t033backtracking778 = null;
  static BitSet get FOLLOW_31_in_synpred51_t033backtracking778() {
    if(_FOLLOW_31_in_synpred51_t033backtracking778 == null) 
      _FOLLOW_31_in_synpred51_t033backtracking778 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_31_in_synpred51_t033backtracking778;
  }

  static BitSet _FOLLOW_type_qualifier_in_synpred52_t033backtracking803 = null;
  static BitSet get FOLLOW_type_qualifier_in_synpred52_t033backtracking803() {
    if(_FOLLOW_type_qualifier_in_synpred52_t033backtracking803 == null) 
      _FOLLOW_type_qualifier_in_synpred52_t033backtracking803 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_type_qualifier_in_synpred52_t033backtracking803;
  }

  static BitSet _FOLLOW_pointer_in_synpred53_t033backtracking806 = null;
  static BitSet get FOLLOW_pointer_in_synpred53_t033backtracking806() {
    if(_FOLLOW_pointer_in_synpred53_t033backtracking806 == null) 
      _FOLLOW_pointer_in_synpred53_t033backtracking806 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_pointer_in_synpred53_t033backtracking806;
  }

  static BitSet _FOLLOW_32_in_synpred54_t033backtracking801 = null;
  static BitSet get FOLLOW_32_in_synpred54_t033backtracking801() {
    if(_FOLLOW_32_in_synpred54_t033backtracking801 == null) 
      _FOLLOW_32_in_synpred54_t033backtracking801 = 
        new BitSet.fromList([0x0000000000000000,0x0000000020000008]);
    return _FOLLOW_32_in_synpred54_t033backtracking801;
  }

  static BitSet _FOLLOW_type_qualifier_in_synpred54_t033backtracking803 = null;
  static BitSet get FOLLOW_type_qualifier_in_synpred54_t033backtracking803() {
    if(_FOLLOW_type_qualifier_in_synpred54_t033backtracking803 == null) 
      _FOLLOW_type_qualifier_in_synpred54_t033backtracking803 = 
        new BitSet.fromList([0x0000000100000002,0x0000000020000008]);
    return _FOLLOW_type_qualifier_in_synpred54_t033backtracking803;
  }

  static BitSet _FOLLOW_pointer_in_synpred54_t033backtracking806 = null;
  static BitSet get FOLLOW_pointer_in_synpred54_t033backtracking806() {
    if(_FOLLOW_pointer_in_synpred54_t033backtracking806 == null) 
      _FOLLOW_pointer_in_synpred54_t033backtracking806 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_pointer_in_synpred54_t033backtracking806;
  }

  static BitSet _FOLLOW_32_in_synpred55_t033backtracking812 = null;
  static BitSet get FOLLOW_32_in_synpred55_t033backtracking812() {
    if(_FOLLOW_32_in_synpred55_t033backtracking812 == null) 
      _FOLLOW_32_in_synpred55_t033backtracking812 = 
        new BitSet.fromList([0x0000000100000000]);
    return _FOLLOW_32_in_synpred55_t033backtracking812;
  }

  static BitSet _FOLLOW_pointer_in_synpred55_t033backtracking814 = null;
  static BitSet get FOLLOW_pointer_in_synpred55_t033backtracking814() {
    if(_FOLLOW_pointer_in_synpred55_t033backtracking814 == null) 
      _FOLLOW_pointer_in_synpred55_t033backtracking814 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_pointer_in_synpred55_t033backtracking814;
  }

  static BitSet _FOLLOW_declarator_in_synpred58_t033backtracking869 = null;
  static BitSet get FOLLOW_declarator_in_synpred58_t033backtracking869() {
    if(_FOLLOW_declarator_in_synpred58_t033backtracking869 == null) 
      _FOLLOW_declarator_in_synpred58_t033backtracking869 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declarator_in_synpred58_t033backtracking869;
  }

  static BitSet _FOLLOW_abstract_declarator_in_synpred59_t033backtracking871 = null;
  static BitSet get FOLLOW_abstract_declarator_in_synpred59_t033backtracking871() {
    if(_FOLLOW_abstract_declarator_in_synpred59_t033backtracking871 == null) 
      _FOLLOW_abstract_declarator_in_synpred59_t033backtracking871 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_abstract_declarator_in_synpred59_t033backtracking871;
  }

  static BitSet _FOLLOW_direct_abstract_declarator_in_synpred62_t033backtracking918 = null;
  static BitSet get FOLLOW_direct_abstract_declarator_in_synpred62_t033backtracking918() {
    if(_FOLLOW_direct_abstract_declarator_in_synpred62_t033backtracking918 == null) 
      _FOLLOW_direct_abstract_declarator_in_synpred62_t033backtracking918 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_direct_abstract_declarator_in_synpred62_t033backtracking918;
  }

  static BitSet _FOLLOW_abstract_declarator_suffix_in_synpred65_t033backtracking949 = null;
  static BitSet get FOLLOW_abstract_declarator_suffix_in_synpred65_t033backtracking949() {
    if(_FOLLOW_abstract_declarator_suffix_in_synpred65_t033backtracking949 == null) 
      _FOLLOW_abstract_declarator_suffix_in_synpred65_t033backtracking949 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_abstract_declarator_suffix_in_synpred65_t033backtracking949;
  }

  static BitSet _FOLLOW_30_in_synpred78_t033backtracking1121 = null;
  static BitSet get FOLLOW_30_in_synpred78_t033backtracking1121() {
    if(_FOLLOW_30_in_synpred78_t033backtracking1121 == null) 
      _FOLLOW_30_in_synpred78_t033backtracking1121 = 
        new BitSet.fromList([0x0000000000002000,0x000000003C998A8C]);
    return _FOLLOW_30_in_synpred78_t033backtracking1121;
  }

  static BitSet _FOLLOW_type_name_in_synpred78_t033backtracking1123 = null;
  static BitSet get FOLLOW_type_name_in_synpred78_t033backtracking1123() {
    if(_FOLLOW_type_name_in_synpred78_t033backtracking1123 == null) 
      _FOLLOW_type_name_in_synpred78_t033backtracking1123 = 
        new BitSet.fromList([0x0000000080000000]);
    return _FOLLOW_type_name_in_synpred78_t033backtracking1123;
  }

  static BitSet _FOLLOW_31_in_synpred78_t033backtracking1125 = null;
  static BitSet get FOLLOW_31_in_synpred78_t033backtracking1125() {
    if(_FOLLOW_31_in_synpred78_t033backtracking1125 == null) 
      _FOLLOW_31_in_synpred78_t033backtracking1125 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_31_in_synpred78_t033backtracking1125;
  }

  static BitSet _FOLLOW_cast_expression_in_synpred78_t033backtracking1127 = null;
  static BitSet get FOLLOW_cast_expression_in_synpred78_t033backtracking1127() {
    if(_FOLLOW_cast_expression_in_synpred78_t033backtracking1127 == null) 
      _FOLLOW_cast_expression_in_synpred78_t033backtracking1127 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_cast_expression_in_synpred78_t033backtracking1127;
  }

  static BitSet _FOLLOW_85_in_synpred83_t033backtracking1169 = null;
  static BitSet get FOLLOW_85_in_synpred83_t033backtracking1169() {
    if(_FOLLOW_85_in_synpred83_t033backtracking1169 == null) 
      _FOLLOW_85_in_synpred83_t033backtracking1169 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_85_in_synpred83_t033backtracking1169;
  }

  static BitSet _FOLLOW_unary_expression_in_synpred83_t033backtracking1171 = null;
  static BitSet get FOLLOW_unary_expression_in_synpred83_t033backtracking1171() {
    if(_FOLLOW_unary_expression_in_synpred83_t033backtracking1171 == null) 
      _FOLLOW_unary_expression_in_synpred83_t033backtracking1171 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_unary_expression_in_synpred83_t033backtracking1171;
  }

  static BitSet _FOLLOW_lvalue_in_synpred104_t033backtracking1483 = null;
  static BitSet get FOLLOW_lvalue_in_synpred104_t033backtracking1483() {
    if(_FOLLOW_lvalue_in_synpred104_t033backtracking1483 == null) 
      _FOLLOW_lvalue_in_synpred104_t033backtracking1483 = 
        new BitSet.fromList([0x4214211224000000,0x0000000200000000]);
    return _FOLLOW_lvalue_in_synpred104_t033backtracking1483;
  }

  static BitSet _FOLLOW_assignment_operator_in_synpred104_t033backtracking1485 = null;
  static BitSet get FOLLOW_assignment_operator_in_synpred104_t033backtracking1485() {
    if(_FOLLOW_assignment_operator_in_synpred104_t033backtracking1485 == null) 
      _FOLLOW_assignment_operator_in_synpred104_t033backtracking1485 = 
        new BitSet.fromList([0x000000CD50942A50,0x0000001000200000]);
    return _FOLLOW_assignment_operator_in_synpred104_t033backtracking1485;
  }

  static BitSet _FOLLOW_assignment_expression_in_synpred104_t033backtracking1487 = null;
  static BitSet get FOLLOW_assignment_expression_in_synpred104_t033backtracking1487() {
    if(_FOLLOW_assignment_expression_in_synpred104_t033backtracking1487 == null) 
      _FOLLOW_assignment_expression_in_synpred104_t033backtracking1487 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_assignment_expression_in_synpred104_t033backtracking1487;
  }

  static BitSet _FOLLOW_declaration_in_synpred136_t033backtracking1843 = null;
  static BitSet get FOLLOW_declaration_in_synpred136_t033backtracking1843() {
    if(_FOLLOW_declaration_in_synpred136_t033backtracking1843 == null) 
      _FOLLOW_declaration_in_synpred136_t033backtracking1843 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_declaration_in_synpred136_t033backtracking1843;
  }



 }

class _Symbols_scope {
  Set types;
}


class DFA52 extends DFA {

  DFA52(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 52;
    this.eot = t033backtrackingParser.DFA52_eot;
    this.eof = t033backtrackingParser.DFA52_eof;
    this.min = t033backtrackingParser.DFA52_min;
    this.max = t033backtrackingParser.DFA52_max;
    this.accept = t033backtrackingParser.DFA52_accept;
    this.special = t033backtrackingParser.DFA52_special;
    this.transition = t033backtrackingParser.DFA52_transition;
  }

  String get description() => 
        """357:1: assignment_expression : ( lvalue assignment_operator assignment_expression | 
conditional_expression );""";

  int specialStateTransition(int s, IntStream _input){
    TokenStream input = _input;
    int _s = s;
    switch(s) {
      case 0 :int LA52_8 = this.recognizer.dynamic.input.LA(1);

       
      int index52_8 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_8);

      if(s>=0) return s;
      break;
      case 1 :int LA52_9 = this.recognizer.dynamic.input.LA(1);

       
      int index52_9 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_9);

      if(s>=0) return s;
      break;
      case 2 :int LA52_10 = this.recognizer.dynamic.input.LA(1);

       
      int index52_10 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_10);

      if(s>=0) return s;
      break;
      case 3 :int LA52_11 = this.recognizer.dynamic.input.LA(1);

       
      int index52_11 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_11);

      if(s>=0) return s;
      break;
      case 4 :int LA52_12 = this.recognizer.dynamic.input.LA(1);

       
      int index52_12 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_12);

      if(s>=0) return s;
      break;
      case 5 :int LA52_13 = this.recognizer.dynamic.input.LA(1);

       
      int index52_13 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_13);

      if(s>=0) return s;
      break;
      case 6 :int LA52_36 = this.recognizer.dynamic.input.LA(1);

       
      int index52_36 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_36);

      if(s>=0) return s;
      break;
      case 7 :int LA52_37 = this.recognizer.dynamic.input.LA(1);

       
      int index52_37 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_37);

      if(s>=0) return s;
      break;
      case 8 :int LA52_38 = this.recognizer.dynamic.input.LA(1);

       
      int index52_38 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_38);

      if(s>=0) return s;
      break;
      case 9 :int LA52_39 = this.recognizer.dynamic.input.LA(1);

       
      int index52_39 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_39);

      if(s>=0) return s;
      break;
      case 10 :int LA52_40 = this.recognizer.dynamic.input.LA(1);

       
      int index52_40 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_40);

      if(s>=0) return s;
      break;
      case 11 :int LA52_41 = this.recognizer.dynamic.input.LA(1);

       
      int index52_41 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_41);

      if(s>=0) return s;
      break;
      case 12 :int LA52_64 = this.recognizer.dynamic.input.LA(1);

       
      int index52_64 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_64);

      if(s>=0) return s;
      break;
      case 13 :int LA52_65 = this.recognizer.dynamic.input.LA(1);

       
      int index52_65 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_65);

      if(s>=0) return s;
      break;
      case 14 :int LA52_66 = this.recognizer.dynamic.input.LA(1);

       
      int index52_66 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_66);

      if(s>=0) return s;
      break;
      case 15 :int LA52_67 = this.recognizer.dynamic.input.LA(1);

       
      int index52_67 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_67);

      if(s>=0) return s;
      break;
      case 16 :int LA52_68 = this.recognizer.dynamic.input.LA(1);

       
      int index52_68 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_68);

      if(s>=0) return s;
      break;
      case 17 :int LA52_69 = this.recognizer.dynamic.input.LA(1);

       
      int index52_69 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_69);

      if(s>=0) return s;
      break;
      case 18 :int LA52_70 = this.recognizer.dynamic.input.LA(1);

       
      int index52_70 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_70);

      if(s>=0) return s;
      break;
      case 19 :int LA52_83 = this.recognizer.dynamic.input.LA(1);

       
      int index52_83 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_83);

      if(s>=0) return s;
      break;
      case 20 :int LA52_84 = this.recognizer.dynamic.input.LA(1);

       
      int index52_84 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_84);

      if(s>=0) return s;
      break;
      case 21 :int LA52_85 = this.recognizer.dynamic.input.LA(1);

       
      int index52_85 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_85);

      if(s>=0) return s;
      break;
      case 22 :int LA52_86 = this.recognizer.dynamic.input.LA(1);

       
      int index52_86 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_86);

      if(s>=0) return s;
      break;
      case 23 :int LA52_87 = this.recognizer.dynamic.input.LA(1);

       
      int index52_87 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_87);

      if(s>=0) return s;
      break;
      case 24 :int LA52_88 = this.recognizer.dynamic.input.LA(1);

       
      int index52_88 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_88);

      if(s>=0) return s;
      break;
      case 25 :int LA52_89 = this.recognizer.dynamic.input.LA(1);

       
      int index52_89 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_89);

      if(s>=0) return s;
      break;
      case 26 :int LA52_90 = this.recognizer.dynamic.input.LA(1);

       
      int index52_90 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_90);

      if(s>=0) return s;
      break;
      case 27 :int LA52_91 = this.recognizer.dynamic.input.LA(1);

       
      int index52_91 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_91);

      if(s>=0) return s;
      break;
      case 28 :int LA52_92 = this.recognizer.dynamic.input.LA(1);

       
      int index52_92 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_92);

      if(s>=0) return s;
      break;
      case 29 :int LA52_93 = this.recognizer.dynamic.input.LA(1);

       
      int index52_93 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_93);

      if(s>=0) return s;
      break;
      case 30 :int LA52_94 = this.recognizer.dynamic.input.LA(1);

       
      int index52_94 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_94);

      if(s>=0) return s;
      break;
      case 31 :int LA52_95 = this.recognizer.dynamic.input.LA(1);

       
      int index52_95 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_95);

      if(s>=0) return s;
      break;
      case 32 :int LA52_96 = this.recognizer.dynamic.input.LA(1);

       
      int index52_96 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_96);

      if(s>=0) return s;
      break;
      case 33 :int LA52_97 = this.recognizer.dynamic.input.LA(1);

       
      int index52_97 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_97);

      if(s>=0) return s;
      break;
      case 34 :int LA52_98 = this.recognizer.dynamic.input.LA(1);

       
      int index52_98 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_98);

      if(s>=0) return s;
      break;
      case 35 :int LA52_99 = this.recognizer.dynamic.input.LA(1);

       
      int index52_99 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_99);

      if(s>=0) return s;
      break;
      case 36 :int LA52_100 = this.recognizer.dynamic.input.LA(1);

       
      int index52_100 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_100);

      if(s>=0) return s;
      break;
      case 37 :int LA52_101 = this.recognizer.dynamic.input.LA(1);

       
      int index52_101 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_101);

      if(s>=0) return s;
      break;
      case 38 :int LA52_102 = this.recognizer.dynamic.input.LA(1);

       
      int index52_102 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_102);

      if(s>=0) return s;
      break;
      case 39 :int LA52_103 = this.recognizer.dynamic.input.LA(1);

       
      int index52_103 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_103);

      if(s>=0) return s;
      break;
      case 40 :int LA52_104 = this.recognizer.dynamic.input.LA(1);

       
      int index52_104 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_104);

      if(s>=0) return s;
      break;
      case 41 :int LA52_105 = this.recognizer.dynamic.input.LA(1);

       
      int index52_105 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_105);

      if(s>=0) return s;
      break;
      case 42 :int LA52_106 = this.recognizer.dynamic.input.LA(1);

       
      int index52_106 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_106);

      if(s>=0) return s;
      break;
      case 43 :int LA52_107 = this.recognizer.dynamic.input.LA(1);

       
      int index52_107 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_107);

      if(s>=0) return s;
      break;
      case 44 :int LA52_108 = this.recognizer.dynamic.input.LA(1);

       
      int index52_108 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_108);

      if(s>=0) return s;
      break;
      case 45 :int LA52_109 = this.recognizer.dynamic.input.LA(1);

       
      int index52_109 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_109);

      if(s>=0) return s;
      break;
      case 46 :int LA52_110 = this.recognizer.dynamic.input.LA(1);

       
      int index52_110 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if(this.recognizer.dynamic.synpred104_t033backtracking()) {
        s = 14;
      }

      else if(true) {
        s = 15;
      }

       
      this.recognizer.dynamic.input.seek(index52_110);

      if(s>=0) return s;
      break;
    }
    if(this.recognizer.dynamic.state.backtracking > 0) {
      this.recognizer.dynamic.state.failed = true; 
      return -1;
    }
    NoViableAltException nvae = new NoViableAltException(this.description, 52, _s, this.recognizer.dynamic.input);
    this.recognizer.dynamic.error(nvae);
    throw nvae;
  }

}


class DFA64 extends DFA {

  DFA64(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 64;
    this.eot = t033backtrackingParser.DFA64_eot;
    this.eof = t033backtrackingParser.DFA64_eof;
    this.min = t033backtrackingParser.DFA64_min;
    this.max = t033backtrackingParser.DFA64_max;
    this.accept = t033backtrackingParser.DFA64_accept;
    this.special = t033backtrackingParser.DFA64_special;
    this.transition = t033backtrackingParser.DFA64_transition;
  }

  String get description() => 
        """()* loopback of 437:8: ( declaration )*""";

  int specialStateTransition(int s, IntStream _input){
    TokenStream input = _input;
    int _s = s;
    switch(s) {
      case 0 :int LA64_38 = this.recognizer.dynamic.input.LA(1);

       
      int index64_38 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if((((this.recognizer.dynamic.isTypeName(input.LT(1).text))&&(this.recognizer.dynamic.isTypeName(input.LT(1).text)))&&this.recognizer.dynamic.synpred136_t033backtracking())) {
        s = 22;
      }

      else if(true) {
        s = 2;
      }

       
      this.recognizer.dynamic.input.seek(index64_38);

      if(s>=0) return s;
      break;
      case 1 :int LA64_44 = this.recognizer.dynamic.input.LA(1);

       
      int index64_44 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if((((this.recognizer.dynamic.isTypeName(input.LT(1).text))&&(this.recognizer.dynamic.isTypeName(input.LT(1).text)))&&this.recognizer.dynamic.synpred136_t033backtracking())) {
        s = 22;
      }

      else if(true) {
        s = 2;
      }

       
      this.recognizer.dynamic.input.seek(index64_44);

      if(s>=0) return s;
      break;
      case 2 :int LA64_59 = this.recognizer.dynamic.input.LA(1);

       
      int index64_59 = this.recognizer.dynamic.input.index;
      this.recognizer.dynamic.input.rewind();

      s = -1;
      if((((this.recognizer.dynamic.isTypeName(input.LT(1).text))&&(this.recognizer.dynamic.isTypeName(input.LT(1).text)))&&this.recognizer.dynamic.synpred136_t033backtracking())) {
        s = 22;
      }

      else if(true) {
        s = 2;
      }

       
      this.recognizer.dynamic.input.seek(index64_59);

      if(s>=0) return s;
      break;
    }
    if(this.recognizer.dynamic.state.backtracking > 0) {
      this.recognizer.dynamic.state.failed = true; 
      return -1;
    }
    NoViableAltException nvae = new NoViableAltException(this.description, 64, _s, this.recognizer.dynamic.input);
    this.recognizer.dynamic.error(nvae);
    throw nvae;
  }

}


class _declaration_scope {
    bool isTypedef;
}




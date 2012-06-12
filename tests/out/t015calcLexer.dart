// $ANTLR 3.4 t015calcLexer.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t015calcLexer extends Lexer {

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int T__12 = 12;
  static final int T__13 = 13;
  static final int T__14 = 14;
  static final int T__15 = 15;
  static final int T__16 = 16;
  static final int T__17 = 17;
  static final int DECIMAL = 4;
  static final int DIGIT = 5;
  static final int INTEGER = 6;
  static final int WS = 7;  
  

  Map<String, DFA> dfas;

  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t015calcLexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa5"] = new DFA5(this);
  }

  t015calcLexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
    this.dfas = new Map<String, DFA>();
    this.dfas["dfa5"] = new DFA5(this);
  }

  String get grammarFileName() => "t015calc.g";

  String getRecognizerClassName() => "t015calcLexer";
  
  // $ANTLR start "T__8"
  void mT__8() {
    try {
  	  int _type = T__8;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   7:6: ( '(' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   7:8: '('*/
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
  // $ANTLR end "T__8"

  // $ANTLR start "T__9"
  void mT__9() {
    try {
  	  int _type = T__9;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   8:6: ( ')' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   8:8: ')'*/
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
  // $ANTLR end "T__9"

  // $ANTLR start "T__10"
  void mT__10() {
    try {
  	  int _type = T__10;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   9:7: ( '*' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   9:9: '*'*/
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
  // $ANTLR end "T__10"

  // $ANTLR start "T__11"
  void mT__11() {
    try {
  	  int _type = T__11;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   10:7: ( '+' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   10:9: '+'*/
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
  // $ANTLR end "T__11"

  // $ANTLR start "T__12"
  void mT__12() {
    try {
  	  int _type = T__12;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   11:7: ( '-' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   11:9: '-'*/
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
  // $ANTLR end "T__12"

  // $ANTLR start "T__13"
  void mT__13() {
    try {
  	  int _type = T__13;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   12:7: ( '/' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   12:9: '/'*/
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
  // $ANTLR end "T__13"

  // $ANTLR start "T__14"
  void mT__14() {
    try {
  	  int _type = T__14;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   13:7: ( 'E' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   13:9: 'E'*/
  	  {
  	  	this.match(69 /*'E'*/); 


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__14"

  // $ANTLR start "T__15"
  void mT__15() {
    try {
  	  int _type = T__15;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   14:7: ( 'PI' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   14:9: 'PI'*/
  	  {
  	  	this.match("PI"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__15"

  // $ANTLR start "T__16"
  void mT__16() {
    try {
  	  int _type = T__16;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   15:7: ( '^' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   15:9: '^'*/
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
  // $ANTLR end "T__16"

  // $ANTLR start "T__17"
  void mT__17() {
    try {
  	  int _type = T__17;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   16:7: ( 'ln' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   16:9: 'ln'*/
  	  {
  	  	this.match("ln"); 




  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "T__17"

  // $ANTLR start "INTEGER"
  void mINTEGER() {
    try {
  	  int _type = INTEGER;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   33:8: ( ( DIGIT )+ )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   33:10: ( DIGIT )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t015calc.g:
  	  	 33:10: ( DIGIT )+*/
  	  	int cnt1 = 0;
  	  	loop1:
  	  	do {
  	  	  int alt1 = 2;
  	  	  int LA1_0 = this.input.LA(1);

  	  	  if(((LA1_0 >= 48 /*'0'*/ && LA1_0 <= 57 /*'9'*/))) {
  	  	    alt1 = 1;
  	  	  }


  	  	  switch (alt1) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t015calc.g:
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
  // $ANTLR end "INTEGER"

  // $ANTLR start "DECIMAL"
  void mDECIMAL() {
    try {
  	  int _type = DECIMAL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   35:8: ( ( DIGIT )+ '.' ( DIGIT )+ )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   35:10: ( DIGIT )+ '.' ( DIGIT )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t015calc.g:
  	  	 35:10: ( DIGIT )+*/
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
  	  			  /* ../runtime/dart/tests/grammars/t015calc.g:
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


  	  	this.match(46 /*'.'*/); 


  	  	/* ../runtime/dart/tests/grammars/t015calc.g:
  	  	 35:21: ( DIGIT )+*/
  	  	int cnt3 = 0;
  	  	loop3:
  	  	do {
  	  	  int alt3 = 2;
  	  	  int LA3_0 = this.input.LA(1);

  	  	  if(((LA3_0 >= 48 /*'0'*/ && LA3_0 <= 57 /*'9'*/))) {
  	  	    alt3 = 1;
  	  	  }


  	  	  switch (alt3) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t015calc.g:
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
  	  		    if(cnt3 >= 1) break loop3;
  	  	        EarlyExitException eee = new EarlyExitException(3, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt3++;
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "DECIMAL"

  // $ANTLR start "DIGIT"
  void mDIGIT() {
    try {
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   39:6: ( '0' .. '9' )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
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


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "DIGIT"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   40:3: ( ( ' ' | '\\n' | '\\t' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t015calc.g:
  	   40:5: ( ' ' | '\\n' | '\\t' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t015calc.g:
  	  	 40:5: ( ' ' | '\\n' | '\\t' )+*/
  	  	int cnt4 = 0;
  	  	loop4:
  	  	do {
  	  	  int alt4 = 2;
  	  	  int LA4_0 = this.input.LA(1);

  	  	  if(((LA4_0 >= 9 /*'\t'*/ && LA4_0 <= 10 /*'\n'*/)
  	  	    || LA4_0 == 32/*32 /*' '*/*/)) {
  	  	    alt4 = 1;
  	  	  }


  	  	  switch (alt4) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t015calc.g:
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
  	  		    if(cnt4 >= 1) break loop4;
  	  	        EarlyExitException eee = new EarlyExitException(4, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt4++;
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
    /* ../runtime/dart/tests/grammars/t015calc.g: 
     1:8: ( T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | 
     T__15 | T__16 | T__17 | INTEGER | DECIMAL | WS )*/
    int alt5 = 13;
    alt5 = this.dfas["dfa5"].predict(this.input);
    switch (alt5) {
      case 1 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:10: T__8*/
        {
        	this.mT__8(); 


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:15: T__9*/
        {
        	this.mT__9(); 


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:20: T__10*/
        {
        	this.mT__10(); 


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:26: T__11*/
        {
        	this.mT__11(); 


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:32: T__12*/
        {
        	this.mT__12(); 


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:38: T__13*/
        {
        	this.mT__13(); 


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:44: T__14*/
        {
        	this.mT__14(); 


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:50: T__15*/
        {
        	this.mT__15(); 


        }
        break;
      case 9 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:56: T__16*/
        {
        	this.mT__16(); 


        }
        break;
      case 10 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:62: T__17*/
        {
        	this.mT__17(); 


        }
        break;
      case 11 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:68: INTEGER*/
        {
        	this.mINTEGER(); 


        }
        break;
      case 12 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:76: DECIMAL*/
        {
        	this.mDECIMAL(); 


        }
        break;
      case 13 :
        /* ../runtime/dart/tests/grammars/t015calc.g:
         1:84: WS*/
        {
        	this.mWS(); 


        }
        break;

    }

  }  

  static final String DFA5_eotS =
      "\u000b\uffff\u0001\u000d\u0003\uffff";
  static final String DFA5_eofS =
      "\u000f\uffff";
  static final String DFA5_minS =
      "\u0001\u0009\u000a\uffff\u0001\u002e\u0003\uffff";
  static final String DFA5_maxS =
      "\u0001\u006c\u000a\uffff\u0001\u0039\u0003\uffff";
  static final String DFA5_acceptS =
      "\u0001\uffff\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001"
      "\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\u0009\u0001\u000a"
      "\u0001\uffff\u0001\u000d\u0001\u000b\u0001\u000c";
  static final String DFA5_specialS =
      "\u000f\uffff";
  static final List<String> DFA5_transitionS = const [
      "\u0002\u000c\u0015\uffff\u0001\u000c\u0007\uffff\u0001\u0001\u0001"
      "\u0002\u0001\u0003\u0001\u0004\u0001\uffff\u0001\u0005\u0001\uffff"
      "\u0001\u0006\u000a\u000b\u000b\uffff\u0001\u0007\u000a\uffff\u0001"
      "\u0008\u000d\uffff\u0001\u0009\u000d\uffff\u0001\u000a",
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
      "\u0001\u000e\u0001\uffff\u000a\u000b",
      "",
      "",
      ""
  ];

  static List<int> _DFA5_eot = null; 
  static List<int> get DFA5_eot() {
    if(_DFA5_eot == null)
      _DFA5_eot = 
        DFA.unpackEncodedString(DFA5_eotS);
    return _DFA5_eot;
  }

  static List<int> _DFA5_eof = null;
  static List<int> get DFA5_eof() {
    if(_DFA5_eof == null)
      _DFA5_eof = 
        DFA.unpackEncodedString(DFA5_eofS);
    return _DFA5_eof;
  }

  static List<int> _DFA5_min = null;
  static List<int> get DFA5_min() {
    if(_DFA5_min == null)
      _DFA5_min = 
        DFA.unpackEncodedStringToUnsignedChars(DFA5_minS);
    return _DFA5_min;
  }

  static List<int> _DFA5_max = null;
  static List<int> get DFA5_max() {
    if(_DFA5_max == null)
      _DFA5_max = 
        DFA.unpackEncodedStringToUnsignedChars(DFA5_maxS);
    return _DFA5_max;
  }

  static List<int> _DFA5_accept = null;
  static List<int> get DFA5_accept() {
    if(_DFA5_accept == null)
      _DFA5_accept = 
        DFA.unpackEncodedString(DFA5_acceptS);
    return _DFA5_accept;
  }

  static List<int> _DFA5_special = null;
  static List<int> get DFA5_special() {
    if(_DFA5_special == null)
      _DFA5_special = 
        DFA.unpackEncodedString(DFA5_specialS);
    return _DFA5_special;
  }

  static List<List<int>> _DFA5_transition = null;
  static List<List<int>> get DFA5_transition() {
    if(_DFA5_transition == null) {
      int numStates = DFA5_transitionS.length;
      _DFA5_transition = new List<List<int>>(numStates);
      for (int i = 0; i < numStates; i++)
          _DFA5_transition[i] = 
            DFA.unpackEncodedString(DFA5_transitionS[i]);
    }
    return _DFA5_transition;
  }  
}


class DFA5 extends DFA {

  DFA5(BaseRecognizer recognizer) : super(recognizer) {        
    this.decisionNumber = 5;
    this.eot = t015calcLexer.DFA5_eot;
    this.eof = t015calcLexer.DFA5_eof;
    this.min = t015calcLexer.DFA5_min;
    this.max = t015calcLexer.DFA5_max;
    this.accept = t015calcLexer.DFA5_accept;
    this.special = t015calcLexer.DFA5_special;
    this.transition = t015calcLexer.DFA5_transition;
  }

  String get description() => 
        """1:1: Tokens : ( T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | 
T__14 | T__15 | T__16 | T__17 | INTEGER | DECIMAL | WS );""";

}

// $ANTLR 3.4 t019lexer.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t019lexer extends Lexer {

  static final int EOF = -1;
  static final int ARG = 4;
  static final int CHAR = 5;
  static final int CLASS = 6;
  static final int COMMENT = 7;
  static final int ESC = 8;
  static final int ID = 9;
  static final int IMPORT = 10;
  static final int QID = 11;
  static final int QIDStar = 12;
  static final int RETURN = 13;
  static final int STRING = 14;
  static final int TYPE = 15;
  static final int WS = 16;  
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t019lexer([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {
  }

  t019lexer.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {
  }

  String get grammarFileName() => "t019lexer.g";

  String getRecognizerClassName() => "t019lexer";
  Token nextToken() {
    while (true) {
      if(this.input.LA(1) == CharStream.EOF) {
         Token eof = new CommonToken.fromCharStream(this.input, Token.EOF, 
                   Token.DEFAULT_CHANNEL, this.input.index, this.input.index);
         eof.line = this.line;
         eof.charPositionInLine = this.charPositionInLine;
         return eof;
      }
      this.state.token = null;
      this.state.channel = Token.DEFAULT_CHANNEL;
      this.state.tokenStartCharIndex = this.input.index;
      this.state.tokenStartCharPositionInLine = this.input.charPositionInLine;
      this.state.tokenStartLine = this.input.line;
      this.state.text = null;
      try {
        int m = this.input.mark();
        this.state.backtracking = 1;
        this.state.failed = false;
        this.mTokens();
        this.state.backtracking = 0;
        if(this.state.failed) {
          this.input.rewind(m);
          this.input.consume();
        } else {
          this.emit();
          return this.state.token;
        }
  		}catch(RecognitionException re) {
  		   this.reportError(re);
  		   this.recover(re);
  		}
    }
  }

  void memoize(IntStream input,
  		int ruleIndex,
  		int ruleStartIndex) {
  	if(state.backtracking > 1) 
  	  super.memoize(input, ruleIndex, ruleStartIndex);
  }

  bool alreadyParsedRule(IntStream input, int ruleIndex) {
  	if(state.backtracking > 1) 
  	  return super.alreadyParsedRule(input, ruleIndex);
  	return false;
  }
  
  // $ANTLR start "IMPORT"
  void mIMPORT() {
    try {
  	  int _type = IMPORT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   8:2: ( 'import' WS name= QIDStar ( WS )? ';' )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   8:4: 'import' WS name= QIDStar ( WS )? ';'*/
  	  {
  	  	this.match("import"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	int nameStart41 = this.charIndex;
  	  	int nameStartLine41 = this.line;
  	  	int nameStartCharPos41 = this.charPositionInLine;
  	  	this.mQIDStar(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart41, this.charIndex-1);
  	  	name.line = nameStartLine41;
  	  	name.charPositionInLine = nameStartCharPos41;


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 8:29: ( WS )?*/
  	  	int alt1 = 2;
  	  	int LA1_0 = this.input.LA(1);

  	  	if(((LA1_0 >= 9 /*'\t'*/ && LA1_0 <= 10 /*'\n'*/)
  	  	  || LA1_0 == 32/*32 /*' '*/*/)) {
  	  	  alt1 = 1;
  	  	}
  	  	switch (alt1) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	     8:29: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(59 /*';'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "IMPORT"

  // $ANTLR start "RETURN"
  void mRETURN() {
    try {
  	  int _type = RETURN;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   13:2: ( 'return' ( options {greedy=false; } : . )* ';' )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   13:4: 'return' ( options {greedy=false; } : . )* ';'*/
  	  {
  	  	this.match("return"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 13:13: ( options {greedy=false; } : . )**/
  	  	loop2:
  	  	do {
  	  	  int alt2 = 2;
  	  	  int LA2_0 = this.input.LA(1);

  	  	  if((LA2_0 == 59/*59 /*';'*/*/)) {
  	  	    alt2 = 2;
  	  	  }
  	  	  else if(((LA2_0 >= 0 /*'\u0000'*/ && LA2_0 <= 58 /*':'*/)
  	  	    || (LA2_0 >= 60 /*'<'*/ && LA2_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt2 = 1;
  	  	  }


  	  	  switch (alt2) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   13:38: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop2;
  	  	  }
  	  	} while(true);


  	  	this.match(59 /*';'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "RETURN"

  // $ANTLR start "CLASS"
  void mCLASS() {
    try {
  	  int _type = CLASS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   17:2: ( 'class' WS name= ID ( WS )? ( 'extends' WS QID ( WS )? )? ( 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )? '{' )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   17:4: 'class' WS name= ID ( WS )? ( 'extends' WS QID ( WS )? )? ( 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )? '{'*/
  	  {
  	  	this.match("class"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	int nameStart91 = this.charIndex;
  	  	int nameStartLine91 = this.line;
  	  	int nameStartCharPos91 = this.charPositionInLine;
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart91, this.charIndex-1);
  	  	name.line = nameStartLine91;
  	  	name.charPositionInLine = nameStartCharPos91;


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 17:23: ( WS )?*/
  	  	int alt3 = 2;
  	  	int LA3_0 = this.input.LA(1);

  	  	if(((LA3_0 >= 9 /*'\t'*/ && LA3_0 <= 10 /*'\n'*/)
  	  	  || LA3_0 == 32/*32 /*' '*/*/)) {
  	  	  alt3 = 1;
  	  	}
  	  	switch (alt3) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	     17:23: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 17:27: ( 'extends' WS QID ( WS )? )?*/
  	  	int alt5 = 2;
  	  	int LA5_0 = this.input.LA(1);

  	  	if((LA5_0 == 101/*101 /*'e'*/*/)) {
  	  	  alt5 = 1;
  	  	}
  	  	switch (alt5) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	     17:28: 'extends' WS QID ( WS )?*/
  	  	    {
  	  	    	this.match("extends"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	this.mQID(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    	 17:45: ( WS )?*/
  	  	    	int alt4 = 2;
  	  	    	int LA4_0 = this.input.LA(1);

  	  	    	if(((LA4_0 >= 9 /*'\t'*/ && LA4_0 <= 10 /*'\n'*/)
  	  	    	  || LA4_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt4 = 1;
  	  	    	}
  	  	    	switch (alt4) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    	     17:45: WS*/
  	  	    	    {
  	  	    	    	this.mWS(); 
  	  	    	    	if(this.state.failed) 
  	  	    	    	  return ;


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 18:3: ( 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )?*/
  	  	int alt10 = 2;
  	  	int LA10_0 = this.input.LA(1);

  	  	if((LA10_0 == 105/*105 /*'i'*/*/)) {
  	  	  alt10 = 1;
  	  	}
  	  	switch (alt10) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	     18:4: 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )**/
  	  	    {
  	  	    	this.match("implements"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	this.mQID(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    	 18:24: ( WS )?*/
  	  	    	int alt6 = 2;
  	  	    	int LA6_0 = this.input.LA(1);

  	  	    	if(((LA6_0 >= 9 /*'\t'*/ && LA6_0 <= 10 /*'\n'*/)
  	  	    	  || LA6_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt6 = 1;
  	  	    	}
  	  	    	switch (alt6) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    	     18:24: WS*/
  	  	    	    {
  	  	    	    	this.mWS(); 
  	  	    	    	if(this.state.failed) 
  	  	    	    	  return ;


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    	 18:28: ( ',' ( WS )? QID ( WS )? )**/
  	  	    	loop9:
  	  	    	do {
  	  	    	  int alt9 = 2;
  	  	    	  int LA9_0 = this.input.LA(1);

  	  	    	  if((LA9_0 == 44/*44 /*','*/*/)) {
  	  	    	    alt9 = 1;
  	  	    	  }


  	  	    	  switch (alt9) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    			   18:29: ',' ( WS )? QID ( WS )?*/
  	  	    			  {
  	  	    			  	this.match(44 /*','*/); 
  	  	    			  	if(this.state.failed) 
  	  	    			  	  return ;

  	  	    			  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    			  	 18:33: ( WS )?*/
  	  	    			  	int alt7 = 2;
  	  	    			  	int LA7_0 = this.input.LA(1);

  	  	    			  	if(((LA7_0 >= 9 /*'\t'*/ && LA7_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA7_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt7 = 1;
  	  	    			  	}
  	  	    			  	switch (alt7) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    			  	     18:33: WS*/
  	  	    			  	    {
  	  	    			  	    	this.mWS(); 
  	  	    			  	    	if(this.state.failed) 
  	  	    			  	    	  return ;


  	  	    			  	    }
  	  	    			  	    break;

  	  	    			  	}


  	  	    			  	this.mQID(); 
  	  	    			  	if(this.state.failed) 
  	  	    			  	  return ;


  	  	    			  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    			  	 18:41: ( WS )?*/
  	  	    			  	int alt8 = 2;
  	  	    			  	int LA8_0 = this.input.LA(1);

  	  	    			  	if(((LA8_0 >= 9 /*'\t'*/ && LA8_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA8_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt8 = 1;
  	  	    			  	}
  	  	    			  	switch (alt8) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	    			  	     18:41: WS*/
  	  	    			  	    {
  	  	    			  	    	this.mWS(); 
  	  	    			  	    	if(this.state.failed) 
  	  	    			  	    	  return ;


  	  	    			  	    }
  	  	    			  	    break;

  	  	    			  	}


  	  	    			  }
  	  	    			  break;

  	  	    			default :
  	  	    		    break loop9;
  	  	    	  }
  	  	    	} while(true);


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(123 /*'{'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CLASS"

  // $ANTLR start "COMMENT"
  void mCOMMENT() {
    try {
  	  int _type = COMMENT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   22:5: ( '/*' ( options {greedy=false; } : . )* '*/' )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   22:9: '/*' ( options {greedy=false; } : . )* '*/'*/
  	  {
  	  	this.match("/*"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 22:14: ( options {greedy=false; } : . )**/
  	  	loop11:
  	  	do {
  	  	  int alt11 = 2;
  	  	  int LA11_0 = this.input.LA(1);

  	  	  if((LA11_0 == 42/*42 /*'*'*/*/)) {
  	  	    int LA11_1 = this.input.LA(2);

  	  	    if((LA11_1 == 47/*47 /*'/'*/*/)) {
  	  	      alt11 = 2;
  	  	    }
  	  	    else if(((LA11_1 >= 0 /*'\u0000'*/ && LA11_1 <= 46 /*'.'*/)
  	  	      || (LA11_1 >= 48 /*'0'*/ && LA11_1 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt11 = 1;
  	  	    }


  	  	  }
  	  	  else if(((LA11_0 >= 0 /*'\u0000'*/ && LA11_0 <= 41 /*')'*/)
  	  	    || (LA11_0 >= 43 /*'+'*/ && LA11_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt11 = 1;
  	  	  }


  	  	  switch (alt11) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   22:41: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop11;
  	  	  }
  	  	} while(true);


  	  	this.match("*/"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "COMMENT"

  // $ANTLR start "STRING"
  void mSTRING() {
    try {
  	  int _type = STRING;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   26:5: ( '\"' ( options {greedy=false; } : ESC | . )* '\"' )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   26:7: '\"' ( options {greedy=false; } : ESC | . )* '\"'*/
  	  {
  	  	this.match(34 /*'\"'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 26:11: ( options {greedy=false; } : ESC | . )**/
  	  	loop12:
  	  	do {
  	  	  int alt12 = 3;
  	  	  int LA12_0 = this.input.LA(1);

  	  	  if((LA12_0 == 34/*34 /*'\"'*/*/)) {
  	  	    alt12 = 3;
  	  	  }
  	  	  else if((LA12_0 == 92/*92 /*'\\'*/*/)) {
  	  	    int LA12_2 = this.input.LA(2);

  	  	    if((LA12_2 == 34/*34 /*'\"'*/*/)) {
  	  	      alt12 = 1;
  	  	    }
  	  	    else if((LA12_2 == 92/*92 /*'\\'*/*/)) {
  	  	      alt12 = 1;
  	  	    }
  	  	    else if((LA12_2 == 39/*39 /*'\''*/*/)) {
  	  	      alt12 = 1;
  	  	    }
  	  	    else if(((LA12_2 >= 0 /*'\u0000'*/ && LA12_2 <= 33 /*'!'*/)
  	  	      || (LA12_2 >= 35 /*'#'*/ && LA12_2 <= 38 /*'&'*/)
  	  	      || (LA12_2 >= 40 /*'('*/ && LA12_2 <= 91 /*'['*/)
  	  	      || (LA12_2 >= 93 /*']'*/ && LA12_2 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt12 = 2;
  	  	    }


  	  	  }
  	  	  else if(((LA12_0 >= 0 /*'\u0000'*/ && LA12_0 <= 33 /*'!'*/)
  	  	    || (LA12_0 >= 35 /*'#'*/ && LA12_0 <= 91 /*'['*/)
  	  	    || (LA12_0 >= 93 /*']'*/ && LA12_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt12 = 2;
  	  	  }


  	  	  switch (alt12) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   26:37: ESC*/
  	  			  {
  	  			  	this.mESC(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   26:43: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop12;
  	  	  }
  	  	} while(true);


  	  	this.match(34 /*'\"'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "STRING"

  // $ANTLR start "CHAR"
  void mCHAR() {
    try {
  	  int _type = CHAR;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   30:2: ( '\\'' ( options {greedy=false; } : ESC | . )* '\\'' )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   30:4: '\\'' ( options {greedy=false; } : ESC | . )* '\\''*/
  	  {
  	  	this.match(39 /*'\''*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 30:9: ( options {greedy=false; } : ESC | . )**/
  	  	loop13:
  	  	do {
  	  	  int alt13 = 3;
  	  	  int LA13_0 = this.input.LA(1);

  	  	  if((LA13_0 == 39/*39 /*'\''*/*/)) {
  	  	    alt13 = 3;
  	  	  }
  	  	  else if((LA13_0 == 92/*92 /*'\\'*/*/)) {
  	  	    int LA13_2 = this.input.LA(2);

  	  	    if((LA13_2 == 39/*39 /*'\''*/*/)) {
  	  	      alt13 = 1;
  	  	    }
  	  	    else if((LA13_2 == 92/*92 /*'\\'*/*/)) {
  	  	      alt13 = 1;
  	  	    }
  	  	    else if((LA13_2 == 34/*34 /*'\"'*/*/)) {
  	  	      alt13 = 1;
  	  	    }
  	  	    else if(((LA13_2 >= 0 /*'\u0000'*/ && LA13_2 <= 33 /*'!'*/)
  	  	      || (LA13_2 >= 35 /*'#'*/ && LA13_2 <= 38 /*'&'*/)
  	  	      || (LA13_2 >= 40 /*'('*/ && LA13_2 <= 91 /*'['*/)
  	  	      || (LA13_2 >= 93 /*']'*/ && LA13_2 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt13 = 2;
  	  	    }


  	  	  }
  	  	  else if(((LA13_0 >= 0 /*'\u0000'*/ && LA13_0 <= 38 /*'&'*/)
  	  	    || (LA13_0 >= 40 /*'('*/ && LA13_0 <= 91 /*'['*/)
  	  	    || (LA13_0 >= 93 /*']'*/ && LA13_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt13 = 2;
  	  	  }


  	  	  switch (alt13) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   30:35: ESC*/
  	  			  {
  	  			  	this.mESC(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   30:41: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop13;
  	  	  }
  	  	} while(true);


  	  	this.match(39 /*'\''*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CHAR"

  // $ANTLR start "WS"
  void mWS() {
    try {
  	  int _type = WS;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   33:5: ( ( ' ' | '\\t' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   33:9: ( ' ' | '\\t' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 33:9: ( ' ' | '\\t' | '\\n' )+*/
  	  	int cnt14 = 0;
  	  	loop14:
  	  	do {
  	  	  int alt14 = 2;
  	  	  int LA14_0 = this.input.LA(1);

  	  	  if(((LA14_0 >= 9 /*'\t'*/ && LA14_0 <= 10 /*'\n'*/)
  	  	    || LA14_0 == 32/*32 /*' '*/*/)) {
  	  	    alt14 = 1;
  	  	  }


  	  	  switch (alt14) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 9 /*'\t'*/ && this.input.LA(1) <= 10 /*'\n'*/)
  	  			  	  || this.input.LA(1) == 32 /*' '*/) {
  	  			  	  this.input.consume();
  	  			  	  this.state.failed = false;
  	  			  	}
  	  			  	else {
  	  			  	  if(this.state.backtracking > 0) {
  	  			  	    this.state.failed = true; 
  	  			  	    return ;
  	  			  	  }
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    if(cnt14 >= 1) break loop14;
  	  		      if(this.state.backtracking > 0) {
  	  		        this.state.failed = true; 
  	  		        return ;
  	  		      }
  	  	        EarlyExitException eee = new EarlyExitException(14, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt14++;
  	  	} while(true);


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "WS"

  // $ANTLR start "QID"
  void mQID() {
    try {
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   37:5: ( ID ( '.' ID )* )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   37:7: ID ( '.' ID )**/
  	  {
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 37:10: ( '.' ID )**/
  	  	loop15:
  	  	do {
  	  	  int alt15 = 2;
  	  	  int LA15_0 = this.input.LA(1);

  	  	  if((LA15_0 == 46/*46 /*'.'*/*/)) {
  	  	    alt15 = 1;
  	  	  }


  	  	  switch (alt15) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   37:11: '.' ID*/
  	  			  {
  	  			  	this.match(46 /*'.'*/); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  	this.mID(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop15;
  	  	  }
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "QID"

  // $ANTLR start "QIDStar"
  void mQIDStar() {
    try {
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   46:2: ( ID ( '.' ID )* ( '.*' )? )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   46:4: ID ( '.' ID )* ( '.*' )?*/
  	  {
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 46:7: ( '.' ID )**/
  	  	loop16:
  	  	do {
  	  	  int alt16 = 2;
  	  	  int LA16_0 = this.input.LA(1);

  	  	  if((LA16_0 == 46/*46 /*'.'*/*/)) {
  	  	    int LA16_1 = this.input.LA(2);

  	  	    if(((LA16_1 >= 65 /*'A'*/ && LA16_1 <= 90 /*'Z'*/)
  	  	      || LA16_1 == 95/*95 /*'_'*/*/
  	  	      || (LA16_1 >= 97 /*'a'*/ && LA16_1 <= 122 /*'z'*/))) {
  	  	      alt16 = 1;
  	  	    }


  	  	  }


  	  	  switch (alt16) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			   46:8: '.' ID*/
  	  			  {
  	  			  	this.match(46 /*'.'*/); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  	this.mID(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop16;
  	  	  }
  	  	} while(true);


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 46:17: ( '.*' )?*/
  	  	int alt17 = 2;
  	  	int LA17_0 = this.input.LA(1);

  	  	if((LA17_0 == 46/*46 /*'.'*/*/)) {
  	  	  alt17 = 1;
  	  	}
  	  	switch (alt17) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	     46:17: '.*'*/
  	  	    {
  	  	    	this.match(".*"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;

  	  	}


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "QIDStar"

  // $ANTLR start "TYPE"
  void mTYPE() {
    try {
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   50:5: ( QID ( '[]' )? )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   50:9: QID ( '[]' )?*/
  	  {
  	  	this.mQID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 50:13: ( '[]' )?*/
  	  	int alt18 = 2;
  	  	int LA18_0 = this.input.LA(1);

  	  	if((LA18_0 == 91/*91 /*'['*/*/)) {
  	  	  alt18 = 1;
  	  	}
  	  	switch (alt18) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	     50:13: '[]'*/
  	  	    {
  	  	    	this.match("[]"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;

  	  	}


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "TYPE"

  // $ANTLR start "ARG"
  void mARG() {
    try {
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   54:5: ( TYPE WS ID )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   54:9: TYPE WS ID*/
  	  {
  	  	this.mTYPE(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ARG"

  // $ANTLR start "ID"
  void mID() {
    try {
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   58:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '_' | '0' .. '9' )* )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   58:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '_' | '0' .. '9' )**/
  	  {
  	  	if((this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  	  || this.input.LA(1) == 95 /*'_'*/
  	  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  	  this.input.consume();
  	  	  this.state.failed = false;
  	  	}
  	  	else {
  	  	  if(this.state.backtracking > 0) {
  	  	    this.state.failed = true; 
  	  	    return ;
  	  	  }
  	  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  	  this.recover(mse);
  	  	  throw mse;
  	  	}


  	  	/* ../runtime/dart/tests/grammars/t019lexer.g:
  	  	 58:33: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )**/
  	  	loop19:
  	  	do {
  	  	  int alt19 = 2;
  	  	  int LA19_0 = this.input.LA(1);

  	  	  if(((LA19_0 >= 48 /*'0'*/ && LA19_0 <= 57 /*'9'*/)
  	  	    || (LA19_0 >= 65 /*'A'*/ && LA19_0 <= 90 /*'Z'*/)
  	  	    || LA19_0 == 95/*95 /*'_'*/*/
  	  	    || (LA19_0 >= 97 /*'a'*/ && LA19_0 <= 122 /*'z'*/))) {
  	  	    alt19 = 1;
  	  	  }


  	  	  switch (alt19) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	  			  */
  	  			  {
  	  			  	if((this.input.LA(1) >= 48 /*'0'*/ && this.input.LA(1) <= 57 /*'9'*/)
  	  			  	  || (this.input.LA(1) >= 65 /*'A'*/ && this.input.LA(1) <= 90 /*'Z'*/)
  	  			  	  || this.input.LA(1) == 95 /*'_'*/
  	  			  	  || (this.input.LA(1) >= 97 /*'a'*/ && this.input.LA(1) <= 122 /*'z'*/)) {
  	  			  	  this.input.consume();
  	  			  	  this.state.failed = false;
  	  			  	}
  	  			  	else {
  	  			  	  if(this.state.backtracking > 0) {
  	  			  	    this.state.failed = true; 
  	  			  	    return ;
  	  			  	  }
  	  			  	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
  	  			  	  this.recover(mse);
  	  			  	  throw mse;
  	  			  	}


  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop19;
  	  	  }
  	  	} while(true);


  	  }


    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "ID"

  // $ANTLR start "ESC"
  void mESC() {
    try {
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   62:5: ( '\\\\' ( '\"' | '\\'' | '\\\\' ) )*/
  	  /* ../runtime/dart/tests/grammars/t019lexer.g:
  	   62:7: '\\\\' ( '\"' | '\\'' | '\\\\' )*/
  	  {
  	  	this.match(92 /*'\\'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	if(this.input.LA(1) == 34 /*'\"'*/
  	  	  || this.input.LA(1) == 39 /*'\''*/
  	  	  || this.input.LA(1) == 92 /*'\\'*/) {
  	  	  this.input.consume();
  	  	  this.state.failed = false;
  	  	}
  	  	else {
  	  	  if(this.state.backtracking > 0) {
  	  	    this.state.failed = true; 
  	  	    return ;
  	  	  }
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
  // $ANTLR end "ESC"

  void mTokens() {
    /* ../runtime/dart/tests/grammars/t019lexer.g: 
     1:39: ( IMPORT | RETURN | CLASS | COMMENT | STRING | CHAR | WS )*/
    int alt20 = 7;
    switch(this.input.LA(1)) {
    case 105 /*'i'*/:
      {
      alt20 = 1;
      }
      break;
    case 114 /*'r'*/:
      {
      alt20 = 2;
      }
      break;
    case 99 /*'c'*/:
      {
      alt20 = 3;
      }
      break;
    case 47 /*'/'*/:
      {
      alt20 = 4;
      }
      break;
    case 34 /*'\"'*/:
      {
      alt20 = 5;
      }
      break;
    case 39 /*'\''*/:
      {
      alt20 = 6;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt20 = 7;
      }
      break;
    default:
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
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:41: IMPORT*/
        {
        	this.mIMPORT(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:48: RETURN*/
        {
        	this.mRETURN(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:55: CLASS*/
        {
        	this.mCLASS(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:61: COMMENT*/
        {
        	this.mCOMMENT(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:69: STRING*/
        {
        	this.mSTRING(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:76: CHAR*/
        {
        	this.mCHAR(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t019lexer.g:
         1:81: WS*/
        {
        	this.mWS(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;

    }

  }  

  
}



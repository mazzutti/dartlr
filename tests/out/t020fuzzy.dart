// $ANTLR 3.4 t020fuzzy.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t020fuzzy extends Lexer {

  static final int EOF = -1;
  static final int ARG = 4;
  static final int CALL = 5;
  static final int CHAR = 6;
  static final int CLASS = 7;
  static final int COMMENT = 8;
  static final int ESC = 9;
  static final int FIELD = 10;
  static final int ID = 11;
  static final int IMPORT = 12;
  static final int METHOD = 13;
  static final int QID = 14;
  static final int QIDStar = 15;
  static final int RETURN = 16;
  static final int SL_COMMENT = 17;
  static final int STAT = 18;
  static final int STRING = 19;
  static final int TYPE = 20;
  static final int WS = 21;  

  List outbuf;
  void outputMsg(msg) {
    this.outbuf.add(msg);
  }
  


  // delegates
  // delegators
  List<Lexer> get delegates() => <Lexer>[];

  t020fuzzy([CharStream input]) 
    : super.fromRecognizerSharedState
      (input, new RecognizerSharedState()) {

    this.outbuf = new List();

  }

  t020fuzzy.fromRecognizerSharedState(
    CharStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input,state) {

    this.outbuf = new List();

  }

  String get grammarFileName() => "t020fuzzy.g";

  String getRecognizerClassName() => "t020fuzzy";
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

  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   19:2: ( 'import' WS name= QIDStar ( WS )? ';' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   19:4: 'import' WS name= QIDStar ( WS )? ';'*/
  	  {
  	  	this.match("import"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	int nameStart53 = this.charIndex;
  	  	int nameStartLine53 = this.line;
  	  	int nameStartCharPos53 = this.charPositionInLine;
  	  	this.mQIDStar(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart53, this.charIndex-1);
  	  	name.line = nameStartLine53;
  	  	name.charPositionInLine = nameStartCharPos53;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 19:29: ( WS )?*/
  	  	int alt1 = 2;
  	  	int LA1_0 = this.input.LA(1);

  	  	if(((LA1_0 >= 9 /*'\t'*/ && LA1_0 <= 10 /*'\n'*/)
  	  	  || LA1_0 == 32/*32 /*' '*/*/)) {
  	  	  alt1 = 1;
  	  	}
  	  	switch (alt1) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     19:29: WS*/
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   24:2: ( 'return' ( options {greedy=false; } : . )* ';' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   24:4: 'return' ( options {greedy=false; } : . )* ';'*/
  	  {
  	  	this.match("return"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 24:13: ( options {greedy=false; } : . )**/
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
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   24:38: .*/
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

  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   28:2: ( 'class' WS name= ID ( WS )? ( 'extends' WS QID ( WS )? )? ( 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )? '{' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   28:4: 'class' WS name= ID ( WS )? ( 'extends' WS QID ( WS )? )? ( 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )? '{'*/
  	  {
  	  	this.match("class"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	int nameStart103 = this.charIndex;
  	  	int nameStartLine103 = this.line;
  	  	int nameStartCharPos103 = this.charPositionInLine;
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart103, this.charIndex-1);
  	  	name.line = nameStartLine103;
  	  	name.charPositionInLine = nameStartCharPos103;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 28:23: ( WS )?*/
  	  	int alt3 = 2;
  	  	int LA3_0 = this.input.LA(1);

  	  	if(((LA3_0 >= 9 /*'\t'*/ && LA3_0 <= 10 /*'\n'*/)
  	  	  || LA3_0 == 32/*32 /*' '*/*/)) {
  	  	  alt3 = 1;
  	  	}
  	  	switch (alt3) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     28:23: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 28:27: ( 'extends' WS QID ( WS )? )?*/
  	  	int alt5 = 2;
  	  	int LA5_0 = this.input.LA(1);

  	  	if((LA5_0 == 101/*101 /*'e'*/*/)) {
  	  	  alt5 = 1;
  	  	}
  	  	switch (alt5) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     28:28: 'extends' WS QID ( WS )?*/
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


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 28:45: ( WS )?*/
  	  	    	int alt4 = 2;
  	  	    	int LA4_0 = this.input.LA(1);

  	  	    	if(((LA4_0 >= 9 /*'\t'*/ && LA4_0 <= 10 /*'\n'*/)
  	  	    	  || LA4_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt4 = 1;
  	  	    	}
  	  	    	switch (alt4) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	     28:45: WS*/
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


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 29:3: ( 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )?*/
  	  	int alt10 = 2;
  	  	int LA10_0 = this.input.LA(1);

  	  	if((LA10_0 == 105/*105 /*'i'*/*/)) {
  	  	  alt10 = 1;
  	  	}
  	  	switch (alt10) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     29:4: 'implements' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )**/
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


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 29:24: ( WS )?*/
  	  	    	int alt6 = 2;
  	  	    	int LA6_0 = this.input.LA(1);

  	  	    	if(((LA6_0 >= 9 /*'\t'*/ && LA6_0 <= 10 /*'\n'*/)
  	  	    	  || LA6_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt6 = 1;
  	  	    	}
  	  	    	switch (alt6) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	     29:24: WS*/
  	  	    	    {
  	  	    	    	this.mWS(); 
  	  	    	    	if(this.state.failed) 
  	  	    	    	  return ;


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 29:28: ( ',' ( WS )? QID ( WS )? )**/
  	  	    	loop9:
  	  	    	do {
  	  	    	  int alt9 = 2;
  	  	    	  int LA9_0 = this.input.LA(1);

  	  	    	  if((LA9_0 == 44/*44 /*','*/*/)) {
  	  	    	    alt9 = 1;
  	  	    	  }


  	  	    	  switch (alt9) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			   29:29: ',' ( WS )? QID ( WS )?*/
  	  	    			  {
  	  	    			  	this.match(44 /*','*/); 
  	  	    			  	if(this.state.failed) 
  	  	    			  	  return ;

  	  	    			  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	 29:33: ( WS )?*/
  	  	    			  	int alt7 = 2;
  	  	    			  	int LA7_0 = this.input.LA(1);

  	  	    			  	if(((LA7_0 >= 9 /*'\t'*/ && LA7_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA7_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt7 = 1;
  	  	    			  	}
  	  	    			  	switch (alt7) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	     29:33: WS*/
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


  	  	    			  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	 29:41: ( WS )?*/
  	  	    			  	int alt8 = 2;
  	  	    			  	int LA8_0 = this.input.LA(1);

  	  	    			  	if(((LA8_0 >= 9 /*'\t'*/ && LA8_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA8_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt8 = 1;
  	  	    			  	}
  	  	    			  	switch (alt8) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	     29:41: WS*/
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

  	  	if(this.state.backtracking == 1) {
  	  	  this.outputMsg("found class ${(name != null) ? name.text : null}\n");;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CLASS"

  // $ANTLR start "METHOD"
  void mMETHOD() {
    try {
  	  int _type = METHOD;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   34:5: ( TYPE WS name= ID ( WS )? '(' ( ARG ( WS )? ( ',' ( WS )? ARG ( WS )? )* )? ')' ( WS )? ( 'throws' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )? '{' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   34:9: TYPE WS name= ID ( WS )? '(' ( ARG ( WS )? ( ',' ( WS )? ARG ( WS )? )* )? ')' ( WS )? ( 'throws' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )? '{'*/
  	  {
  	  	this.mTYPE(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	int nameStart180 = this.charIndex;
  	  	int nameStartLine180 = this.line;
  	  	int nameStartCharPos180 = this.charPositionInLine;
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart180, this.charIndex-1);
  	  	name.line = nameStartLine180;
  	  	name.charPositionInLine = nameStartCharPos180;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 34:25: ( WS )?*/
  	  	int alt11 = 2;
  	  	int LA11_0 = this.input.LA(1);

  	  	if(((LA11_0 >= 9 /*'\t'*/ && LA11_0 <= 10 /*'\n'*/)
  	  	  || LA11_0 == 32/*32 /*' '*/*/)) {
  	  	  alt11 = 1;
  	  	}
  	  	switch (alt11) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     34:25: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(40 /*'('*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 34:33: ( ARG ( WS )? ( ',' ( WS )? ARG ( WS )? )* )?*/
  	  	int alt16 = 2;
  	  	int LA16_0 = this.input.LA(1);

  	  	if(((LA16_0 >= 65 /*'A'*/ && LA16_0 <= 90 /*'Z'*/)
  	  	  || LA16_0 == 95/*95 /*'_'*/*/
  	  	  || (LA16_0 >= 97 /*'a'*/ && LA16_0 <= 122 /*'z'*/))) {
  	  	  alt16 = 1;
  	  	}
  	  	switch (alt16) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     34:35: ARG ( WS )? ( ',' ( WS )? ARG ( WS )? )**/
  	  	    {
  	  	    	this.mARG(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 34:39: ( WS )?*/
  	  	    	int alt12 = 2;
  	  	    	int LA12_0 = this.input.LA(1);

  	  	    	if(((LA12_0 >= 9 /*'\t'*/ && LA12_0 <= 10 /*'\n'*/)
  	  	    	  || LA12_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt12 = 1;
  	  	    	}
  	  	    	switch (alt12) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	     34:39: WS*/
  	  	    	    {
  	  	    	    	this.mWS(); 
  	  	    	    	if(this.state.failed) 
  	  	    	    	  return ;


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 34:43: ( ',' ( WS )? ARG ( WS )? )**/
  	  	    	loop15:
  	  	    	do {
  	  	    	  int alt15 = 2;
  	  	    	  int LA15_0 = this.input.LA(1);

  	  	    	  if((LA15_0 == 44/*44 /*','*/*/)) {
  	  	    	    alt15 = 1;
  	  	    	  }


  	  	    	  switch (alt15) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			   34:44: ',' ( WS )? ARG ( WS )?*/
  	  	    			  {
  	  	    			  	this.match(44 /*','*/); 
  	  	    			  	if(this.state.failed) 
  	  	    			  	  return ;

  	  	    			  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	 34:48: ( WS )?*/
  	  	    			  	int alt13 = 2;
  	  	    			  	int LA13_0 = this.input.LA(1);

  	  	    			  	if(((LA13_0 >= 9 /*'\t'*/ && LA13_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA13_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt13 = 1;
  	  	    			  	}
  	  	    			  	switch (alt13) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	     34:48: WS*/
  	  	    			  	    {
  	  	    			  	    	this.mWS(); 
  	  	    			  	    	if(this.state.failed) 
  	  	    			  	    	  return ;


  	  	    			  	    }
  	  	    			  	    break;

  	  	    			  	}


  	  	    			  	this.mARG(); 
  	  	    			  	if(this.state.failed) 
  	  	    			  	  return ;


  	  	    			  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	 34:56: ( WS )?*/
  	  	    			  	int alt14 = 2;
  	  	    			  	int LA14_0 = this.input.LA(1);

  	  	    			  	if(((LA14_0 >= 9 /*'\t'*/ && LA14_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA14_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt14 = 1;
  	  	    			  	}
  	  	    			  	switch (alt14) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	     34:56: WS*/
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
  	  	    		    break loop15;
  	  	    	  }
  	  	    	} while(true);


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(41 /*')'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 34:69: ( WS )?*/
  	  	int alt17 = 2;
  	  	int LA17_0 = this.input.LA(1);

  	  	if(((LA17_0 >= 9 /*'\t'*/ && LA17_0 <= 10 /*'\n'*/)
  	  	  || LA17_0 == 32/*32 /*' '*/*/)) {
  	  	  alt17 = 1;
  	  	}
  	  	switch (alt17) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     34:69: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 35:8: ( 'throws' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )* )?*/
  	  	int alt22 = 2;
  	  	int LA22_0 = this.input.LA(1);

  	  	if((LA22_0 == 116/*116 /*'t'*/*/)) {
  	  	  alt22 = 1;
  	  	}
  	  	switch (alt22) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     35:9: 'throws' WS QID ( WS )? ( ',' ( WS )? QID ( WS )? )**/
  	  	    {
  	  	    	this.match("throws"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	this.mQID(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 35:25: ( WS )?*/
  	  	    	int alt18 = 2;
  	  	    	int LA18_0 = this.input.LA(1);

  	  	    	if(((LA18_0 >= 9 /*'\t'*/ && LA18_0 <= 10 /*'\n'*/)
  	  	    	  || LA18_0 == 32/*32 /*' '*/*/)) {
  	  	    	  alt18 = 1;
  	  	    	}
  	  	    	switch (alt18) {
  	  	    	  case 1 :
  	  	    	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	     35:25: WS*/
  	  	    	    {
  	  	    	    	this.mWS(); 
  	  	    	    	if(this.state.failed) 
  	  	    	    	  return ;


  	  	    	    }
  	  	    	    break;

  	  	    	}


  	  	    	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    	 35:29: ( ',' ( WS )? QID ( WS )? )**/
  	  	    	loop21:
  	  	    	do {
  	  	    	  int alt21 = 2;
  	  	    	  int LA21_0 = this.input.LA(1);

  	  	    	  if((LA21_0 == 44/*44 /*','*/*/)) {
  	  	    	    alt21 = 1;
  	  	    	  }


  	  	    	  switch (alt21) {
  	  	    			case 1 :
  	  	    			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			   35:30: ',' ( WS )? QID ( WS )?*/
  	  	    			  {
  	  	    			  	this.match(44 /*','*/); 
  	  	    			  	if(this.state.failed) 
  	  	    			  	  return ;

  	  	    			  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	 35:34: ( WS )?*/
  	  	    			  	int alt19 = 2;
  	  	    			  	int LA19_0 = this.input.LA(1);

  	  	    			  	if(((LA19_0 >= 9 /*'\t'*/ && LA19_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA19_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt19 = 1;
  	  	    			  	}
  	  	    			  	switch (alt19) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	     35:34: WS*/
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


  	  	    			  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	 35:42: ( WS )?*/
  	  	    			  	int alt20 = 2;
  	  	    			  	int LA20_0 = this.input.LA(1);

  	  	    			  	if(((LA20_0 >= 9 /*'\t'*/ && LA20_0 <= 10 /*'\n'*/)
  	  	    			  	  || LA20_0 == 32/*32 /*' '*/*/)) {
  	  	    			  	  alt20 = 1;
  	  	    			  	}
  	  	    			  	switch (alt20) {
  	  	    			  	  case 1 :
  	  	    			  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	    			  	     35:42: WS*/
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
  	  	    		    break loop21;
  	  	    	  }
  	  	    	} while(true);


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(123 /*'{'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	if(this.state.backtracking == 1) {
  	  	  this.outputMsg("found method ${(name != null) ? name.text : null}\n");;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "METHOD"

  // $ANTLR start "FIELD"
  void mFIELD() {
    try {
  	  int _type = FIELD;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   40:5: ( TYPE WS name= ID ( '[]' )? ( WS )? ( ';' | '=' ) )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   40:9: TYPE WS name= ID ( '[]' )? ( WS )? ( ';' | '=' )*/
  	  {
  	  	this.mTYPE(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	this.mWS(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	int nameStart283 = this.charIndex;
  	  	int nameStartLine283 = this.line;
  	  	int nameStartCharPos283 = this.charPositionInLine;
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart283, this.charIndex-1);
  	  	name.line = nameStartLine283;
  	  	name.charPositionInLine = nameStartCharPos283;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 40:25: ( '[]' )?*/
  	  	int alt23 = 2;
  	  	int LA23_0 = this.input.LA(1);

  	  	if((LA23_0 == 91/*91 /*'['*/*/)) {
  	  	  alt23 = 1;
  	  	}
  	  	switch (alt23) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     40:25: '[]'*/
  	  	    {
  	  	    	this.match("[]"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 40:31: ( WS )?*/
  	  	int alt24 = 2;
  	  	int LA24_0 = this.input.LA(1);

  	  	if(((LA24_0 >= 9 /*'\t'*/ && LA24_0 <= 10 /*'\n'*/)
  	  	  || LA24_0 == 32/*32 /*' '*/*/)) {
  	  	  alt24 = 1;
  	  	}
  	  	switch (alt24) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     40:31: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	if(this.input.LA(1) == 59 /*';'*/
  	  	  || this.input.LA(1) == 61 /*'='*/) {
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


  	  	if(this.state.backtracking == 1) {
  	  	  this.outputMsg("found var ${(name != null) ? name.text : null}\n");;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "FIELD"

  // $ANTLR start "STAT"
  void mSTAT() {
    try {
  	  int _type = STAT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   44:5: ( ( 'if' | 'while' | 'switch' | 'for' ) ( WS )? '(' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   44:7: ( 'if' | 'while' | 'switch' | 'for' ) ( WS )? '('*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 44:7: ( 'if' | 'while' | 'switch' | 'for' )*/
  	  	int alt25 = 4;
  	  	switch(this.input.LA(1)) {
  	  	case 105 /*'i'*/:
  	  	  {
  	  	  alt25 = 1;
  	  	  }
  	  	  break;
  	  	case 119 /*'w'*/:
  	  	  {
  	  	  alt25 = 2;
  	  	  }
  	  	  break;
  	  	case 115 /*'s'*/:
  	  	  {
  	  	  alt25 = 3;
  	  	  }
  	  	  break;
  	  	case 102 /*'f'*/:
  	  	  {
  	  	  alt25 = 4;
  	  	  }
  	  	  break;
  	  	default:
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
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     44:8: 'if'*/
  	  	    {
  	  	    	this.match("if"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;
  	  	  case 2 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     44:13: 'while'*/
  	  	    {
  	  	    	this.match("while"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;
  	  	  case 3 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     44:21: 'switch'*/
  	  	    {
  	  	    	this.match("switch"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;
  	  	  case 4 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     44:30: 'for'*/
  	  	    {
  	  	    	this.match("for"); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;



  	  	    }
  	  	    break;

  	  	}


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 44:37: ( WS )?*/
  	  	int alt26 = 2;
  	  	int LA26_0 = this.input.LA(1);

  	  	if(((LA26_0 >= 9 /*'\t'*/ && LA26_0 <= 10 /*'\n'*/)
  	  	  || LA26_0 == 32/*32 /*' '*/*/)) {
  	  	  alt26 = 1;
  	  	}
  	  	switch (alt26) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     44:37: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(40 /*'('*/); 
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
  // $ANTLR end "STAT"

  // $ANTLR start "CALL"
  void mCALL() {
    try {
  	  int _type = CALL;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  CommonToken name = null;

  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   47:5: (name= QID ( WS )? '(' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   47:9: name= QID ( WS )? '('*/
  	  {
  	  	int nameStart348 = this.charIndex;
  	  	int nameStartLine348 = this.line;
  	  	int nameStartCharPos348 = this.charPositionInLine;
  	  	this.mQID(); 
  	  	if(this.state.failed) 
  	  	  return ;
  	  	name = new CommonToken.fromCharStream(this.input, 
  	  	  Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, nameStart348, this.charIndex-1);
  	  	name.line = nameStartLine348;
  	  	name.charPositionInLine = nameStartCharPos348;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 47:18: ( WS )?*/
  	  	int alt27 = 2;
  	  	int LA27_0 = this.input.LA(1);

  	  	if(((LA27_0 >= 9 /*'\t'*/ && LA27_0 <= 10 /*'\n'*/)
  	  	  || LA27_0 == 32/*32 /*' '*/*/)) {
  	  	  alt27 = 1;
  	  	}
  	  	switch (alt27) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     47:18: WS*/
  	  	    {
  	  	    	this.mWS(); 
  	  	    	if(this.state.failed) 
  	  	    	  return ;


  	  	    }
  	  	    break;

  	  	}


  	  	this.match(40 /*'('*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	if(this.state.backtracking == 1) {
  	  	  this.outputMsg("found call ${(name != null) ? name.text : null}\n");;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "CALL"

  // $ANTLR start "COMMENT"
  void mCOMMENT() {
    try {
  	  int _type = COMMENT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   52:5: ( '/*' ( options {greedy=false; } : . )* '*/' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   52:9: '/*' ( options {greedy=false; } : . )* '*/'*/
  	  {
  	  	this.match("/*"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 52:14: ( options {greedy=false; } : . )**/
  	  	loop28:
  	  	do {
  	  	  int alt28 = 2;
  	  	  int LA28_0 = this.input.LA(1);

  	  	  if((LA28_0 == 42/*42 /*'*'*/*/)) {
  	  	    int LA28_1 = this.input.LA(2);

  	  	    if((LA28_1 == 47/*47 /*'/'*/*/)) {
  	  	      alt28 = 2;
  	  	    }
  	  	    else if(((LA28_1 >= 0 /*'\u0000'*/ && LA28_1 <= 46 /*'.'*/)
  	  	      || (LA28_1 >= 48 /*'0'*/ && LA28_1 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt28 = 1;
  	  	    }


  	  	  }
  	  	  else if(((LA28_0 >= 0 /*'\u0000'*/ && LA28_0 <= 41 /*')'*/)
  	  	    || (LA28_0 >= 43 /*'+'*/ && LA28_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt28 = 1;
  	  	  }


  	  	  switch (alt28) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   52:41: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop28;
  	  	  }
  	  	} while(true);


  	  	this.match("*/"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	if(this.state.backtracking == 1) {
  	  	  this.outputMsg("found comment ${this.text}\n");;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "COMMENT"

  // $ANTLR start "SL_COMMENT"
  void mSL_COMMENT() {
    try {
  	  int _type = SL_COMMENT;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   57:5: ( '//' ( options {greedy=false; } : . )* '\\n' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   57:9: '//' ( options {greedy=false; } : . )* '\\n'*/
  	  {
  	  	this.match("//"); 
  	  	if(this.state.failed) 
  	  	  return ;



  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 57:14: ( options {greedy=false; } : . )**/
  	  	loop29:
  	  	do {
  	  	  int alt29 = 2;
  	  	  int LA29_0 = this.input.LA(1);

  	  	  if((LA29_0 == 10/*10 /*'\n'*/*/)) {
  	  	    alt29 = 2;
  	  	  }
  	  	  else if(((LA29_0 >= 0 /*'\u0000'*/ && LA29_0 <= 9 /*'\t'*/)
  	  	    || (LA29_0 >= 11 /*'\u000B'*/ && LA29_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt29 = 1;
  	  	  }


  	  	  switch (alt29) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   57:41: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop29;
  	  	  }
  	  	} while(true);


  	  	this.match(10 /*'\n'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	if(this.state.backtracking == 1) {
  	  	  this.outputMsg("found // comment ${this.text}\n");;
  	  	}


  	  }

  	  this.state.type = _type;
  	  this.state.channel = _channel;
    }
    finally {
  	  // do for sure before leaving
    }
  }
  // $ANTLR end "SL_COMMENT"

  // $ANTLR start "STRING"
  void mSTRING() {
    try {
  	  int _type = STRING;
  	  int _channel = BaseRecognizer.DEFAULT_TOKEN_CHANNEL;
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   62:2: ( '\"' ( options {greedy=false; } : ESC | . )* '\"' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   62:4: '\"' ( options {greedy=false; } : ESC | . )* '\"'*/
  	  {
  	  	this.match(34 /*'\"'*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 62:8: ( options {greedy=false; } : ESC | . )**/
  	  	loop30:
  	  	do {
  	  	  int alt30 = 3;
  	  	  int LA30_0 = this.input.LA(1);

  	  	  if((LA30_0 == 34/*34 /*'\"'*/*/)) {
  	  	    alt30 = 3;
  	  	  }
  	  	  else if((LA30_0 == 92/*92 /*'\\'*/*/)) {
  	  	    int LA30_2 = this.input.LA(2);

  	  	    if((LA30_2 == 34/*34 /*'\"'*/*/)) {
  	  	      alt30 = 1;
  	  	    }
  	  	    else if((LA30_2 == 92/*92 /*'\\'*/*/)) {
  	  	      alt30 = 1;
  	  	    }
  	  	    else if((LA30_2 == 39/*39 /*'\''*/*/)) {
  	  	      alt30 = 1;
  	  	    }
  	  	    else if(((LA30_2 >= 0 /*'\u0000'*/ && LA30_2 <= 33 /*'!'*/)
  	  	      || (LA30_2 >= 35 /*'#'*/ && LA30_2 <= 38 /*'&'*/)
  	  	      || (LA30_2 >= 40 /*'('*/ && LA30_2 <= 91 /*'['*/)
  	  	      || (LA30_2 >= 93 /*']'*/ && LA30_2 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt30 = 2;
  	  	    }


  	  	  }
  	  	  else if(((LA30_0 >= 0 /*'\u0000'*/ && LA30_0 <= 33 /*'!'*/)
  	  	    || (LA30_0 >= 35 /*'#'*/ && LA30_0 <= 91 /*'['*/)
  	  	    || (LA30_0 >= 93 /*']'*/ && LA30_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt30 = 2;
  	  	  }


  	  	  switch (alt30) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   62:34: ESC*/
  	  			  {
  	  			  	this.mESC(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   62:40: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop30;
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   66:2: ( '\\'' ( options {greedy=false; } : ESC | . )* '\\'' )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   66:4: '\\'' ( options {greedy=false; } : ESC | . )* '\\''*/
  	  {
  	  	this.match(39 /*'\''*/); 
  	  	if(this.state.failed) 
  	  	  return ;

  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 66:9: ( options {greedy=false; } : ESC | . )**/
  	  	loop31:
  	  	do {
  	  	  int alt31 = 3;
  	  	  int LA31_0 = this.input.LA(1);

  	  	  if((LA31_0 == 39/*39 /*'\''*/*/)) {
  	  	    alt31 = 3;
  	  	  }
  	  	  else if((LA31_0 == 92/*92 /*'\\'*/*/)) {
  	  	    int LA31_2 = this.input.LA(2);

  	  	    if((LA31_2 == 39/*39 /*'\''*/*/)) {
  	  	      alt31 = 1;
  	  	    }
  	  	    else if((LA31_2 == 92/*92 /*'\\'*/*/)) {
  	  	      alt31 = 1;
  	  	    }
  	  	    else if((LA31_2 == 34/*34 /*'\"'*/*/)) {
  	  	      alt31 = 1;
  	  	    }
  	  	    else if(((LA31_2 >= 0 /*'\u0000'*/ && LA31_2 <= 33 /*'!'*/)
  	  	      || (LA31_2 >= 35 /*'#'*/ && LA31_2 <= 38 /*'&'*/)
  	  	      || (LA31_2 >= 40 /*'('*/ && LA31_2 <= 91 /*'['*/)
  	  	      || (LA31_2 >= 93 /*']'*/ && LA31_2 <= 65535 /*'\uFFFF'*/))) {
  	  	      alt31 = 2;
  	  	    }


  	  	  }
  	  	  else if(((LA31_0 >= 0 /*'\u0000'*/ && LA31_0 <= 38 /*'&'*/)
  	  	    || (LA31_0 >= 40 /*'('*/ && LA31_0 <= 91 /*'['*/)
  	  	    || (LA31_0 >= 93 /*']'*/ && LA31_0 <= 65535 /*'\uFFFF'*/))) {
  	  	    alt31 = 2;
  	  	  }


  	  	  switch (alt31) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   66:35: ESC*/
  	  			  {
  	  			  	this.mESC(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;


  	  			  }
  	  			  break;
  	  			case 2 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   66:41: .*/
  	  			  {
  	  			  	this.matchAny(); 
  	  			  	if(this.state.failed) 
  	  			  	  return ;

  	  			  }
  	  			  break;

  	  			default :
  	  		    break loop31;
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   69:5: ( ( ' ' | '\\t' | '\\n' )+ )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   69:9: ( ' ' | '\\t' | '\\n' )+*/
  	  {
  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 69:9: ( ' ' | '\\t' | '\\n' )+*/
  	  	int cnt32 = 0;
  	  	loop32:
  	  	do {
  	  	  int alt32 = 2;
  	  	  int LA32_0 = this.input.LA(1);

  	  	  if(((LA32_0 >= 9 /*'\t'*/ && LA32_0 <= 10 /*'\n'*/)
  	  	    || LA32_0 == 32/*32 /*' '*/*/)) {
  	  	    alt32 = 1;
  	  	  }


  	  	  switch (alt32) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
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
  	  		    if(cnt32 >= 1) break loop32;
  	  		      if(this.state.backtracking > 0) {
  	  		        this.state.failed = true; 
  	  		        return ;
  	  		      }
  	  	        EarlyExitException eee = new EarlyExitException(32, this.input);
  	  	        throw eee;
  	  	  }
  	  	  cnt32++;
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   73:5: ( ID ( '.' ID )* )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   73:7: ID ( '.' ID )**/
  	  {
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 73:10: ( '.' ID )**/
  	  	loop33:
  	  	do {
  	  	  int alt33 = 2;
  	  	  int LA33_0 = this.input.LA(1);

  	  	  if((LA33_0 == 46/*46 /*'.'*/*/)) {
  	  	    alt33 = 1;
  	  	  }


  	  	  switch (alt33) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   73:11: '.' ID*/
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
  	  		    break loop33;
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   82:2: ( ID ( '.' ID )* ( '.*' )? )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   82:4: ID ( '.' ID )* ( '.*' )?*/
  	  {
  	  	this.mID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 82:7: ( '.' ID )**/
  	  	loop34:
  	  	do {
  	  	  int alt34 = 2;
  	  	  int LA34_0 = this.input.LA(1);

  	  	  if((LA34_0 == 46/*46 /*'.'*/*/)) {
  	  	    int LA34_1 = this.input.LA(2);

  	  	    if(((LA34_1 >= 65 /*'A'*/ && LA34_1 <= 90 /*'Z'*/)
  	  	      || LA34_1 == 95/*95 /*'_'*/*/
  	  	      || (LA34_1 >= 97 /*'a'*/ && LA34_1 <= 122 /*'z'*/))) {
  	  	      alt34 = 1;
  	  	    }


  	  	  }


  	  	  switch (alt34) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  			   82:8: '.' ID*/
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
  	  		    break loop34;
  	  	  }
  	  	} while(true);


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 82:17: ( '.*' )?*/
  	  	int alt35 = 2;
  	  	int LA35_0 = this.input.LA(1);

  	  	if((LA35_0 == 46/*46 /*'.'*/*/)) {
  	  	  alt35 = 1;
  	  	}
  	  	switch (alt35) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     82:17: '.*'*/
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   86:5: ( QID ( '[]' )? )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   86:9: QID ( '[]' )?*/
  	  {
  	  	this.mQID(); 
  	  	if(this.state.failed) 
  	  	  return ;


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 86:13: ( '[]' )?*/
  	  	int alt36 = 2;
  	  	int LA36_0 = this.input.LA(1);

  	  	if((LA36_0 == 91/*91 /*'['*/*/)) {
  	  	  alt36 = 1;
  	  	}
  	  	switch (alt36) {
  	  	  case 1 :
  	  	    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	     86:13: '[]'*/
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   90:5: ( TYPE WS ID )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   90:9: TYPE WS ID*/
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   94:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
  	   '_' | '0' .. '9' )* )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   94:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | 
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


  	  	/* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	  	 94:33: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )**/
  	  	loop37:
  	  	do {
  	  	  int alt37 = 2;
  	  	  int LA37_0 = this.input.LA(1);

  	  	  if(((LA37_0 >= 48 /*'0'*/ && LA37_0 <= 57 /*'9'*/)
  	  	    || (LA37_0 >= 65 /*'A'*/ && LA37_0 <= 90 /*'Z'*/)
  	  	    || LA37_0 == 95/*95 /*'_'*/*/
  	  	    || (LA37_0 >= 97 /*'a'*/ && LA37_0 <= 122 /*'z'*/))) {
  	  	    alt37 = 1;
  	  	  }


  	  	  switch (alt37) {
  	  			case 1 :
  	  			  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
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
  	  		    break loop37;
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
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   98:5: ( '\\\\' ( '\"' | '\\'' | '\\\\' ) )*/
  	  /* ../runtime/dart/tests/grammars/t020fuzzy.g:
  	   98:7: '\\\\' ( '\"' | '\\'' | '\\\\' )*/
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
    /* ../runtime/dart/tests/grammars/t020fuzzy.g: 
     1:39: ( IMPORT | RETURN | CLASS | METHOD | FIELD | STAT | CALL | 
     COMMENT | SL_COMMENT | STRING | CHAR | WS )*/
    int alt38 = 12;
    switch(this.input.LA(1)) {
    case 105 /*'i'*/:
      {
      int LA38_1 = this.input.LA(2);

      if((synpred1_t020fuzzy())) {
        alt38 = 1;
      }
      else if((synpred4_t020fuzzy())) {
        alt38 = 4;
      }
      else if((synpred5_t020fuzzy())) {
        alt38 = 5;
      }
      else if((synpred6_t020fuzzy())) {
        alt38 = 6;
      }
      else if((synpred7_t020fuzzy())) {
        alt38 = 7;
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
      break;
    case 114 /*'r'*/:
      {
      int LA38_7 = this.input.LA(2);

      if((synpred2_t020fuzzy())) {
        alt38 = 2;
      }
      else if((synpred4_t020fuzzy())) {
        alt38 = 4;
      }
      else if((synpred5_t020fuzzy())) {
        alt38 = 5;
      }
      else if((synpred7_t020fuzzy())) {
        alt38 = 7;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 38, 7, this.input);

        throw nvae;

      }
      }
      break;
    case 99 /*'c'*/:
      {
      int LA38_9 = this.input.LA(2);

      if((synpred3_t020fuzzy())) {
        alt38 = 3;
      }
      else if((synpred4_t020fuzzy())) {
        alt38 = 4;
      }
      else if((synpred5_t020fuzzy())) {
        alt38 = 5;
      }
      else if((synpred7_t020fuzzy())) {
        alt38 = 7;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 38, 9, this.input);

        throw nvae;

      }
      }
      break;
    case 102 /*'f'*/:
    case 115 /*'s'*/:
    case 119 /*'w'*/:
      {
      int LA38_11 = this.input.LA(2);

      if((synpred4_t020fuzzy())) {
        alt38 = 4;
      }
      else if((synpred5_t020fuzzy())) {
        alt38 = 5;
      }
      else if((synpred6_t020fuzzy())) {
        alt38 = 6;
      }
      else if((synpred7_t020fuzzy())) {
        alt38 = 7;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 38, 11, this.input);

        throw nvae;

      }
      }
      break;
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
    case 100 /*'d'*/:
    case 101 /*'e'*/:
    case 103 /*'g'*/:
    case 104 /*'h'*/:
    case 106 /*'j'*/:
    case 107 /*'k'*/:
    case 108 /*'l'*/:
    case 109 /*'m'*/:
    case 110 /*'n'*/:
    case 111 /*'o'*/:
    case 112 /*'p'*/:
    case 113 /*'q'*/:
    case 116 /*'t'*/:
    case 117 /*'u'*/:
    case 118 /*'v'*/:
    case 120 /*'x'*/:
    case 121 /*'y'*/:
    case 122 /*'z'*/:
      {
      int LA38_12 = this.input.LA(2);

      if((synpred4_t020fuzzy())) {
        alt38 = 4;
      }
      else if((synpred5_t020fuzzy())) {
        alt38 = 5;
      }
      else if((synpred7_t020fuzzy())) {
        alt38 = 7;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 38, 12, this.input);

        throw nvae;

      }
      }
      break;
    case 47 /*'/'*/:
      {
      int LA38_13 = this.input.LA(2);

      if((synpred8_t020fuzzy())) {
        alt38 = 8;
      }
      else if((synpred9_t020fuzzy())) {
        alt38 = 9;
      }
      else {
        if(this.state.backtracking > 0) {
          this.state.failed = true; 
          return ;
        }
        NoViableAltException nvae =
            new NoViableAltException("", 38, 13, this.input);

        throw nvae;

      }
      }
      break;
    case 34 /*'\"'*/:
      {
      alt38 = 10;
      }
      break;
    case 39 /*'\''*/:
      {
      alt38 = 11;
      }
      break;
    case 9 /*'\t'*/:
    case 10 /*'\n'*/:
    case 32 /*' '*/:
      {
      alt38 = 12;
      }
      break;
    default:
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
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:41: IMPORT*/
        {
        	this.mIMPORT(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 2 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:48: RETURN*/
        {
        	this.mRETURN(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 3 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:55: CLASS*/
        {
        	this.mCLASS(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 4 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:61: METHOD*/
        {
        	this.mMETHOD(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 5 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:68: FIELD*/
        {
        	this.mFIELD(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 6 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:74: STAT*/
        {
        	this.mSTAT(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 7 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:79: CALL*/
        {
        	this.mCALL(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 8 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:84: COMMENT*/
        {
        	this.mCOMMENT(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 9 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:92: SL_COMMENT*/
        {
        	this.mSL_COMMENT(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 10 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:103: STRING*/
        {
        	this.mSTRING(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 11 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:110: CHAR*/
        {
        	this.mCHAR(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;
      case 12 :
        /* ../runtime/dart/tests/grammars/t020fuzzy.g:
         1:115: WS*/
        {
        	this.mWS(); 
        	if(this.state.failed) 
        	  return ;


        }
        break;

    }

  }

  // $ANTLR start synpred1_t020fuzzy
  void synpred1_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:41: ( IMPORT )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:41: IMPORT*/
    {
    	this.mIMPORT(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred1_t020fuzzy

  // $ANTLR start synpred2_t020fuzzy
  void synpred2_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:48: ( RETURN )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:48: RETURN*/
    {
    	this.mRETURN(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred2_t020fuzzy

  // $ANTLR start synpred3_t020fuzzy
  void synpred3_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:55: ( CLASS )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:55: CLASS*/
    {
    	this.mCLASS(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred3_t020fuzzy

  // $ANTLR start synpred4_t020fuzzy
  void synpred4_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:61: ( METHOD )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:61: METHOD*/
    {
    	this.mMETHOD(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred4_t020fuzzy

  // $ANTLR start synpred5_t020fuzzy
  void synpred5_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:68: ( FIELD )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:68: FIELD*/
    {
    	this.mFIELD(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred5_t020fuzzy

  // $ANTLR start synpred6_t020fuzzy
  void synpred6_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:74: ( STAT )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:74: STAT*/
    {
    	this.mSTAT(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred6_t020fuzzy

  // $ANTLR start synpred7_t020fuzzy
  void synpred7_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:79: ( CALL )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:79: CALL*/
    {
    	this.mCALL(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred7_t020fuzzy

  // $ANTLR start synpred8_t020fuzzy
  void synpred8_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:84: ( COMMENT )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:84: COMMENT*/
    {
    	this.mCOMMENT(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred8_t020fuzzy

  // $ANTLR start synpred9_t020fuzzy
  void synpred9_t020fuzzy_fragment() {
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:92: ( SL_COMMENT )*/
    /* ../runtime/dart/tests/grammars/t020fuzzy.g:
     1:92: SL_COMMENT*/
    {
    	this.mSL_COMMENT(); 
    	if(this.state.failed) 
    	  return ;


    }

  }
  // $ANTLR end synpred9_t020fuzzy  
  bool synpred6_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred6_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred5_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred5_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred9_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred9_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred7_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred7_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred3_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred3_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred8_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred8_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred1_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred1_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred2_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred2_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }
  bool synpred4_t020fuzzy() {
    this.state.backtracking++;
    int start = this.input.mark();
    try {
      this.synpred4_t020fuzzy_fragment(); // can never throw exception
    } catch (RecognitionException re) {
      print("impossible: $re");
    }
    bool success = !this.state.failed;
    this.input.rewind(start);
    this.state.backtracking--;
    this.state.failed=false;
    return success;
  }


  
}



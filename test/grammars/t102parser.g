grammar t102parser;

options {
  language = Dart;
  output = AST;
}

@header {part of dartlr_tests;}

@lexer::members {
  /*
   * example of two state variables used in syntactical predicates, just
   * for the sake of this test case. In a real grammar we wouldn't need
   * two boolean flags.
   * 'counter' is only used to write a more complex predicate expression. 
   */   
  bool inKeywords = false;
  bool inIdents   = true;
  int counter = 0;
  
  /*
   * Custom error handler. Aborts parsing after the first detected syntax error.
   */
  reportError(e, [st=null]) {
    StringBuffer sb = new StringBuffer();
    sb.add("lexer error: ").add(e.toString());
    if (st != null) {
       sb.add("\n").add(st.toString());
    }
    print(sb.toString());
    throw new RuntimeError(sb.toString());
  }  
}


fragment DIGIT:  '0'..'9';
fragment CHAR: 'a'..'z' | 'A'..'Z';
fragment IDENT_CHAR: CHAR | '-' | DIGIT;
fragment KEYWORD_CHAR: CHAR | '_' | DIGIT;

IDENT:
   {!inKeywords && inIdents}?=>  
   IDENT_CHAR+;
  
KEYWORD: 
   {inKeywords && !inIdents && counter >= 0}?=> 
   KEYWORD_CHAR+;
   
WS:  (' ' | '\t' | '\n' | '\r' | '\f') {$channel=HIDDEN;};
LBRAC: '[' {this.inKeywords=true; this.inIdents = false;};
RBRAC: ']' {this.inKeywords=false; this.inIdents = true;};

prog
  : IDENT+ 
  | LBRAC KEYWORD+ RBRAC
  ;
   

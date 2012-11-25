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
   * 'counter' only used to write more complex predicate expressions. 
   */
   
  bool inKeywords = false;
  bool inIdents   = true;
  int counter = 0;
  
  /*
   * Custom error handler. Aborts parsing after the first detected syntax error.
   */
  reportError(e) {
    StringBuffer sb = new StringBuffer();
    sb.add("lexer error: ").add(e.toString());
    print(sb.toString());
    throw new RuntimeError(sb.toString());
  }  
}


fragment DIGIT:  '0'..'9';
fragment CHAR: 'a'..'z' | 'A'..'Z';
fragment IDENT_CHAR: CHAR | '-' | DIGIT;
fragment KEYWORD_CHAR: CHAR | '_' | DIGIT;

IDENT:
  /*
   * Note the 'this' keyword in these expression. In order to refer to lexer members
   * you it is compulsory. The code fragment will be included in the DFA code where
   * 'this' will be replaced by the variable 'recognizer'.
   */  
   {!this.inKeywords && this.inIdents}?=>  
   IDENT_CHAR+;
  
KEYWORD: 
   {this.inKeywords && !this.inIdents && this.counter >= 0}?=> 
   KEYWORD_CHAR+;
   
WS:  (' ' | '\t' | '\n' | '\r' | '\f') {$channel=HIDDEN;};
LBRAC: '[' {this.inKeywords=true; this.inIdents = false;};
RBRAC: ']' {this.inKeywords=false; this.inIdents = true;};

prog
  : IDENT+ 
  | LBRAC KEYWORD+ RBRAC
  ;
   

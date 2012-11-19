grammar t101parser;
/*
 * gubaer/2012-11-19
 * - test case for escaping '$' in grammar literals 
 */
 
options {
  language = Dart;
  output=AST;
}

@header {part of dartlr_tests;}

fragment UNICODE: '\u0080'..'\uFFFF';
fragment REGEX_CHAR:  ' '..'.' |'0'..'[' | ']'..'~' | UNICODE;
fragment REGEX_ESCAPE:   '\\\\' | '\\/' | '\\(' | '\\)' 
                       | '\\|' | '\\*' | '\\.' | '\\^' | '\\?' | '\\+' | '\\-'
                       | '\\n' | '\\r' | '\\t'
                       | '\\s' | '\\S'
                       | '\\d' | '\\D'
                       | '\\w' | '\\W'
                       
                       /* -----------------------------------------------------
                       * NOTE: the generated code should include a Dart string
                       * "\\\$" instead of "\\$"
                       * -------------------------------------------------------
                       */
                       | '\\$'          
                       ;                       
REGEXP:  '/' (REGEX_CHAR | REGEX_ESCAPE)* '/';

WS:			  (' ' | '\t' | '\n' | '\r' | '\f') {$channel=HIDDEN;}; 
SL_COMMENT:   '//' (options {greedy=false;}: .)* '\r'? '\n' {$channel=HIDDEN;};
ML_COMMENT:   '/*' (options {greedy=false;} : .)* '*/' {$channel=HIDDEN;};

expr: REGEXP; 
	

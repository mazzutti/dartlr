grammar t058rewriteAST70;
options {language=Dart;output=AST;} 

tokens {PARMS;} 

@header{part of dartlr_tests;}

modulo 
 : 'modulo' ID ('(' parms+ ')')? -> ^('modulo' ID ^(PARMS parms+)?) 
 ; 
parms : '#'|ID; 
ID : ('a'..'z' | 'A'..'Z')+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
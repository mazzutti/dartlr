
grammar t058rewriteAST29;
options {language=Dart;output=AST;}

tokens {VAR;}

@header{part of dartlr_tests;}

a : ID (',' ID)*-> ^(VAR ID)+ ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
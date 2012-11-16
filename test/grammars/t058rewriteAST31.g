
grammar t058rewriteAST31;
options {language=Dart;output=AST;}

tokens {VAR;}

@header{part of dartlr_tests;}

a : ID (',' ID)*-> ^(VAR["var"] ID)+ ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
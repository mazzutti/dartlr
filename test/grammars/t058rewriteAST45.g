
grammar t058rewriteAST45;
options {language=Dart;output=AST;}

tokens {MOD;}

@header{part of dartlr_tests;}

a : modifier? type ID (',' ID)* ';' -> ^(type ^(MOD modifier)? ID)+ ;
type : 'int' ;
modifier : 'public' ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;

grammar t058rewriteAST46;
options {language=Dart;output=AST;}

tokens {MOD;}

@header{part of dartlr_tests;}

a : ID (',' ID)* ';' -> ID+ ID+ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
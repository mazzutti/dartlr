
grammar t058rewriteAST10;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : b INT -> INT b;
b : ID ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
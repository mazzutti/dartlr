
grammar t058rewriteAST13;
options {language=Dart;output=AST;}

tokens {DUH;}

@header{part of dartlr_tests;}

a : ID INT ID INT -> ^( DUH ID ^( DUH INT) )+ ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
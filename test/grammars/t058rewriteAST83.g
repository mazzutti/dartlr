
grammar t058rewriteAST83;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : b -> b | c -> c;
b : ID -> ID ;
c : INT -> INT ;
ID : 'a'..'z'+ ;
S : '*' ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

grammar t058rewriteAST82;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : b c -> b c;
b : ID -> ID ;
c : INT -> INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
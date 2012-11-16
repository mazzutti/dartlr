
grammar t058rewriteAST19;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : x+=b x+=b -> $x*;
b : ID ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
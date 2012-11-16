
grammar t058rewriteAST58;
options {language=Dart;output=AST;}

tokens {BLOCK;}

@header{part of dartlr_tests;}

a : x+=b x+=b -> $x+;
b : ID ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
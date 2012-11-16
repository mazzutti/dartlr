
grammar t058rewriteAST34;
options {language=Dart;output=AST;}

tokens {BLOCK;}

@header{part of dartlr_tests;}

a : b b^ ; // 2nd b matches only an INT; can make it root
b : ID INT -> INT ID
  | INT
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
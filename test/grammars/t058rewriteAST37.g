
grammar t058rewriteAST37;
options {language=Dart;output=AST;}

tokens {BLOCK;}

@header{part of dartlr_tests;}

a : b b ;
b : ID ( ID (last=ID -> $last)+ ) ';' // get last ID
  | INT // should still get auto AST construction
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
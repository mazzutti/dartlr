
grammar t058rewriteAST54;
options {language=Dart;output=AST;}

tokens {VAR;}

@header{part of dartlr_tests;}

a : first=ID others+=ID* -> $first VAR $others+ ;
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
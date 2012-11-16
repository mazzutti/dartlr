
grammar t058rewriteAST49;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : 'int' ID (',' ID)* ';' -> ^('int' ID+) ;
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
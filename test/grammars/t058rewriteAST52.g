
grammar t058rewriteAST52;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : 'int' ID ':' INT (',' ID ':' INT)* ';' -> ^('int' ID INT)+ ;
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
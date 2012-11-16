
grammar t058rewriteAST50;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : 'int' ID ';' -> 'int' ID 'int' ID ;
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
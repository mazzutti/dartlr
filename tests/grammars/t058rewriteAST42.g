
grammar t058rewriteAST42;
options {language=Dart;output=AST;}
a : type ID (',' ID)* ';' -> ^(type ID)+ ;
type : 'int' ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
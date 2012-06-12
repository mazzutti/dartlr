
grammar t058rewriteAST44;
options {language=Dart;output=AST;}
a : modifier? type ID (',' ID)* ';' -> ^(type modifier? ID)+ ^(type modifier? ID)+ ;
type : 'int' ;
modifier : 'public' ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
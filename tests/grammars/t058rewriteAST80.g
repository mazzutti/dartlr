
grammar t058rewriteAST80;
options {language=Dart;output=AST;}
a : b c -> b c;
b : ID -> ID ;
c : INT -> INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
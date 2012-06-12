
grammar t058rewriteAST46;
options {language=Dart;output=AST;}
tokens {MOD;}
a : ID (',' ID)* ';' -> ID+ ID+ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
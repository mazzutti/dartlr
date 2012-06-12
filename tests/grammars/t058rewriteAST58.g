
grammar t058rewriteAST58;
options {language=Dart;output=AST;}
tokens {BLOCK;}
a : x+=b x+=b -> $x+;
b : ID ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
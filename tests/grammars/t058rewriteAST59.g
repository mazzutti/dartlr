
grammar t058rewriteAST59;
options {language=Dart;output=AST;}
tokens {BLOCK;}
a : x+=b x+=b -> $x $x*;
b : ID ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
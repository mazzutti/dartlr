
grammar t058rewriteAST60;
options {language=Dart;output=AST;}
tokens {BLOCK;}
a : x=b (y=b)? -> $x $y?;
b : ID ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
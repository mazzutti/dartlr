
grammar t058rewriteAST65;
options {language=Dart;output=AST;}
tokens {BLOCK;}
a : x+=b x+=b -> {new CommonTree(null)};
b : ID ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
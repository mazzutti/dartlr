
grammar t058rewriteAST68;
options {language=Dart;output=AST;} 

@header{part of dartlr_tests;}

a : x=(INT|ID) -> $x ;
INT: '0'..'9'+;
ID : 'a'..'z'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
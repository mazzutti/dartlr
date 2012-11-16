
grammar t058rewriteAST12;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : 'void' ID INT -> 'void' ^(INT ID);
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
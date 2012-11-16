
grammar t058rewriteAST71;
options {language=Dart;output=AST;}

tokens {BLOCK;}

@header{part of dartlr_tests;}

a : ID ID INT INT INT -> (ID INT)+;
ID : 'a'..'z'+ ;
INT : '0'..'9'+; 
WS : (' '|'\n') {$channel = HIDDEN;} ;
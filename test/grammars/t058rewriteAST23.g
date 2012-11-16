
grammar t058rewriteAST23;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID -> {false}? ID -> ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
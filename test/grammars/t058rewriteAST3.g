
grammar t058rewriteAST3;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID -> ID["x"];
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
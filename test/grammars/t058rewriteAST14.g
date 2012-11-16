
grammar t058rewriteAST14;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID -> ID? ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
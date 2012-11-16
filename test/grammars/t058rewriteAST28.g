
grammar t058rewriteAST28;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : 'var' (ID ':' type ';')+ -> ^('var' ^(':' ID type)+) ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
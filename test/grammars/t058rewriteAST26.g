
grammar t058rewriteAST26;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : op INT -> ^(op INT);
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
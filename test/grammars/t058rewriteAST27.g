
grammar t058rewriteAST27;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : op INT -> ^(INT op);
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
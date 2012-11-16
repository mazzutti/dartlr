
grammar t058rewriteAST74;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID? INT -> ID+ INT ;
op : '+'|'-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
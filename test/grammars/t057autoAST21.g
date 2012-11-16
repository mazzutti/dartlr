grammar t057autoAST21;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID (op^ ID)* ;
op : '+' | '-' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

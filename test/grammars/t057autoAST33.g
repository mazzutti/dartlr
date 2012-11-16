grammar t057autoAST33;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : INT (~INT^ INT)* ;
blort : '+' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

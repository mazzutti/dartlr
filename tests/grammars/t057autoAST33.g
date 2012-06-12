grammar t057autoAST33;
options {language=Dart;output=AST;}
a : INT (~INT^ INT)* ;
blort : '+' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

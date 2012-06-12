grammar t057autoAST20;
options {language=Dart;output=AST;}
a : ID ('+'^ ID)* ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

grammar t057autoAST54;
options {language=Dart;output=AST;}
a : b | c ;
b : ID ;
c : INT ;
ID : 'a'..'z'+ ;
S : '*' ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

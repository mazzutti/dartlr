grammar t057autoAST17;
options {language=Dart;output=AST;}
a  : type^ ID ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

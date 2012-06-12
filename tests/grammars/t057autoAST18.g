grammar t057autoAST18;
options {language=Dart;output=AST;}
a  : x=type^ ID ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

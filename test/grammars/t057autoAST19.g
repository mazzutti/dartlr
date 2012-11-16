grammar t057autoAST19;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a  : x+=type^ ID ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

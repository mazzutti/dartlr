grammar t057autoAST16;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a  : type ID ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

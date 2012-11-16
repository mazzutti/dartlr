grammar t057autoAST53;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : b c ;
b : ID ;
c : INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

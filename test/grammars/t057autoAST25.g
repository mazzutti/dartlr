grammar t057autoAST25;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : x=(('+' | '-')^ ID) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;

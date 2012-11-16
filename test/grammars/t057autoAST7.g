grammar t057autoAST7;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : v='void'^ ID ';' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

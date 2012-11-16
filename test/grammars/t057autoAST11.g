grammar t057autoAST11;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : v='void' x=.^ ';' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

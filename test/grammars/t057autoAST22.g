grammar t057autoAST22;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

s : a ;
a : atom ('exp'^ a)? ;
atom : INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

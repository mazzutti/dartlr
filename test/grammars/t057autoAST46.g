grammar t057autoAST46;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

decl : type^ ID '='! INT ';'! ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

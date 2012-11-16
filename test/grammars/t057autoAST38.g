grammar t057autoAST38;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : id+=ID^ ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

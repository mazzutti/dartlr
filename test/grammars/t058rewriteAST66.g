
grammar t058rewriteAST66;
options {language=Dart;output=AST;} 

@header{part of dartlr_tests;}

a: (INT|ID)+ -> INT+ ID+ ;
INT: '0'..'9'+;
ID : 'a'..'z'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

grammar t058rewriteAST22;
options {language=Dart;output=AST;}
a : ID -> {true}? ID -> ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
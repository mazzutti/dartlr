grammar t057autoAST4;
options {language=Dart;output=AST;}
a : INT ID^ ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

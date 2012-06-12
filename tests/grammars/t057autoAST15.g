grammar t057autoAST15;
options {language=Dart;output=AST;}
a : 'void' ((ID|INT) ID | 'null' ) ';' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

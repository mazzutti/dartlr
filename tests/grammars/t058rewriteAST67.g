
grammar t058rewriteAST67;
options {language=Dart;output=AST;} 
a: (INT|ID) -> INT? ID? ;
INT: '0'..'9'+;
ID : 'a'..'z'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
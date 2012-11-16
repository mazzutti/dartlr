grammar t057autoAST45;
options { language=Dart;output=AST; }

@header{part of dartlr_tests;}

r : (INT|ID)+ ; 
ID : 'a'..'z' + ;
INT : '0'..'9' +;
WS: (' ' | '\n' | '\\t')+ {$channel = HIDDEN;};

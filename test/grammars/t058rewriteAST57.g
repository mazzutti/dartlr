grammar t058rewriteAST57;
options {
language=Dart;
output=AST;
}

@header{part of dartlr_tests;}

a : ID a -> a | INT ;
ID : 'a'..'z'+ ;
INT: '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
grammar t049treeparserd;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : b c ;
b : ID INT+ -> ^(ID INT+);
c : ID INT+;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;

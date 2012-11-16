grammar t049treeparseri;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : x=ID INT? SEMI -> ^($x INT?) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
SEMI : ';' ;
WS : (' '|'\n') {$channel = HIDDEN;} ;

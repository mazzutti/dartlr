grammar t053heteroT12;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : 'begin' INT -> ^('begin'<V> INT) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


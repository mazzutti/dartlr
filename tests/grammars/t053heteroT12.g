grammar t053heteroT12;
options {
    language=Dart;
    output=AST;
}

a : 'begin' INT -> ^('begin'<V> INT) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


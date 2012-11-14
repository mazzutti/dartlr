grammar t053heteroT10;
options {
    language=Dart;
    output=AST;
}

a : ID INT -> ^(ID<V> INT) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;



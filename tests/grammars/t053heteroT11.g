grammar t053heteroT11;
options {
    language=Dart;
    output=AST;
}

a : 'begin' -> 'begin'<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


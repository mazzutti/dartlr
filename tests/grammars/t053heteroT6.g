grammar t053heteroT6;
options {
    language=Dart;
    output=AST;
}

a : 'begin'<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


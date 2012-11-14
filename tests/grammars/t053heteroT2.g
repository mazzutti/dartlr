grammar t053heteroT2;
options {
    language=Dart;
    output=AST;
}

a : x=ID<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


grammar t053heteroT3;
options {
    language=Dart;
    output=AST;
}

a : x+=ID<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


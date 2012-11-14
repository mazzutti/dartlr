grammar t053heteroT1;
options {
    language=Dart;
    output=AST;
}

a : ID<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


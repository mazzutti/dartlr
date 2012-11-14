grammar t053heteroT8;
options {
    language=Dart;
    output=AST;
}


a : ID -> ID<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


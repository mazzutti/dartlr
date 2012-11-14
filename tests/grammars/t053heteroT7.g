grammar t053heteroT7;
options {
    language=Dart;
    output=AST;
}

a : 'begin'<V>^ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


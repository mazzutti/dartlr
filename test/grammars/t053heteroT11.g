grammar t053heteroT11;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : 'begin' -> 'begin'<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


grammar t053heteroT6;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : 'begin'<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


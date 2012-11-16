grammar t053heteroT8;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : ID -> ID<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


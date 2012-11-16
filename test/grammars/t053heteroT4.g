grammar t053heteroT4;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : ID<V>^ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;



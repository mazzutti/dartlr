grammar t053heteroT5;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : x+=ID<V>^ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


grammar t053heteroT17;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : ID ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel=HIDDEN;} ;

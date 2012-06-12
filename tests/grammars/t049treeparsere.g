grammar t049treeparsere;
options {
    language=Dart;
    output=AST;
}
a : ID INT+ PERIOD;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
SEMI : ';' ;
PERIOD : '.' ;
WS : (' '|'\n') {$channel = HIDDEN;} ;

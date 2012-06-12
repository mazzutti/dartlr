grammar t053heteroT11;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v_common_tree.dart");
}
a : 'begin' -> 'begin'<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


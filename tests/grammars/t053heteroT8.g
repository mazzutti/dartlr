grammar t053heteroT8;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v_common_tree.dart");
}
a : ID -> ID<V> ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


grammar t053heteroT10;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v_common_tree.dart");
}
a : ID INT -> ^(ID<V> INT) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;



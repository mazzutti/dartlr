grammar t053heteroT7;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v_common_tree.dart");
}
a : 'begin'<V>^ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


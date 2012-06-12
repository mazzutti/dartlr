grammar t053heteroT5;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v_common_tree.dart");
}
a : x+=ID<V>^ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


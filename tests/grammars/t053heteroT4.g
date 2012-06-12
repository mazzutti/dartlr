grammar t053heteroT4;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v_common_tree.dart");
}
a : ID<V>^ ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;



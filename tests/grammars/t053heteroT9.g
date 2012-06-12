grammar t053heteroT9;
options {
    language=Dart;
    output=AST;
}
@header {
#source("v2_common_tree.dart");
}
a : ID -> ID<V2>[42,19,30] ID<V2>[$ID,99];
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;


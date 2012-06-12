tree grammar t053heteroTP14;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT14;
}
@header {
#source("v_common_tree.dart");
#source("w_common_tree.dart");
}
a : ID INT -> ^(INT<V> ID<W>)
  ;


tree grammar t053heteroTP;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT;
}
tokens { ROOT; }
@header {
#source("vx_common_tree.dart");
}
a : ID<VX> ';'<VX>
  ;


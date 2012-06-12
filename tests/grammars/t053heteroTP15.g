tree grammar t053heteroTP15;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT15;
    ASTLabelType=CommonTree;
}
tokens { ROOT; }

@members {
static List<String> get namesOfTokens() => _tokenNames;
}

@header {
#source("v15_common_tree.dart");
}
a : ID -> ROOT<V15> ID
  ;


// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTuWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTu;
    rewrite=true;
}
s : ID a ;
a : INT -> INT["1"]
  ;

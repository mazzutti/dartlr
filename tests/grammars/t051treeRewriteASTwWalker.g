// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTwWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTw;
    rewrite=true;
}
s : a ;
a : b ; // a.tree must become b.tree
b : ^(ID INT) -> INT
  ;

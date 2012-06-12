// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTacWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTac;
}
s : ^(ID c=.) -> $c
  ;

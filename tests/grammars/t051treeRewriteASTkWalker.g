// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTkWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTk;
}
a : ^(x=ID y=INT)
  ;

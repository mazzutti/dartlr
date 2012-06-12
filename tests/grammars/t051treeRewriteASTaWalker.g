// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTaWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTa;
}

a : ID INT -> INT ID;

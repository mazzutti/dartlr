// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTaWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTa;
}

@header{part of dartlr_tests;}

a : ID INT -> INT ID;

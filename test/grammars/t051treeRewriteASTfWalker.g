// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTfWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTf;
}

@header{part of dartlr_tests;}

a: ID;

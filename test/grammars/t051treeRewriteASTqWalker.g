// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTqWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTq;
}

@header{part of dartlr_tests;}

a : b INT;
b : ID | INT;

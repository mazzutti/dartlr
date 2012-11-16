// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASThWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTh;
}

@header{part of dartlr_tests;}

a : ID ID INT ;

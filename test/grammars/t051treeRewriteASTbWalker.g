// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTbWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTb;
}

@header{part of dartlr_tests;}

a : ^(ID INT) -> ^(INT ID);

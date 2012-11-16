// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTlWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTl;
}

@header{part of dartlr_tests;}

a : ^(b INT) ;
b : ID ;

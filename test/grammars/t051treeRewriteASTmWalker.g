// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTmWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTm;
}

@header{part of dartlr_tests;}

a : ^(x=b INT) ;
b : ID ;

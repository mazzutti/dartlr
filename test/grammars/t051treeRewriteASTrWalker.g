// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTrWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTr;
}

@header{part of dartlr_tests;}

a : ^(ID (ID | INT) ) ;

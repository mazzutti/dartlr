// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTvWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTv;
    rewrite=true;
}

@header{part of dartlr_tests;}

s : a ;
a : b ;
b : ID INT -> INT ID
  ;

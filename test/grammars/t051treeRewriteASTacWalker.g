// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTacWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTac;
}

@header{part of dartlr_tests;}

s : ^(ID c=.) -> $c
  ;

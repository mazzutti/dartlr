// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASToWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTo;
}

@header{part of dartlr_tests;}

a : ^(ID ^(ID INT))
  ;

// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTiWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTi;
}

@header{part of dartlr_tests;}

a : ^(ID INT)
  ;

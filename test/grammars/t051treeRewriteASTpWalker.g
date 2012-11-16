// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTpWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTp;
}

@header{part of dartlr_tests;}

a : ID -> 
  ;

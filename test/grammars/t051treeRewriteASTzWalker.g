// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTzWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTz;
    rewrite=true;
}

tokens { X; }

@header{part of dartlr_tests;}

s : ^('boo' a* b) ; // don't reset s.tree to b.tree due to 'boo'
a : X ;
b : ^(ID INT) -> INT
  ;

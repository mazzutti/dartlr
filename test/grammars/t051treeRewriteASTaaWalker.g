// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTaaWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTaa;
    rewrite=true;
}

tokens { X; }

@header{part of dartlr_tests;}

s : ^(a b) ; // s.tree is a.tree
a : 'boo' ;
b : ^(ID INT) -> INT
  ;

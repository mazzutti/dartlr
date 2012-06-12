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
s : ^(a b) ; // s.tree is a.tree
a : 'boo' ;
b : ^(ID INT) -> INT
  ;

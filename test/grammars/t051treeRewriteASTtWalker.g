// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTtWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTt;
    rewrite=true;
}

@header{part of dartlr_tests;}

a : ^(ID INT) -> ^(ID["ick"] INT)
  | INT // leaves it alone, returning $a.start
  ;

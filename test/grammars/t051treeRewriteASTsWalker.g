// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTsWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTs;
}

@header{part of dartlr_tests;}

a : ^((ID | INT) INT) ;

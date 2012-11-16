// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTeWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTe;
}

@header{part of dartlr_tests;}

a : (^(ID INT))+ -> INT+ ID+;

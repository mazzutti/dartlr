// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTdWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTd;
}

@header{part of dartlr_tests;}

a : ID -> ^(ID ID);

// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTgWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTg;
}

@header{part of dartlr_tests;}

a : b c ;
b : ID ;
c : INT ;

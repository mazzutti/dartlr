// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTnWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTn;
}

@header{part of dartlr_tests;}

a : ^(x+=b y+=c) ;
b : ID ;
c : INT ;

tree grammar t051treeRewriteASTcWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t049treeparserc;
}

@header{part of dartlr_tests;}

a : ^(ID INT) -> ^(INT ID) | INT;

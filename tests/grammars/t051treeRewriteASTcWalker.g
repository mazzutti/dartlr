tree grammar t051treeRewriteASTcWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t049treeparserc;
}
a : ^(ID INT) -> ^(INT ID) | INT;

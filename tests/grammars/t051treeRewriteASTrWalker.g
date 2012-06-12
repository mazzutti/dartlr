// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTrWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTr;
}
a : ^(ID (ID | INT) ) ;

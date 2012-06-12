// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTgWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTg;
}
a : b c ;
b : ID ;
c : INT ;

// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTdWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTd;
}

a : ID -> ^(ID ID);

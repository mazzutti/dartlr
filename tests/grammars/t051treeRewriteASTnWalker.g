// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTnWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTn;
}
a : ^(x+=b y+=c) ;
b : ID ;
c : INT ;

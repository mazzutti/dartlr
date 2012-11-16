// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTabWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTab;
    rewrite=true;
}

@header{part of dartlr_tests;}

@members {
String buf = "";
}

s : ^(ID a) { this.buf = "\${this.buf}\${($s.start as Tree).toStringTree()}"; };
a : ^(ID INT) -> {true}? ^(ID["ick"] INT)
              -> INT
  ;

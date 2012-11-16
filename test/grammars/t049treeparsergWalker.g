// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparsergWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

a : ^(ID INT?) SEMI
    {this.capture("\${$ID}");}
  ;

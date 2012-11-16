// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparserfWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

a : ^(ID INT?)
    {this.capture("\${$ID}");}
  ;

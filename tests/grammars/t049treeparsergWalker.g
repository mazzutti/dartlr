// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparsergWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}
a : ^(ID INT?) SEMI
    {this.capture("\${$ID}");}
  ;

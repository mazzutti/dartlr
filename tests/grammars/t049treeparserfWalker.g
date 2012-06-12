// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparserfWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}
a : ^(ID INT?)
    {this.capture("\${$ID}");}
  ;

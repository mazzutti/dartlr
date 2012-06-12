// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparserhWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}
a : ^(ID INT? b) SEMI
    {this.capture("\${$ID}, \${$b.text}");}
  ;
b : ID? ;

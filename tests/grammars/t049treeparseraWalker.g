// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparseraWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}
a : ID INT
    {this.capture("\${$ID}, \${$INT}");}
  ;

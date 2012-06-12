tree grammar t049treeparsercWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}
a : b b ;
b : ID INT    {this.capture("\${$ID} \${$INT}\n");}
  | ^(ID INT) {this.capture("^(\${$ID} \${$INT})");}
  ;

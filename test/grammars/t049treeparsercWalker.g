tree grammar t049treeparsercWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

a : b b ;
b : ID INT    {this.capture("\${$ID} \${$INT}\n");}
  | ^(ID INT) {this.capture("^(\${$ID} \${$INT})");}
  ;

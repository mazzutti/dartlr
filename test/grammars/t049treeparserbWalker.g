// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparserbWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

a : ^(ID INT)
    {this.capture("\${$ID}, \${$INT}");}
  ;

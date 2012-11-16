// @@ANTLR Tool Options@@: -trace
tree grammar t049treeparserhWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

a : ^(ID INT? b) SEMI
    {this.capture("\${$ID}, \${$b.text}");}
  ;
b : ID? ;

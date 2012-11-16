tree grammar t049treeparseriWalker;
options {
    language=Dart;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

a @init {var x=0;} : ^(ID {x=1;} {x=2;} INT?)
    {this.capture("\${$ID}, \${x}");}
  ;

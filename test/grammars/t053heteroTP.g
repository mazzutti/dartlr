tree grammar t053heteroTP;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT;
}

tokens { ROOT; }

@header{part of dartlr_tests;}

a : ID<VX> ';'<VX>
  ;


tree grammar t053heteroTP;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT;
}
tokens { ROOT; }

a : ID<VX> ';'<VX>
  ;


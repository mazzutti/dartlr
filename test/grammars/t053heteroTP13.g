tree grammar t053heteroTP13;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT13;
}

@header{part of dartlr_tests;}

a : ID INT -> INT<V> ID<W>
  ;


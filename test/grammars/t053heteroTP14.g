tree grammar t053heteroTP14;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT14;
}

@header{part of dartlr_tests;}

a : ID INT -> ^(INT<V> ID<W>)
  ;


tree grammar t053heteroTP14;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT14;
}

a : ID INT -> ^(INT<V> ID<W>)
  ;


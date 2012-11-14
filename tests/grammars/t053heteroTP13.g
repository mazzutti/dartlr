tree grammar t053heteroTP13;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT13;
}

a : ID INT -> INT<V> ID<W>
  ;


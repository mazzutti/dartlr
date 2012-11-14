tree grammar t053heteroTP18;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT18;
}
tokens { ROOT; }

@members {
static List<String> get namesOfTokens() => _tokenNames;
}

a : ID -> ROOT<V18>[$ID]
  ;


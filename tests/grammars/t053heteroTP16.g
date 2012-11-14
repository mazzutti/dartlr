tree grammar t053heteroTP16;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT16;
}
tokens { ROOT; }

@members {
static List<String> get namesOfTokens() => _tokenNames;
}

a : ID -> ROOT<V16>[42] ID
  ;


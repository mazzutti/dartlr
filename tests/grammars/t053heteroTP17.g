tree grammar t053heteroTP17;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT17;
}
tokens { ROOT; }

@members {
static List<String> get namesOfTokens() => _tokenNames;
}

a : ID -> ^(ROOT<V17> ID)
  ;


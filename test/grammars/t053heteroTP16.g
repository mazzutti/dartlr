tree grammar t053heteroTP16;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT16;
}

tokens { ROOT; }

@header{part of dartlr_tests;}

@members {
static List<String> get namesOfTokens => tokens;
}

a : ID -> ROOT<V16>[42] ID
  ;


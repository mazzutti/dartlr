tree grammar t053heteroTP18;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT18;
}

tokens { ROOT; }

@header{part of dartlr_tests;}

@members {
static List<String> get namesOfTokens => tokens;
}

a : ID -> ROOT<V18>[$ID]
  ;


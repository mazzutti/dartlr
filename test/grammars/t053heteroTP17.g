tree grammar t053heteroTP17;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT17;
}

tokens { ROOT; }

@header{part of dartlr_tests;}

@members {
static List<String> get namesOfTokens => tokens;
}

a : ID -> ^(ROOT<V17> ID)
  ;


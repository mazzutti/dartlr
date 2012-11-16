tree grammar t053heteroTP15;
options {
    language=Dart;
    output=AST;
    tokenVocab=t053heteroT15;
    ASTLabelType=CommonTree;
}

tokens { ROOT; }

@header{part of dartlr_tests;}

@members {
static List<String> get namesOfTokens => tokens;
}

a : ID -> ROOT<V15> ID
  ;


lexer grammar t029synpredgate;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

FOO
    : ('ab')=>A
    | ('ac')=>B
    ;

fragment
A: 'a';

fragment
B: 'a';


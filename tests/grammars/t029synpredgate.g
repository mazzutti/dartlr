lexer grammar t029synpredgate;
options {
  language = Dart;
}

FOO
    : ('ab')=>A
    | ('ac')=>B
    ;

fragment
A: 'a';

fragment
B: 'a';


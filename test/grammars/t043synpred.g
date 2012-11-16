grammar t043synpred;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

a: ((s+ P)=> s+ b)? E;
b: P 'foo';

s: S;


S: ' ';
P: '+';
E: '>';

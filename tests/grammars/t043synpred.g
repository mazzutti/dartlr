grammar t043synpred;
options {
  language = Dart;
}

a: ((s+ P)=> s+ b)? E;
b: P 'foo';

s: S;


S: ' ';
P: '+';
E: '>';

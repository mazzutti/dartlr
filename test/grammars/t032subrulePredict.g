grammar t032subrulePredict;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

a: 'BEGIN' b WS+ 'END';
b: ( WS+ 'A' )+;
WS: ' ';

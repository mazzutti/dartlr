grammar t032subrulePredict;
options {
  language = Dart;
}

a: 'BEGIN' b WS+ 'END';
b: ( WS+ 'A' )+;
WS: ' ';

parser grammar t052importS5;
options {
    language=Dart;
}

tokens { A; B; C; }

@header{part of dartlr_tests;}

@members {
void capture(String t) {
  this.gt052importM5.capture(t);
}
}
x : A {this.capture("S.x ");} ;

parser grammar t052importS4;
options {
    language=Dart;
}

@header{part of dartlr_tests;}

@members {
void capture(String t) {
  this.gt052importM4.capture(t);
}
}
a : b {this.capture("S.a");} ;
b : B ;

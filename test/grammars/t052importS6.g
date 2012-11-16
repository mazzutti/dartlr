parser grammar t052importS6;
options {
    language=Dart;
}

@header{part of dartlr_tests;}

@members {
void capture(String t) {
  this.gt052importM6.capture(t);
}
}
a : b { this.capture("S.a"); } ;
b : B ;

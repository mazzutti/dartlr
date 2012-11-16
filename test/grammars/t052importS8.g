lexer grammar t052importS8;
options {
    language=Dart;
}

@header{part of dartlr_tests;}

@members {
void capture(String t) {
  this.gt052importM8.capture(t);
}
}
A : 'a' {this.capture("S.A");} ;
